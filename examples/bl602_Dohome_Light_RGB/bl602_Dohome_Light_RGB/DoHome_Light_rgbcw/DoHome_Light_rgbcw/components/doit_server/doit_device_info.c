#include "doit_device_info.h"

#include "mbedtls/md5.h"
#include "wifi_mgmr_ext.h"

#include "ulog.h"
#include "app_config.h"

#include "doit_utils.h"

#if LOG_DEVICE_EN
#define TAG             "device_info"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif

#define LOG_TAG     TAG

char dev_id[64];
char dev_key[33];
uint8_t station_ip[4];
uint8_t station_mac[6];

static char gen_key()
{
    char temp[17] = {0};
    char key[70] = {0};

    sprintf(key, "%sdoitxf", dev_id);

    mbedtls_md5((const unsigned char *)key, strlen(key), (unsigned char *)temp);

    memset(dev_key, 0, 33);

    char hex[3] = {0};
    int i;
    for (i = 0; i < 16; i++) {  // 32 bits MD5
        memset(hex, 0, 3);
        sprintf(hex, "%02x", temp[i]);
        doit_strcat(dev_key, hex);
    }

    LOGI(TAG, "key md5: %s", dev_key);
    return 1;
}


static void sta_mac_init(void)
{
    wifi_mgmr_sta_mac_get(station_mac);
    LOGI(TAG, "device_mac: %02x%02x%02x%02x%02x%02x",
                        station_mac[0],station_mac[1],station_mac[2],station_mac[3],station_mac[4],station_mac[5]);
}

/*
    获取广播地址
 */
uint32_t device_get_broadcast_ip()
{
    uint32_t ip32 = 0;
    uint32_t gw32 = 0;
    uint32_t mask32 = 0;

    wifi_mgmr_sta_ip_get(&ip32, &gw32, &mask32);
    uint32_t netip = (uint32_t)ip32 & (uint32_t)mask32;
    uint32_t bsip = (uint32_t)netip | ~(uint32_t)mask32;

    uint8_t ip[4];
    memcpy(ip, &bsip, 4);
    LOGI(TAG, "broadcast_ip: %d.%d.%d.%d", ip[0], ip[1], ip[2], ip[3]);
    return bsip;
}

void device_get_sta_ip(uint8_t *ip){

    uint32_t ip32 = 0;
    uint32_t gw32 = 0;
    uint32_t mask32 = 0;

    wifi_mgmr_sta_ip_get(&ip32, &gw32, &mask32);
    memcpy(ip, &ip32, 4);
}

void device_get_sta_mac(uint8_t *mac){
    memcpy(mac, station_mac, 6);
}

void device_get_dev_id(char *id)
{
    memcpy(id, dev_id, 64);
}

void device_get_dev_key(char *key)
{
    memcpy(key, dev_key, 33);
}

static void dev_id_init(void)
{
    char tmp[3] = {0};
    int i;
    for (i = 0; i < 6; i++) {
        sprintf(tmp, "%02x", station_mac[i]);
        doit_strcat(dev_id, tmp);
        memset(tmp, 0, 3);
    }
    doit_strcat(dev_id, HARDWARE_TYPE);
    doit_strcat(dev_id, CHIP_TYPE);
    LOGI(TAG, "dev_id: %s", dev_id);
}

void doit_device_info_init(void){

    sta_mac_init();
    dev_id_init();
    gen_key();
}
