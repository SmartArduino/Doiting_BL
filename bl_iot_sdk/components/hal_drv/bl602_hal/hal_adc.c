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
#include <blog.h>
#include <bl_adc.h>
#include <bl_irq.h>
#include <bl_dma.h>

static int check_adc_gpio_valid(int gpio_num)
{
    int i;
    int gpio_arr[12] = {4, 5, 6, 9, 10, 11, 12, 13, 14, 15};
     
    for (i = 0; i < 10; i++) {
        if (gpio_num == gpio_arr[i]) {
            return 0;
        }
    }
     
    return -1; 
}

static int adc_get_channel_by_gpio(int gpio_num)
{
    int channel;
    
    if (gpio_num == 4) {
        channel = 1;
    } else if (gpio_num == 5) {    
        channel = 4;
    } else if (gpio_num == 6) {
        channel = 5;
    } else if (gpio_num == 9) {
        channel = 7;
    } else if (gpio_num == 10) {
        channel = 9;
    } else if (gpio_num == 11) {
        channel = 10;
    } else if (gpio_num == 12) {
        channel = 0;
    } else if (gpio_num == 13) {
        channel = 3;
    } else if (gpio_num == 14) {
        channel = 2;
    } else if (gpio_num == 15) {
        channel = 11;
    } else {
        return -1;
    }
    
    return channel;
}

//sampling_ms, suppport 10ms to 150 ms.
int hal_adc_init(int sampling_ms)
{
    int ret;

    if (sampling_ms < 10 || sampling_ms > 150) {
        blog_error("sampling only support 10ms ~ 150ms \r\n");

        return -1;
    }

    bl_adc_clock_init(sampling_ms);
    bl_adc_init();

    ret = bl_adc_dma_init();
    if (ret < 0) {
        blog_error("adc init failed \r\n");

        return -1;
    }

    bl_adc_start();

    return 0;
}

int hal_adc_add_channel(int gpio_num)
{
    int ret;
    adc_ctx_t *pstctx;
    int channel;

    ret = check_adc_gpio_valid(gpio_num);
    if (ret < 0) {
        blog_error("not legal gpio num, adc only support gpio 4,5,6,9,10,11,12,13,14,15 \r\n");

        return -1;
    }
                
    bl_adc_gpio_init(gpio_num);
    channel = adc_get_channel_by_gpio(gpio_num);
    pstctx = bl_dma_find_ctx_by_channel(ADC_DMA_CHANNEL);
    pstctx->chan_init_table = pstctx->chan_init_table | (1 << channel); 
    
    return 0;
}

int32_t hal_adc_get_data(int gpio_num)
{
    int ret;
    adc_ctx_t *pstctx;
    uint32_t adc_data[ADC_CHANNEL_MAX];
    int32_t data;
    int channel;
    
    ret = check_adc_gpio_valid(gpio_num);
    if (ret < 0) {
        blog_error("not legal gpio num, adc only support gpio 4,5,6,9,10,11,12,13,14,15 \r\n");

        return -1;
    }

    pstctx = bl_dma_find_ctx_by_channel(ADC_DMA_CHANNEL);
    if (pstctx == NULL) {
        blog_error("get ctx error \r\n");

        return -1;
    }

    channel = adc_get_channel_by_gpio(gpio_num);
    if (((1 << channel) & pstctx->chan_init_table) == 0) {
        blog_error("gpio = %d  not init as adc \r\n", gpio_num);
        return -1;
    }

    memcpy((uint8_t*)adc_data, (uint8_t*)(pstctx->channel_data), ADC_CHANNEL_MAX * 4); 
    
    data = bl_adc_parse_data(adc_data, ADC_CHANNEL_MAX, channel);

    return data;
}
