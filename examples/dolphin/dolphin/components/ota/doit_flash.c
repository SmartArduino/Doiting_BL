#include "doit_flash.h"

#include <FreeRTOS.h>
#include <task.h>

#include <easyflash.h>

#include "ulog.h"
#include "app_config.h"


#if LOG_FLASH_EN
#define TAG             "flash"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG             ""
#define LOGI(...)
#define LOGE(...)
#endif

#define LOG_TAG     TAG




static user_ssid_t _ssid_cfg;
/*
    获取用户路由配置结构体
 */
user_ssid_t * flash_get_user_ssid_config(void)
{
    return &_ssid_cfg;
}
/*
    从Flash读取路由配置信息
 */
void  flash_ssid_config_read(void)
{
    int len = sizeof(user_ssid_t);
    size_t size = len;
    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();
    ef_get_env_blob("wifi_config", (uint8_t *) pssid_cfg, len, &size);
}

/*
    路由配置信息写入Flash
 */
void  flash_ssid_config_write(void)
{
    int len = sizeof(user_ssid_t);
    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();
    ef_set_env_blob("wifi_config", (uint8_t *) pssid_cfg, len);
}

char falsh_is_area_empty(uint8_t *buff, int len)
{
    int i;
    for (i = 0; i < len; i++) {
        if (buff[i] != 0xff && buff[i] != 0x0) {
            return 0;
        }
    }
    return 1;
}

void flash_storage_init(void)
{
    LOGI(TAG, "flash init");
    flash_ssid_config_read();
    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();
    LOGI(TAG,"saved SSID: %s, passwd: %s", pssid_cfg->ssid, pssid_cfg->password);
}
