#include "doit_wifi.h"

#include <FreeRTOS.h>
#include <task.h>

#include <aos/yloop.h>
#include <wifi_mgmr_ext.h>
#include <dhcp_server.h>

#include <bl_timer.h>
#include <bl_sys_time.h>
#include <hal_wifi.h>

#include "ulog.h"
#include "app_config.h"
#include "doit_flash.h"
#include "doit_ota.h"

#if LOG_WIFI_EN
#define TAG            "wifi"
#define LOGI           LOG_I
#define LOGE           LOG_E
#else
#define TAG            ""
#define LOGI(...)
#define LOGE(...)
#endif

static char static_wifi_connect_status = 0;
static wifi_event_cb_t static_wifi_cb = NULL;


static void event_cb_wifi_event(input_event_t *event, void *private_data)
{
    switch (event->code) {
        case CODE_WIFI_ON_DISCONNECT:
        {
            LOGI(TAG, "wifi disconnect");
            if(static_wifi_connect_status != 0){
                static_wifi_connect_status = 0;
                if(static_wifi_cb != NULL){
                    static_wifi_cb(WIFI_EVENT_DISCONNECT);
                }
            }
        }
        break;
        case CODE_WIFI_ON_CONNECTED:
        {
            LOGI(TAG, "wifi connect");
        }
        break;
        case CODE_WIFI_ON_GOT_IP:
        {
            LOGI(TAG, "wifi get ip");
            if(static_wifi_connect_status != 1){
                static_wifi_connect_status = 1;
                if(static_wifi_cb != NULL){
                    static_wifi_cb(WIFI_EVENT_CONNECT);
                }
            }
        }
        break;
    }
}

static void cmd_stack_wifi(char *buf, int len, int argc, char **argv)
{
    /*wifi fw stack and thread stuff*/
    static uint8_t stack_wifi_init  = 0;


    if (1 == stack_wifi_init) {
        puts("Wi-Fi Stack Started already!!!\r\n");
        return;
    }
    stack_wifi_init = 1;

    printf("Start Wi-Fi fw @%lums\r\n", bl_timer_now_us()/1000);
    hal_wifi_start_firmware_task();
    /*Trigger to start Wi-Fi*/
    printf("Start Wi-Fi fw is Done @%lums\r\n", bl_timer_now_us()/1000);
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);

}

char wifi_get_connect_status(void){
    return static_wifi_connect_status;
}
/*
    建立STA连接
 */
int wifi_setup_sta(void){

    LOGI(TAG, "wifi_setup_sta");
    user_ssid_t *wifi_info = flash_get_user_ssid_config();
    //user_ssid_t wifi_info;
    //strcpy(wifi_info.ssid, "Doit");
    //strcpy(wifi_info.password, "doit3305");
    wifi_interface_t wifi_interface = wifi_mgmr_sta_enable();
    wifi_mgmr_sta_connect(wifi_interface, wifi_info->ssid, wifi_info->password, NULL, NULL, 0, 0);
    return 1;
    
}
void wifi_event_handler(wifi_event_indicate_t event){
    switch (event)
    {
        case WIFI_EVENT_CONNECT:
            LOGE(TAG, "wifi_connect");
            doit_ota_server_init();
            break;
        case WIFI_EVENT_DISCONNECT:
            LOGE(TAG, "wifi_disconnect");
            break;
        default:
            LOGE(TAG, "wifi_event: %d",event);
            break;
    }
}
/*
    wifi初始化
 */
void wifi_init(wifi_event_cb_t user_wifi_event_cb) {
    LOGI(TAG, "wifi init");
    cmd_stack_wifi(NULL, 0, 0, NULL);
    static_wifi_cb = user_wifi_event_cb;
    void wifi_set_event_cb(void (*user_wifi_cb)(input_event_t *event, void *private_data));
    wifi_set_event_cb(event_cb_wifi_event);
}
