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
#include "doit_wifi.h"


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



void user_main(void){

    wifi_init(wifi_event_handler);
    wifi_setup_sta();


}