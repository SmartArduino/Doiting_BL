

#include <FreeRTOS.h>
#include <task.h>
#include <hal_timer.h>

#include "doit_wifi.h"
#include "doit_flash.h"
#include "doit_device_info.h"
#include "doit_udp_control.h"
#include "doit_tcp_config.h"
#include "doit_sntp.h"
#include "doit_timer.h"
#include "doit_ota.h"
#include "doit_tcp_client.h"

#include "product.h"

#include "ulog.h"


#if LOG_MIAN_EN
#define TAG            "app_main"
#define LOGI           LOG_I
#define LOGE           LOG_E
#else
#define TAG            ""
#define LOGI(...)
#define LOGE(...)
#endif


void wifi_event_handler(wifi_event_indicate_t event){
    switch (event)
    {
        case WIFI_EVENT_CONNECT:
            LOGI(TAG, "wifi_connect");
            doit_udp_control_init();
            doit_tcp_client_init();
            doit_ota_server_init();
            doit_tcp_server_init();
            break;
        case WIFI_EVENT_DISCONNECT:
            LOGI(TAG, "wifi_disconnect");
            break;
        default:
            LOGI(TAG, "wifi_event: %d",event);
            break;
    }
}

//没有多次重启触发的回调
static void not_manytimes_res_cb(void){

    LOGI(TAG, "not_manytimes_res_cb");
    wifi_setup_sta();
}

//多次重启触发的回调
static void manytimes_restart_cb(uint8_t count){

    LOGI(TAG, "manytimes_restart_count: %d", count);
    wifi_setup_ap();
    start_tcp_config();
}

void main_task(void *arg){

    doit_device_info_init();
    flash_storage_init(); 
    flash_reg_manytimes_restart_cb(not_manytimes_res_cb, manytimes_restart_cb);

    product_init();

    wifi_init(wifi_event_handler);

    doit_sntp_init();
    doit_timer_init();

    while(1){
        static int count = 0;
        vTaskDelay(1000 / portTICK_RATE_MS);
        if(count++>10){
            count = 0;
            int run_time_ms = hal_timer_now_ms();
            long timestamp = time_get_curr_sec();
            size_t heap_size = xPortGetFreeHeapSize();
            LOGI(TAG, "run_time: %d    os_heap: %d    timestamp: %lu", run_time_ms/1000, heap_size, timestamp-(3600*8));
        }
    }
    vTaskDelete(NULL);
}

void user_main(void){
    LOGI(TAG, "user_main_start");

    if (xTaskCreate(main_task, "main_task", 512, NULL, 6, NULL) == pdPASS) {
        LOGI(TAG, "xTaskCreate main_task successfully");
    } else {
        LOGI(TAG, "xTaskCreate(main_task) failed");
    }

}