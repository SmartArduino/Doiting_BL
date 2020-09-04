/*
 * Copyright (C) 2015-2017 Alibaba Group Holding Limited
 */

#include <stdio.h>
#include <FreeRTOS.h>
#include <task.h>
#include <string.h>
#include <aos/kernel.h>
#include <device/vfs_uart.h>
#include <hal/soc/soc.h>
#include <vfs_err.h>
#include <yloop_types.h>
#include <utils_log.h>

/* uart driver struct */
const struct file_ops uart_ops =
{
    .open = vfs_uart_open,
    .close = vfs_uart_close,
    .read = vfs_uart_read,
    .write = vfs_uart_write,
    .poll = vfs_uart_poll,
    .ioctl = vfs_uart_ioctl,
    .sync = vfs_uart_sync,
};

int vfs_uart_open(inode_t *inode, file_t *fp)
{
    int ret = -1;                /* return value */
    uart_dev_t *uart_dev = NULL; /* device pointer */

    /* check empty pointer. */
    if ((fp != NULL) && (fp->node != NULL)) {

        /* Initialize if the device is first opened. */
        if (fp->node->refs == 1) {
            /* get the device pointer. */
            uart_dev = (uart_dev_t *)(fp->node->i_arg);

            aos_mutex_new((aos_mutex_t*)&(uart_dev->mutex));

            /*reset ring buffer*/
            uart_dev->ring_rx_idx_read = 0;
            uart_dev->ring_rx_idx_write = 0;
            uart_dev->ring_tx_idx_read = 0;
            uart_dev->ring_tx_idx_write = 0;

            /*  init uart device. */
            ret = hal_uart_init(uart_dev);
        } else {
            ret = VFS_SUCCESS;
        }
    } else {
        ret = -EINVAL;
    }

    return ret;
}

int vfs_uart_close(file_t *fp)
{
    int ret = -1;                /* return value */
    uart_dev_t *uart_dev = NULL; /* device pointer */

    /* check empty pointer. */
    if ((fp != NULL) && (fp->node != NULL)) {

        /* close device if the device is last closed. */
        if (fp->node->refs == 1) {
            /* get the device pointer. */
            uart_dev = (uart_dev_t *)(fp->node->i_arg);

            if (uart_dev != NULL) {

                aos_mutex_free((aos_mutex_t*)&(uart_dev->mutex));

                /* turns off hardware. */
                ret = hal_uart_finalize(uart_dev);
            } else {
                ret = -EINVAL;
            }
        } else {
            ret = VFS_SUCCESS;
        }
    } else {
        ret = -EINVAL;
    }

    return ret;
}

#define use_tick(now, old) ((uint32_t)(((int32_t)(now)) - ((uint32_t)(old))))

static void uart_notify(void *arg)
{
    BaseType_t xHigherPriorityTaskWoken;
    uart_dev_t *uart_dev = (uart_dev_t *)arg;
    if (NULL == uart_dev) {
        log_error("arg NULL\r\n");
        return;
    }

    vTaskNotifyGiveFromISR((TaskHandle_t)(uart_dev->taskhdl), &xHigherPriorityTaskWoken);
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}

ssize_t vfs_uart_read(file_t *fp, void *buf, size_t nbytes)
{
    int ret = -1;                /* return value */
    uart_dev_t *uart_dev = NULL; /* device pointer */
    uint8_t *buffer, idx_w, idx_r;

    uint8_t *readbuf = buf;

    /* check empty pointer. */
    if ((fp != NULL) && (fp->node != NULL)) {

        /* get the device pointer. */
        uart_dev = (uart_dev_t *)(fp->node->i_arg);

        if ((nbytes > 0) && (uart_dev != NULL)) {
            aos_mutex_lock((aos_mutex_t*)&(uart_dev->mutex), AOS_WAIT_FOREVER);

            ret = 0;

            /*Protect callback from INT*/
            taskENTER_CRITICAL();
            //vPortEnterCritical();
            uart_dev->taskhdl = xTaskGetCurrentTaskHandle();
            hal_uart_notify_register(uart_dev, uart_notify);
            taskEXIT_CRITICAL();
            //vPortExitCritical();

            while (1) {
                taskENTER_CRITICAL();
                //vPortEnterCritical();
                buffer = uart_dev->ring_rx_buffer;
                idx_w = uart_dev->ring_rx_idx_write;
                idx_r = uart_dev->ring_rx_idx_read;
                while (ret < nbytes && (idx_r != idx_w)) {
                    readbuf[ret] = buffer[idx_r];
                    /*FIXME no maigc is allowed here*/
                    idx_r = ((idx_r + 1) & 0x7F);//max idx is 127
                    ret++;
                }
                uart_dev->ring_rx_idx_read = idx_r;
                taskEXIT_CRITICAL();
                //vPortExitCritical();

                if (UART_READ_CFG_BLOCK == uart_dev->read_block_flag) {/* block */
                    printf("block.\r\n");
                    if (ret < nbytes) {
                        ulTaskNotifyTake(pdFALSE, portMAX_DELAY);
                        continue;
                    }
                    break;
                } else {/* noblock */
                    break;
                }
            }

            /* Protect callback from INT */
            taskENTER_CRITICAL();
            //vPortEnterCritical();
            hal_uart_notify_unregister(uart_dev, NULL);
            taskEXIT_CRITICAL();
            //vPortExitCritical();

            aos_mutex_unlock((aos_mutex_t*)&(uart_dev->mutex));
        } else {
            ret = -EINVAL;
        }
    } else {
        ret = -EINVAL;
    }

    return ret;
}

//TODO block write is needed
ssize_t vfs_uart_write(file_t *fp, const void *buf, size_t nbytes)
{
    int ret = -1;                /* return value */
    uart_dev_t *uart_dev = NULL; /* device pointer */
    uint8_t *buffer, idx_w, idx_r;

    /* check empty pointer. */
    if ((fp != NULL) && (fp->node != NULL)) {

        /* get the device pointer. */
        uart_dev = (uart_dev_t *)(fp->node->i_arg);

        if (uart_dev != NULL) {

            /* send data from uart. */
            ret = 0;
            buffer = uart_dev->ring_tx_buffer;
            idx_w = uart_dev->ring_tx_idx_write;
            idx_r = uart_dev->ring_tx_idx_read;

            /*FIXME no maigc is allowed here*/
            while (ret < nbytes && ((idx_w + 1) & 0x7F) != idx_r) {
                /*Write data to ringbuffer*/
                buffer[idx_w] = ((uint8_t*)buf)[ret];
                /*FIXME no maigc is allowed here*/
                idx_w = ((idx_w + 1) & 0x7F);
                ret++;
            }
            uart_dev->ring_tx_idx_write = idx_w;
            /*Trigger UART Write Now*/
            if (ret > 0) {
                hal_uart_send_trigger(uart_dev);
            }
        } else {
            ret = -EINVAL;
        }
    } else {
        ret = -EINVAL;
    }

    return ret;
}

void vfs_uart_notify(void *arg)
{
    /*this function is called in the interrupt routine, no task is shceduled*/
    uart_dev_t *uart_dev = (uart_dev_t*)arg;

    if (uart_dev->poll_cb != NULL) {
        ((struct pollfd*)uart_dev->fd)->revents |= POLLIN;
        ((poll_notify_t)uart_dev->poll_cb)(uart_dev->fd, uart_dev->poll_data);
    }
}

int vfs_uart_poll(file_t *fp, bool setup, poll_notify_t notify, struct pollfd *fd, void *opa)
{
    uart_dev_t *uart_dev = (uart_dev_t *)(fp->node->i_arg);

    aos_mutex_lock((aos_mutex_t*)&(uart_dev->mutex), AOS_WAIT_FOREVER);
    if (!setup) {
        /*Enter Critical to protect callback from INT context and other task*/
        taskENTER_CRITICAL();
        //vPortEnterCritical();
        uart_dev->poll_cb = NULL;
        uart_dev->poll_data = NULL;
        hal_uart_notify_unregister(uart_dev, vfs_uart_notify);
        taskEXIT_CRITICAL();
        //vPortExitCritical();
        goto out;
    }
    /*Protect callback from INT*/
    taskENTER_CRITICAL();
    //vPortEnterCritical();
    uart_dev->poll_cb = notify;
    uart_dev->fd = fd;
    uart_dev->poll_data = opa;
    hal_uart_notify_register(uart_dev, vfs_uart_notify);
    taskEXIT_CRITICAL();
    //vPortExitCritical();

    if (uart_dev->ring_rx_idx_read != uart_dev->ring_rx_idx_write) {
        ((struct pollfd*)uart_dev->fd)->revents |= POLLIN;
        (*notify)(fd, opa);
    }
out:
    aos_mutex_unlock((aos_mutex_t*)&(uart_dev->mutex));

    return 0;
}

int uart_ioctl_cmd_waimode(uart_dev_t *uart_dev, int cmd, unsigned long arg)
{
    int ret = 0;
    uint8_t *buffer, idx_w, idx_r;
    uint32_t nbytes;
    uint32_t start_tick;
    uint32_t cur_tick;
    int32_t tmp;
    uart_ioc_waitread_t *waitr_arg = (uart_ioc_waitread_t *)arg;

    if (NULL == waitr_arg) {
        return -EINVAL;
    }

    nbytes = waitr_arg->read_size;
    start_tick = xTaskGetTickCount();

    /*Protect callback from INT*/
    taskENTER_CRITICAL();
    //vPortEnterCritical();
    uart_dev->taskhdl = xTaskGetCurrentTaskHandle();
    hal_uart_notify_register(uart_dev, uart_notify);
    taskEXIT_CRITICAL();
    //vPortExitCritical();

    while (1) {
        taskENTER_CRITICAL();
        //vPortEnterCritical();
        buffer = uart_dev->ring_rx_buffer;
        idx_w = uart_dev->ring_rx_idx_write;
        idx_r = uart_dev->ring_rx_idx_read;
        while (ret < nbytes && (idx_r != idx_w)) {
            ((uint8_t*)waitr_arg->buf)[ret] = buffer[idx_r];
            /*FIXME no maigc is allowed here*/
            idx_r = ((idx_r + 1) & 0x7F);//max idx is 127
            ret++;
        }
        uart_dev->ring_rx_idx_read = idx_r;
        taskEXIT_CRITICAL();
        //vPortExitCritical();

        if (0 == waitr_arg->timeout) {                        /* read noblock */
            break;
        } else if (AOS_WAIT_FOREVER == waitr_arg->timeout) {  /* read time forever */
            if (IOCTL_UART_IOC_WAITRD_MODE == cmd) {
                if (ret > 0) {
                    break;
                }
            }
            if (ret < nbytes) {
                ulTaskNotifyTake(pdFALSE, portMAX_DELAY);
                continue;
            }
            break;
        } else {                                              /* read so time */
            if (IOCTL_UART_IOC_WAITRD_MODE == cmd) {
                if (ret > 0) {
                    break;
                }
            }
            cur_tick = xTaskGetTickCount();
            tmp = ((int32_t)waitr_arg->timeout - ((int32_t)cur_tick - (int32_t)start_tick));
            if ((0 < tmp) && (ret < nbytes)) {
                ulTaskNotifyTake(pdFALSE, tmp);
                continue;
            }
            break;
        }
    }

    /* Protect callback from INT */
    taskENTER_CRITICAL();
    //vPortEnterCritical();
    hal_uart_notify_unregister(uart_dev, NULL);
    taskEXIT_CRITICAL();
    //vPortExitCritical();

    return ret;
}

int uart_ioctl_cmd_setconfig(uart_dev_t *uart_dev, unsigned long arg)
{
    uart_ioc_config_t *config = (uart_ioc_config_t *)arg;
    hal_uart_parity_t parity;

    if (NULL == config) {
        return -EINVAL;
    }

    if (config->parity == IO_UART_PARITY_ODD) {
        parity = ODD_PARITY;
    } else if (config->parity == IO_UART_PARITY_EVEN) {
        parity = EVEN_PARITY;
    } else {
        parity = NO_PARITY;
    }

    hal_uart_setconfig(uart_dev, config->baud, parity);

    return 0;
}

int vfs_uart_ioctl(file_t *fp, int cmd, unsigned long arg)
{
    int ret = -1;
    uart_dev_t *uart_dev = NULL;

    /* check empty pointer. */
    if ((fp == NULL) || (fp->node == NULL)) {
        return -EINVAL;
    }

    /* get the device pointer. */
    uart_dev = (uart_dev_t *)(fp->node->i_arg);

    if (uart_dev == NULL) {
        return -EINVAL;
    }

    aos_mutex_lock((aos_mutex_t*)&(uart_dev->mutex), AOS_WAIT_FOREVER);
    switch(cmd) {
        case IOCTL_UART_IOC_WAITRD_MODE:
        case IOCTL_UART_IOC_WAITRDFULL_MODE:
        {
            ret = uart_ioctl_cmd_waimode(uart_dev, cmd, arg);
        }
        break;
        case IOCTL_UART_IOC_FLUSH_MODE:
        {
            hal_uart_send_flush(uart_dev, 0);
        }
        break;
        case IOCTL_UART_IOC_BAUD_MODE:
        {
            hal_uart_setbaud(uart_dev, (uint32_t)arg);
        }
        break;
        case IOCTL_UART_IOC_CONFIG_MODE:
        {
            ret = uart_ioctl_cmd_setconfig(uart_dev, arg);
        }
        break;
        case IOCTL_UART_IOC_READ_BLOCK:
        {
            uart_dev->read_block_flag = UART_READ_CFG_BLOCK;
        }
        break;
        case IOCTL_UART_IOC_READ_NOBLOCK:
        {
            uart_dev->read_block_flag = UART_READ_CFG_NOBLOCK;
        }
        break;
        default:
        {
            ret =  -EINVAL;
        }
    }

    aos_mutex_unlock((aos_mutex_t*)&(uart_dev->mutex));

    return ret;
}

int vfs_uart_sync(file_t *fp)
{
    uart_dev_t *uart_dev = NULL;

    /* check empty pointer. */
    if ((fp == NULL) || (fp->node == NULL)) {
        return -EINVAL;
    }

    /* get the device pointer. */
    uart_dev = (uart_dev_t *)(fp->node->i_arg);

    if (uart_dev == NULL) {
        return -EINVAL;
    }

    aos_mutex_lock((aos_mutex_t*)&(uart_dev->mutex), AOS_WAIT_FOREVER);
    hal_uart_send_flush(uart_dev, 0);
    aos_mutex_unlock((aos_mutex_t*)&(uart_dev->mutex));

    return 0;
}

