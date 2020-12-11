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

void uart_callback(void *arg){ 

}

void user_main(void){

bl_uart_init(0, 16, 7, 255, 255, 2 * 1000 * 1000);

}