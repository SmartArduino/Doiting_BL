/*
 * Copyright (c) 2020 Bouffalolab.
 *
 * This file is part of
 *     *** Bouffalolab Software Dev Kit ***
 *      (see www.bouffalolab.com).
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *   1. Redistributions of source code must retain the above copyright notice,
 *      this list of conditions and the following disclaimer.
 *   2. Redistributions in binary form must reproduce the above copyright notice,
 *      this list of conditions and the following disclaimer in the documentation
 *      and/or other materials provided with the distribution.
 *   3. Neither the name of Bouffalo Lab nor the names of its contributors
 *      may be used to endorse or promote products derived from this software
 *      without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#include <bl602_uart.h>
#include <bl602_glb.h>

#include "bl_uart.h"
#include "bl_irq.h"

#ifdef BL602_USE_HAL_DRIVER
void UART0_IRQHandler(void);
void UART1_IRQHandler(void);
#endif

//TODO Do in std driver
#define UART_NUMBER_SUPPORTED   2
#define UART_FIFO_TX_CNT        (32)
#define FIFO_TX_SIZE_BURST      (32)
static const uint32_t uartAddr[2] = {UART0_BASE, UART1_BASE};

static cb_uart_notify_t cbs_notify[UART_NUMBER_SUPPORTED];
static void *cbs_uart_notify_arg[UART_NUMBER_SUPPORTED][8];//0 for rx callback arg, 1-3 for rx ring buffer; 4 for tx callback arg, 5-7 for tx ring buffer

static void gpio_init(uint8_t id, uint8_t tx_pin, uint8_t rx_pin, uint8_t cts_pin, uint8_t rts_pin)
{
    GLB_GPIO_Cfg_Type cfg;
    GLB_UART_SIG_FUN_Type tx_sigfun, rx_sigfun;

    cfg.drive = 1;
    cfg.smtCtrl = 1;
    cfg.gpioFun = 7;

    cfg.gpioPin = rx_pin;
    cfg.gpioMode = GPIO_MODE_AF;
    cfg.pullType = GPIO_PULL_UP;
    GLB_GPIO_Init(&cfg);

    cfg.gpioPin = tx_pin;
    cfg.gpioMode = GPIO_MODE_AF;
    cfg.pullType = GPIO_PULL_UP;
    GLB_GPIO_Init(&cfg);

    /* select uart gpio function */
    if (id == 0) {
        tx_sigfun = GLB_UART_SIG_FUN_UART0_TXD;
        rx_sigfun = GLB_UART_SIG_FUN_UART0_RXD;
    } else {
        tx_sigfun = GLB_UART_SIG_FUN_UART1_TXD;
        rx_sigfun = GLB_UART_SIG_FUN_UART1_RXD;
    }

    // clk
    //GLB_Set_UART_CLK(1, HBN_UART_CLK_160M, 0);

    GLB_UART_Fun_Sel(tx_pin%8, tx_sigfun);
    GLB_UART_Fun_Sel(rx_pin%8, rx_sigfun);
}

int bl_uart_init(uint8_t id, uint8_t tx_pin, uint8_t rx_pin, uint8_t cts_pin, uint8_t rts_pin, uint32_t baudrate)
{
    static uint8_t uart_clk_init = 0;
    const uint8_t uart_div = 3;

    UART_CFG_Type uartCfg =
    {
        160*1000*1000,                                        /* UART clock */
        115200,                                              /* UART Baudrate */
        UART_DATABITS_8,                                     /* UART data bits length */
        UART_STOPBITS_1,                                     /* UART data stop bits length */
        UART_PARITY_NONE,                                    /* UART no parity */
        DISABLE,                                             /* Disable auto flow control */
        DISABLE,                                             /* Disable rx input de-glitch function */
        DISABLE,                                             /* Disable RTS output SW control mode */
        UART_LSB_FIRST                                       /* UART each data byte is send out LSB-first */
    };
    UART_FifoCfg_Type fifoCfg =
    {
        .txFifoDmaThreshold     = 0x10,
        .rxFifoDmaThreshold     = 0x10,
        .txFifoDmaEnable        = DISABLE,
        .rxFifoDmaEnable        = DISABLE,
    };

    /* enable clk */
    if (0 == uart_clk_init) {
        GLB_Set_UART_CLK(1, HBN_UART_CLK_160M, uart_div);
        uart_clk_init = 1;
    }

    /* gpio init */
    gpio_init(id, tx_pin, rx_pin, cts_pin, rts_pin);

    uartCfg.baudRate = baudrate;
    uartCfg.uartClk = (160 * 1000 * 1000) / (uart_div + 1);

    /* Disable all interrupt */
    UART_IntMask(id, UART_INT_ALL, MASK);

    /* Disable uart before config */
    UART_Disable(id, UART_TXRX);

    /* UART init */
    UART_Init(id, &uartCfg);

    /* Enable tx free run mode */
    UART_TxFreeRun(id, ENABLE);

    /* FIFO Config*/
    UART_FifoConfig(id, &fifoCfg);

    /* Enable uart */
    UART_Enable(id, UART_TXRX);

    return 0;
}

/*This function is NOT thread safe*/
int bl_uart_data_send(uint8_t id, uint8_t data)
{
    uint32_t UARTx = uartAddr[id];

    /* Wait for FIFO */
    while (UART_GetTxFifoCount(id) == 0) {
    }

    BL_WR_BYTE(UARTx + UART_FIFO_WDATA_OFFSET, data);

    return 0;
}

int bl_uart_data_recv(uint8_t id)
{
    int ret;
    uint32_t UARTx = uartAddr[id];

    /* Receive data */
    if (UART_GetRxFifoCount(id) > 0) {
        ret  = BL_RD_BYTE(UARTx + UART_FIFO_RDATA_OFFSET);
    } else {
        ret = -1;
    }

    return ret;
}

int bl_uart_int_rx_enable(uint8_t id)
{
    UART_SetRxTimeoutValue((UART_ID_Type)id, 24);
    UART_IntMask((UART_ID_Type)id, UART_INT_RX_FIFO_REQ, UNMASK);
    UART_IntMask((UART_ID_Type)id, UART_INT_RTO, UNMASK);
    return 0;
}

int bl_uart_int_rx_disable(uint8_t id)
{
    UART_IntMask((UART_ID_Type)id, UART_INT_RX_FIFO_REQ, MASK);
    UART_IntMask((UART_ID_Type)id, UART_INT_RTO, MASK);
    return 0;
}

int bl_uart_int_tx_enable(uint8_t id)
{
    UART_IntMask((UART_ID_Type)id, UART_INT_TX_FIFO_REQ, UNMASK);
    return 0;
}

int bl_uart_int_tx_disable(uint8_t id)
{
    UART_IntMask((UART_ID_Type)id, UART_INT_TX_FIFO_REQ, MASK);
    return 0;
}

int bl_uart_flush(uint8_t id)
{
    /* Wait for FIFO */
    while (UART_FIFO_TX_CNT != UART_GetTxFifoCount(id)) {
    }

    return 0;
}

void bl_uart_getdefconfig(uint8_t id, uint8_t *parity)
{
    if (NULL == parity) {
        return;
    }

    //*baudrate = 115200;/* not support set no baud */
    *parity = (uint8_t)UART_PARITY_NONE;
}

void bl_uart_setconfig(uint8_t id, uint32_t baudrate, UART_Parity_Type parity)
{
    UART_CFG_Type UartCfg =
    {
        40*1000*1000,                                       /* UART clock */
        115200,                                              /* UART Baudrate */
        UART_DATABITS_8,                                     /* UART data bits length */
        UART_STOPBITS_1,                                     /* UART data stop bits length */
        UART_PARITY_NONE,                                    /* UART no parity */
        DISABLE,                                             /* Disable auto flow control */
        DISABLE,                                             /* Disable rx input de-glitch function */
        DISABLE,                                             /* Disable RTS output SW control mode */
        UART_LSB_FIRST                                       /* UART each data byte is send out LSB-first */
    };

    UartCfg.baudRate = baudrate;
    UartCfg.parity = parity;             //UART_PARITY_NONE

    /* Disable uart before config */
    UART_Disable(id, UART_TXRX);
    /* UART init */
    UART_Init(id, &UartCfg);
    /* Enable tx free run mode */
    UART_TxFreeRun(id, ENABLE);
    /* Enable uart */
    UART_Enable(id, UART_TXRX);
}

void bl_uart_setbaud(uint8_t id, uint32_t baud)
{
    bl_uart_setconfig(id, baud, UART_PARITY_NONE);
}

int bl_uart_int_enable(uint8_t id, uint8_t *rx_buffer, uint8_t *rx_idx_write, uint8_t *rx_idx_read, uint8_t *tx_buffer, uint8_t *tx_idx_write, uint8_t *tx_idx_read)
{
    /*setup ringbuffer*/
    //TODO use struct for ring buffer
    cbs_uart_notify_arg[id][1] = rx_buffer;
    cbs_uart_notify_arg[id][2] = rx_idx_write;
    cbs_uart_notify_arg[id][3] = rx_idx_read;
    cbs_uart_notify_arg[id][5] = tx_buffer;
    cbs_uart_notify_arg[id][6] = tx_idx_write;
    cbs_uart_notify_arg[id][7] = tx_idx_read;

    /*enable INT for receving data to ringbuffer*/
    switch (id) {
        case 0:
        {
            bl_uart_int_rx_enable(0);
            bl_uart_int_tx_enable(0);
            bl_irq_register(UART0_IRQn, UART0_IRQHandler);
            bl_irq_enable(UART0_IRQn);
        }
        break;
        case 1:
        {
            bl_uart_int_rx_enable(1);
            bl_uart_int_tx_enable(1);
            bl_irq_register(UART1_IRQn, UART1_IRQHandler);
            bl_irq_enable(UART1_IRQn);
        }
        break;
        default:
        {
            return -1;
        }
    }

    return 0;
}

int bl_uart_int_cb_notify_register(uint8_t id, cb_uart_notify_t cb, void *arg)
{
    if (!(id < UART_NUMBER_SUPPORTED)) {
        /*UART ID overflow*/
        return -1;
    }

    cbs_uart_notify_arg[id][0] = arg;
    cbs_notify[id] = cb;

    return 0;
}

int bl_uart_int_cb_notify_unregister(uint8_t id, cb_uart_notify_t cb, void *arg)
{
    if (!(id < UART_NUMBER_SUPPORTED)) {
        /*UART ID overflow*/
        return -1;
    }
    cbs_uart_notify_arg[id][0] = NULL;
    cbs_notify[id] =NULL;

    return 0;
}

static inline void uart_generic_notify_handler(uint8_t id)
{
    uint32_t ch;
    cb_uart_notify_t cb;
    void *arg;
    uint8_t *buffer, *idx_write, *idx_read;
    uint8_t idx_w, idx_r;
    int i;
    uint32_t tmpVal = 0;
    uint32_t maskVal = 0;
    uint32_t UARTx = uartAddr[id];

    tmpVal = BL_RD_REG(UARTx,UART_INT_STS);
    maskVal = BL_RD_REG(UARTx,UART_INT_MASK);


    /* Length of uart tx data transfer arrived interrupt */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_UTX_END_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_UTX_END_MASK)){
        BL_WR_REG(UARTx,UART_INT_CLEAR,0x1);
    }

    /* Length of uart rx data transfer arrived interrupt */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_URX_END_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_URX_END_MASK)){
        BL_WR_REG(UARTx,UART_INT_CLEAR,0x2);
    }

    /* Tx fifo ready interrupt,auto-cleared when data is pushed */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_UTX_FIFO_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_UTX_FIFO_MASK)){
        /* Transmit data request interrupt */
        buffer = cbs_uart_notify_arg[id][5];
        idx_write = cbs_uart_notify_arg[id][6];
        idx_read = cbs_uart_notify_arg[id][7];

        idx_w = *idx_write;
        idx_r = *idx_read;
        /*Burst write with HALF FIFO*/
        i = 0;
        while ((i++) < FIFO_TX_SIZE_BURST) {
            if (idx_r != idx_w) {
                bl_uart_data_send((UART_ID_Type)id, buffer[idx_r]);
            } else {
                /*No more data for write*/
                break;
            }
            idx_r = ((idx_r + 1) & BL_UART_BUFFER_SIZE_MASK);
        }
        if ((*idx_read) == idx_r) {
            /*No data for tx during this loop, so disable it*/
            //FIXME potential bug?
            bl_uart_int_tx_disable(id);
        } else {
            /*Update ringbuffer status*/
            *idx_read = idx_r;
        }
    }

    /* Rx fifo ready interrupt,auto-cleared when data is popped */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_URX_FIFO_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_URX_FIFO_MASK)){
        /*Receive Data ready*/
        cb = cbs_notify[id];
        arg = cbs_uart_notify_arg[id][0];
        buffer = cbs_uart_notify_arg[id][1];
        idx_write = cbs_uart_notify_arg[id][2];
        idx_read = cbs_uart_notify_arg[id][3];

        idx_w = *idx_write;
        idx_r = *idx_read;

        while (UART_GetRxFifoCount(id) > 0) {
            /*we loop untill buffer is empty*/
            //TODO untill buffer is NOT full?
            ch  = BL_RD_BYTE(UARTx + UART_FIFO_RDATA_OFFSET);
            if (((idx_w + 1) & BL_UART_BUFFER_SIZE_MASK) != idx_r) {
                /*buffer is not full. so we read to ring buffer and callback*/
                buffer[idx_w] = ch;
                idx_w = ((idx_w + 1) & BL_UART_BUFFER_SIZE_MASK);
            } else {
                /*FIXME data is droped here*/
            }
        }
        *idx_write = idx_w;
        if (cb) {
            /*notify up layer*/
            cb(arg);
        }
    }

    /* Rx time-out interrupt */
    if (BL_IS_REG_BIT_SET(tmpVal,UART_URX_RTO_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_URX_RTO_MASK)){
        BL_WR_REG(UARTx,UART_INT_CLEAR,0x10);

        /*Receive Data ready*/
        cb = cbs_notify[id];
        arg = cbs_uart_notify_arg[id][0];
        buffer = cbs_uart_notify_arg[id][1];
        idx_write = cbs_uart_notify_arg[id][2];
        idx_read = cbs_uart_notify_arg[id][3];

        idx_w = *idx_write;
        idx_r = *idx_read;

        while (UART_GetRxFifoCount(id) > 0) {
            /*we loop untill buffer is empty*/
            //TODO untill buffer is NOT full?
            ch  = BL_RD_BYTE(UARTx + UART_FIFO_RDATA_OFFSET);
            if (((idx_w + 1) & BL_UART_BUFFER_SIZE_MASK) != idx_r) {
                /*buffer is not full. so we read to ring buffer and callback*/
                buffer[idx_w] = ch;
                idx_w = ((idx_w + 1) & BL_UART_BUFFER_SIZE_MASK);
            } else {
                /*FIXME data is droped here*/
            }
        }
        *idx_write = idx_w;
        if (cb) {
            /*notify up layer*/
            cb(arg);
        }
    }

    /* Rx parity check error interrupt */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_URX_PCE_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_URX_PCE_MASK)){
        BL_WR_REG(UARTx,UART_INT_CLEAR,0x20);
    }

    /* Tx fifo overflow/underflow error interrupt */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_UTX_FER_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_UTX_FER_MASK)){
    }

    /* Rx fifo overflow/underflow error interrupt */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_URX_FER_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_URX_FER_MASK)){
    }

    return;
}
#ifdef BL602_USE_HAL_DRIVER
void UART0_IRQHandler(void)
{
    uart_generic_notify_handler(0);
}

void UART1_IRQHandler(void)
{
    uart_generic_notify_handler(1);
}
#endif
