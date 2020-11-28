#include "doit_wifi.h"

#include <FreeRTOS.h>
#include <task.h>

#include <aos/yloop.h>
#include <wifi_mgmr_ext.h>
#include <dhcp_server.h>

#include "doit_flash.h"
#include "doit_device_info.h"

#include "ulog.h"
#include "app_config.h"


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

static void get_default_ssid(char *pssid)
{
    uint8_t sofap_mac_bin[6] = {0};

    device_get_sta_mac(sofap_mac_bin);
    sprintf(pssid, "%s%02x%02x", DEF_SSID_PREFIX, sofap_mac_bin[4], sofap_mac_bin[5]);
    LOGI(TAG, "AP_SSID: %s", pssid);
}


char wifi_get_connect_status(void){
    return static_wifi_connect_status;
}

int wifi_setup_ap(void)
{
    LOGI(TAG, "wifi_setup_ap");
    // uint8_t rst_count = flash_get_reset_count();
    // uint8_t softap_channels[5] = {1, 2, 9, 11, 5};
    // int channel = softap_channels[rst_count % 5];

    char def_ap_ssid[33] = {"BL602_AP"};
    memset(def_ap_ssid, 0x00, sizeof(def_ap_ssid));
    get_default_ssid(def_ap_ssid);

    wifi_interface_t wifi_interface_ap = wifi_mgmr_ap_enable();
    dhcpd_set_server_gw("192.168.4.1");
    wifi_mgmr_ap_start(wifi_interface_ap, def_ap_ssid, 0, NULL, 1);
    return 1;
}


int wifi_get_config(user_ssid_t *cfg){

    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();

    char ssid_len = strlen((char *)pssid_cfg->ssid);
    if(ssid_len < 1){
        user_ssid_t *pssid_cfg_bak = flash_get_user_ssid_config_bak();
        ssid_len = strlen((char *)pssid_cfg_bak->ssid);
        if(ssid_len > 0){
            memcpy(pssid_cfg, pssid_cfg_bak, sizeof(user_ssid_t));
            flash_ssid_config_write();
        }else{
            return 0;
        }
    }
    memcpy(cfg, pssid_cfg, sizeof(user_ssid_t));
    return 1;
}


/*
    建立STA连接
 */
int wifi_setup_sta(void){

    LOGI(TAG, "wifi_setup_sta");

    user_ssid_t wifi_info;
    int ret = wifi_get_config(&wifi_info);
    if(ret){
        wifi_interface_t wifi_interface = wifi_mgmr_sta_enable();
        wifi_mgmr_sta_connect(wifi_interface, (char *)wifi_info.ssid, (char *)wifi_info.password, NULL, NULL, 0, 0);
    }else{
        return 0;
        // strcpy((char *)&wifi_info.ssid, "Doit");
        // strcpy((char *)&wifi_info.password, "doit3305");
        // wifi_interface_t wifi_interface = wifi_mgmr_sta_enable();
        // wifi_mgmr_sta_connect(wifi_interface, (char *)wifi_info.ssid, (char *)wifi_info.password, NULL, NULL, 0, 0);
    }
    return 1;
}

/*
    wifi初始化
 */
void wifi_init(wifi_event_cb_t user_wifi_event_cb) {

    static_wifi_cb = user_wifi_event_cb;

    void wifi_set_event_cb(void (*user_wifi_cb)(input_event_t *event, void *private_data));
    wifi_set_event_cb(event_cb_wifi_event);
}