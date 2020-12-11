#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <aos/kernel.h>
#include <aos/yloop.h>

#include "hal_pwm.h"
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
#define LED_CHANLE 1                    //GPIO1所对应的PWM通道
#define LED_PWM_PERIOD 1000             
bool value=false;

void PWM(void *arg){ 

    hal_pwm_init(LED_CHANLE, LED);                         //PWM初始化
    hal_pwm_freq_update(LED_CHANLE, LED_PWM_PERIOD);
    hal_pwm_duty_set(LED_CHANLE, 0, 0);
    hal_pwm_start(LED_CHANLE);

    int i=0;
    while(1){                                               //呼吸灯效果实现

   for(i=100;i>-1;i--)
        {hal_pwm_duty_set(LED_CHANLE, i*100, 0);
        vTaskDelay(10/ portTICK_RATE_MS);                   //改变延时时间可改变呼吸速度的快慢
        }
    for(i=0;i<101;i++)
        {hal_pwm_duty_set(LED_CHANLE, i*100, 0);
        vTaskDelay(10/ portTICK_RATE_MS);    
        }
    vTaskDelay(300 / portTICK_RATE_MS);
    }
}

void user_main(void){

    if (xTaskCreate(PWM, "PWM", 512, NULL, 6, NULL) != pdPASS)   //创建PWM函数任务
    {
        LOGI(TAG, "xTaskCreate(GPIO) failed");
    }

}