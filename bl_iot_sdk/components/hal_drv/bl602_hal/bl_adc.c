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
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include <bl602_aon.h>
#include <bl602_hbn.h>
#include <bl602_common.h>
#include <bl602_glb.h>
#include <bl602_hbn.h>
#include <bl602_dma.h>
#include <bl602_adc.h>
#include <bl602.h>
#include <bl_irq.h>
#include <blog.h>


#include <blog.h>
#include <bl_dma.h>
#include <bl_adc.h>
#include <bl_timer.h>

//#define TEMP_OFFSET_X   22791
#define TEMP_OFFSET_X     2318
#define ADC_CLOCK_FREQ    40000000  

ADC_CFG_Type adcCfg = {
    .v18Sel=ADC_V18_SEL_1P82V,                /*!< ADC 1.8V select */
    .v11Sel=ADC_V11_SEL_1P1V,                 /*!< ADC 1.1V select */
    .clkDiv=ADC_CLK_DIV_16,                   /*!< Clock divider */
    .gain1=ADC_PGA_GAIN_NONE,                 /*!< PGA gain 1 */
    .gain2=ADC_PGA_GAIN_NONE,                 /*!< PGA gain 2 */
    .chopMode=ADC_CHOP_MOD_AZ_PGA_ON,           /*!< ADC chop mode select */
    .biasSel=ADC_BIAS_SEL_MAIN_BANDGAP,       /*!< ADC current form main bandgap or aon bandgap */
    .vcm=ADC_PGA_VCM_1V,                      /*!< ADC VCM value */
    .vref=ADC_VREF_2V,                      /*!< ADC voltage reference */
    .inputMode=ADC_INPUT_SINGLE_END,          /*!< ADC input signal type */
    .resWidth=ADC_DATA_WIDTH_16_WITH_256_AVERAGE,              /*!< ADC resolution and oversample rate */
    .offsetCalibEn=0,                         /*!< Offset calibration enable */
    .offsetCalibVal=0,                        /*!< Offset calibration value */
};


ADC_FIFO_Cfg_Type adcFifoCfg = {
    .fifoThreshold = ADC_FIFO_THRESHOLD_1,
    .dmaEn = DISABLE,
};

void ADC_Clock_Init(uint8_t div)
{
    GLB_Set_ADC_CLK(ENABLE,GLB_ADC_CLK_96M,div);
    blog_info("GLB_Set_ADC_CLK_Div(%d) == clock 96M/(%d+1)\r\n",div,div);
}

void TSEN_Calibration(void)
{
    ADC_SET_TSVBE_LOW();
    ADC_Start();
    ARCH_Delay_MS(100);
    while(ADC_Get_FIFO_Count() == 0);
    ADC_Read_FIFO();

    ADC_SET_TSVBE_HIGH();
    ADC_Start();
    ARCH_Delay_MS(100);
    while(ADC_Get_FIFO_Count() == 0);
    ADC_Read_FIFO();

    ADC_SET_TSVBE_LOW();
}

static void ADC_tsen_case(void)
{
	ADC_Result_Type result;
	uint32_t regVal=0;
    uint8_t i=0;
    uint32_t v0=0,v1=0;
    float v_error=0;

    ADC_Reset();

    ADC_Disable();
    ADC_Enable();

    ADC_Init(&adcCfg);
    ADC_Channel_Config(ADC_CHAN_TSEN_P,ADC_CHAN_GND,0);
    ADC_Tsen_Init(ADC_TSEN_MOD_INTERNAL_DIODE);

    ADC_FIFO_Cfg(&adcFifoCfg);
    TSEN_Calibration();

	for(i=0;i<40;i++){
		ADC_Start();

		while(ADC_Get_FIFO_Count() == 0);

		do{
			regVal = ADC_Read_FIFO();
			ADC_Parse_Result(&regVal,1,&result);

            if(i%2 ==0){
                v0 = result.value;
            }else{
                v1 = result.value;
            }  
		}while(ADC_Get_FIFO_Count() != 0);

        if(i%2 !=0){
              v_error = (float)v0 - (float)v1;
              v_error = v_error - TEMP_OFFSET_X;
              v_error = v_error /7.753;
            blog_info(" v0=%ld  v1 = %ld \n",v0,v1);
            //MSG(" ((v0-v1)-X)/7.753= %d \n",(uint32_t)(v_error * 1000));
            blog_info(" chip Tempture = %ld degree centigrade\n",(uint32_t)(v_error));
        }
        if( i%2 ==0 )
            ADC_SET_TSVBE_HIGH();
        else
            ADC_SET_TSVBE_LOW();

		ARCH_Delay_MS(500);
	}
}


int test_adc_init(void)
{
    ADC_Clock_Init(2);

    ADC_Reset();

    ADC_Disable();
    ADC_Enable();

    ADC_Init(&adcCfg);
    ADC_Channel_Config(ADC_CHAN_TSEN_P, ADC_CHAN_GND, 0);
    ADC_Tsen_Init(ADC_TSEN_MOD_INTERNAL_DIODE);

    ADC_FIFO_Cfg(&adcFifoCfg);
    TSEN_Calibration();

    return 0;
}

int test_adc_get(int16_t *tmp)
{
    ADC_Result_Type result;
    uint32_t regVal=0;
    uint8_t i=0;
    uint32_t v0=0,v1=0;
    float v_error=0;

    for (i = 0; i < 2; i++) {
        ADC_Start();

        while(ADC_Get_FIFO_Count() == 0) {
            extern void aos_msleep(int ms);
            aos_msleep(1);
        }

        do{
            regVal = ADC_Read_FIFO();
            ADC_Parse_Result(&regVal,1,&result);

            if(i%2 == 0) {
                v0 = result.value;
            } else {
                v1 = result.value;
            }
        } while(ADC_Get_FIFO_Count() != 0);

        if (i%2 != 0) {
            v_error = (float)v0 - (float)v1;
            //blog_info("v_error = %d\r\n", v_error);
            v_error = v_error - TEMP_OFFSET_X;
            v_error = v_error / 7.753;
            //blog_info("v0 = %ld, v1 = %ld\r\n", v0, v1);
            //blog_info(" chip Tempture = %ld degree centigrade\r\n", (uint32_t)(v_error));
            *tmp = (int16_t)v_error;
        }
        if (i%2 == 0) {
            ADC_SET_TSVBE_HIGH();
        } else {
            ADC_SET_TSVBE_LOW();
        }
    }
    return 0;
}

int test_adc_test(void)
{
    ADC_tsen_case();
    return 0;
}

/* adc driver */
static void adc_data_update(void)
{
    adc_ctx_t *pstctx;

    pstctx =  bl_dma_find_ctx_by_channel(ADC_DMA_CHANNEL);
    if (pstctx == NULL) {
        blog_error("get ctx error \r\n");
        return;
    }

    if (pstctx->lli_flag == 0) {
        pstctx->channel_data = (uint32_t *)((DMA_LLI_Ctrl_Type *)(pstctx->adc_lli))[0].destDmaAddr;
        pstctx->lli_flag = 1;
    } else {
        pstctx->channel_data = (uint32_t *)((DMA_LLI_Ctrl_Type *)(pstctx->adc_lli))[1].destDmaAddr;
        pstctx->lli_flag = 0;
    }

    return;
}


int bl_adc_clock_init(int sampling_ms)
{
    int div;

    div = (ADC_CLOCK_FREQ / (32 * 256 * 12)) * sampling_ms / 1000;
    GLB_Set_ADC_CLK(ENABLE, GLB_ADC_CLK_XCLK, div - 1);
    
    return 0;
}

int bl_adc_init(void)
{
    int i;
    ADC_CFG_Type adccfg;
    ADC_Chan_Type pos_chlist_single[ADC_CHANNEL_MAX];
    ADC_Chan_Type neg_chlist_single[ADC_CHANNEL_MAX];
    ADC_FIFO_Cfg_Type adc_fifo_cfg;

    adccfg.v18Sel=ADC_V18_SEL_1P82V;
    adccfg.v11Sel=ADC_V11_SEL_1P1V;
    adccfg.clkDiv=ADC_CLK_DIV_32;
    adccfg.gain1=ADC_PGA_GAIN_NONE;
    adccfg.gain2=ADC_PGA_GAIN_NONE;
    adccfg.chopMode=ADC_CHOP_MOD_ALL_OFF;
    adccfg.biasSel=ADC_BIAS_SEL_MAIN_BANDGAP;
    adccfg.vcm=ADC_PGA_VCM_1V;
    adccfg.vref=ADC_VREF_3P3V;
    adccfg.inputMode=ADC_INPUT_SINGLE_END;
    adccfg.resWidth=ADC_DATA_WIDTH_16_WITH_256_AVERAGE;
    adccfg.offsetCalibEn=0;
    adccfg.offsetCalibVal=0;

    ADC_Disable();
    ADC_Enable();
    ADC_Reset();

    ADC_Init(&adccfg);

    for (i = 0; i < ADC_CHANNEL_MAX; i++) {
        pos_chlist_single[i] = i;
        neg_chlist_single[i] = ADC_CHAN_GND;
    }
    ADC_Scan_Channel_Config(pos_chlist_single, neg_chlist_single, ADC_CHANNEL_MAX, ENABLE);

    adc_fifo_cfg.fifoThreshold = ADC_FIFO_THRESHOLD_4;
    adc_fifo_cfg.dmaEn = ENABLE;
    ADC_FIFO_Cfg(&adc_fifo_cfg);

    return 0;
}

static void adc_dma_lli_init(DMA_LLI_Ctrl_Type *pstlli, uint32_t *buf)
{ 
    struct DMA_Control_Reg dma_ctrl_reg;

    dma_ctrl_reg.TransferSize = 12;
    dma_ctrl_reg.SBSize=DMA_BURST_SIZE_4;
    dma_ctrl_reg.DBSize=DMA_BURST_SIZE_4;
    dma_ctrl_reg.SWidth=DMA_TRNS_WIDTH_32BITS;
    dma_ctrl_reg.DWidth=DMA_TRNS_WIDTH_32BITS;
    dma_ctrl_reg.SI=DMA_MINC_DISABLE;
    dma_ctrl_reg.DI=DMA_MINC_ENABLE;
    dma_ctrl_reg.I = 1;
    dma_ctrl_reg.SLargerD = 0;
    dma_ctrl_reg.Prot = 0;

    pstlli[0].srcDmaAddr = 0x40002000+0x4;
    pstlli[0].destDmaAddr = (uint32_t)&buf[0];
    pstlli[0].nextLLI = (uint32_t)&pstlli[1]; 
    pstlli[0].dmaCtrl= dma_ctrl_reg;

    pstlli[1].srcDmaAddr = 0x40002000+0x4;
    pstlli[1].destDmaAddr = (uint32_t)&buf[ADC_CHANNEL_MAX];
    pstlli[1].nextLLI = (uint32_t)&pstlli[0];
    pstlli[1].dmaCtrl= dma_ctrl_reg;
 
    return; 
}

int bl_adc_dma_init(void)
{
    DMA_LLI_Ctrl_Type *pstlli;
    uint32_t *llibuf;
    DMA_LLI_Cfg_Type llicfg;
    adc_ctx_t *pstctx;

    pstctx = pvPortMalloc(sizeof(adc_ctx_t));
    if (pstctx == NULL) {
        blog_error("malloc adc_ctx failed \r\n");

        return -1;
    }
 
    pstlli = pvPortMalloc(sizeof(DMA_LLI_Ctrl_Type) * 2);
    if (pstlli == NULL) {
        blog_error("malloc lli failed. \r\n");

        return -1;
    }

    llibuf = pvPortMalloc(sizeof(uint32_t) * ADC_CHANNEL_MAX * 2);

    if (llibuf == NULL) {
        blog_error("malloc lli buf failed. \r\n");

        return -1;
    }
   
    llicfg.dir = DMA_TRNS_P2M;
    llicfg.srcPeriph = DMA_REQ_GPADC0;
    llicfg.dstPeriph = DMA_REQ_NONE;
    DMA_Channel_Disable(ADC_DMA_CHANNEL);

    adc_dma_lli_init(pstlli, llibuf);
    DMA_LLI_Init(ADC_DMA_CHANNEL, &llicfg);
    DMA_LLI_Update(ADC_DMA_CHANNEL, (uint32_t)&(pstlli[0]));

    pstctx->adc_lli = pstlli;
    pstctx->lli_flag = 0;
    pstctx->chan_init_table = 0;
    bl_dma_irq_register(ADC_DMA_CHANNEL, adc_data_update, NULL, pstctx);

    return 0;
}

int bl_adc_start(void)
{
    DMA_IntMask(ADC_DMA_CHANNEL, DMA_INT_ALL, MASK);
    DMA_IntMask(ADC_DMA_CHANNEL, DMA_INT_TCOMPLETED, UNMASK);
    DMA_IntMask(ADC_DMA_CHANNEL, DMA_INT_ERR, UNMASK);

    ADC_Start();
    DMA_Enable();
    DMA_Channel_Enable(ADC_DMA_CHANNEL);
    
    return 0;
}

int bl_adc_gpio_init(int gpio_num)
{
    uint8_t adc_pin = gpio_num;
     
    GLB_GPIO_Func_Init(GPIO_FUN_ANALOG, &adc_pin, 1);

    return 0;
}

int32_t bl_adc_parse_data(uint32_t *parr, int data_num, int channel)
{
    int i;
    ADC_Result_Type result;

    for (i = 0; i < ADC_CHANNEL_MAX; i++) {
        ADC_Parse_Result(&parr[i], 1, &result);
        if (result.posChan == channel) {
            return (int32_t)(result.volt * 1000);
        }
    }

    return -1;
}

