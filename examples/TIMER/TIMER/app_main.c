#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <aos/kernel.h>
#include <aos/yloop.h>

#include <hal_hwtimer.h>
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


#define LED 1                                               //GPIO引脚定义
bool value=false;
int times=0;
hw_timer_t *handle1;

void timer_calback(void *arg){                              //定时器回调函数
value=!value;
bl_gpio_output_set(LED, value);                             //设置GPIO电平
times++;
LOGI(TAG, "times:%d",times);

}

void user_main(void){
bl_gpio_enable_output(LED, 0, 0);                            //初始化GPIO
hal_hwtimer_init();                                          //定时器初始化
handle1 = hal_hwtimer_create(2000, timer_calback, 1);        //开启一个定时器

}