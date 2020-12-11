#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <aos/kernel.h>
#include <aos/yloop.h>


#include "ulog.h"          //串口打印相关定义
#include "bl_gpio.h"    
#include "hal_pwm.h"
#include"hal_adc.h"

#if LOG_MIAN_EN
#define TAG            "app_main"
#define LOGI           LOG_I
#define LOGE           LOG_E
#else
#define TAG            ""
#define LOGI(...)
#define LOGE(...)
#endif

#define ADC_PIN 12                                                        //ADC引脚定义
        

void ADC(void *arg){ 

hal_adc_init(0, 100, 512, ADC_PIN);                                         //ADC初始化
//int hal_adc_init(int mode, int freq, int data_num, int gpio_num);mode:高速，慢速freq：采样频率data_num:采样的buffer;gpio_num:gpio
    while(1){     

    int32_t data = hal_adc_get_data(ADC_PIN,1);                                  //ADC读取电压值
    int32_t raw_data=hal_adc_get_data(ADC_PIN,0);                               //ADC读取原始数值
    //int32_t hal_adc_get_data(int gpio_num, int raw_flag),raw_flag：原始数据还是转换成voltage的值
    LOGE(TAG,"gpio = %d data = %d mv  raw_data=%d \r\n", ADC_PIN, data,raw_data);       
    vTaskDelay(1000 / portTICK_RATE_MS);

    }
}

void user_main(void){

    if (xTaskCreate(ADC, "ADC", 512, NULL, 6, NULL) != pdPASS)   //创建任务
    {
        LOGI(TAG, "xTaskCreate(ADC) failed");
    }

}