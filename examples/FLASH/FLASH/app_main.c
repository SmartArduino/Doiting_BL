#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <easyflash.h>

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

bool value=false;

typedef struct {
	char ssid[64];
	char password[64];
} user_ssid_t;

user_ssid_t wifi_info;
user_ssid_t wifi_read;

void user_main(void){
    strcpy((char *)&wifi_info.ssid, "Doit");
    strcpy((char *)&wifi_info.password, "doit3305");
    int len = sizeof(user_ssid_t);
    size_t size = len;
    ef_set_env_blob("wifi_config", &wifi_info, len);
    LOGI(TAG,"saved SSID: %s, passwd: %s", wifi_info.ssid, wifi_info.password);

    ef_get_env_blob("wifi_config", &wifi_read, len, &size);
    LOGE(TAG,"read SSID: %s, passwd: %s", wifi_read.ssid, wifi_read.password);


}