#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <aos/kernel.h>
#include <aos/yloop.h>

#include "ulog.h"          //串口打印相关定义
#include "bl_gpio.h"    

#if LOG_MIAN_EN
#define TAG            "app_main"
#define LOGI           LOG_I
#define LOGE           LOG_E
#else
#define TAG            ""
#define LOGI(...)
#define LOGE(...)
#endif

#define LED 1                            //GPIO引脚定义
bool value=false;

void GPIO(void *arg){ 

bl_gpio_enable_output(LED, 0, 0);          //初始化GPIO

    while(1){
        
    value=!value;
    bl_gpio_output_set(LED, value);          //设置GPIO电平
    LOGI(TAG, "LED :%d",value);                 //串口打印IO口输出状态
        vTaskDelay(1000 / portTICK_RATE_MS);    //延时1000MS
    }
}

void user_main(void){

    if (xTaskCreate(GPIO, "GPIO", 512, NULL, 6, NULL) != pdPASS)   //创建GPIO函数任务
    {
        LOGI(TAG, "xTaskCreate(GPIO) failed");
    }

}