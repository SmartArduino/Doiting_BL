#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
//#include <hal_timer.h>
#include <aos/kernel.h>
#include <aos/yloop.h>

#include "bl_gpio.h"
#include"bl_timer.h"
#include "ulog.h"
#include "do_ble.h"


#if LOG_MIAN_EN
#define TAG            "app_main"
#define LOGI           LOG_I
#define LOGE           LOG_E
#else
#define TAG            ""
#define LOGI(...)
#define LOGE(...)
#endif
#define LED 1

#define CDM_CMP(str1, str2)     (strcmp(str1, str2)==0)


static void ble_connect_cb(uint8_t status, char *addr){                     //蓝牙连接状态回调函数
    if(status == DO_BLE_DEVICE_CONNECT){
        LOGI(TAG, "ble_connect: %s", addr);             
        
    }else if(status == DO_BLE_DEVICE_DISCONNECT){                           
        LOGI(TAG, "ble_disconnect: %s", addr);
        ble_start_advertise();                                              //蓝牙断开，开始广播
    }
}

                                                                           
static void ble_reve_cb(struct bt_conn *conn, const char *buf, u16_t len){     //蓝牙处理函数，可在此对接收到的蓝牙数据进行处理
    
    char ret_str[10]="";
    LOGE(TAG, "ble_reve_buf: %s", buf);

    if(CDM_CMP(buf,"on"))                                                       //当接收到“on”,拉高GPIO1点亮LED
    {
    bl_gpio_output_set(LED, 1);
    strcpy(ret_str,"on");
    }

    if(CDM_CMP(buf,"off"))                                                      //当接收到“off”,拉低GPIO1熄灭LED
    {
    bl_gpio_output_set(LED, 0);
    strcpy(ret_str,"off");
    }

    do_ble_notify(conn, ret_str, strlen(ret_str));                              //蓝牙回复状态
    memset(buf, 0, sizeof(buf));
   
}

void user_main(void){

    bl_gpio_enable_output(LED, 0, 0);                                           //初始化GPIO
    do_ble_init();                                                              //蓝牙初始化
    do_ble_set_reve_cb(ble_reve_cb);                                            //蓝牙接收回调    
    do_ble_set_connect_cb(ble_connect_cb);                                      //蓝牙连接回调
}