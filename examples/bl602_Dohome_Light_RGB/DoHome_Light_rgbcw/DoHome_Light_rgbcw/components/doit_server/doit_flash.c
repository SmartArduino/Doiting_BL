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


#define FLASH_APP_BASE                          0xF0000
#define SPI_FLASH_PARA_BAK_SECETOR_INDEX        FLASH_APP_BASE + 0x0000
#define SPI_FLASH_SSID_INFO_BAK_SECTOR_INDEX    FLASH_APP_BASE + 0x0200
#define SPI_FLASH_PARA_SECETOR_INDEX            FLASH_APP_BASE + 0x0400//30
#define SPI_FLASH_SSID_INFO_SECTOR_INDEX        FLASH_APP_BASE + 0x0600

static char need_backup = 0;

static user_config_t _cfg = {.timezone_offset = 19};
static user_config_t _cfg_bak = {.timezone_offset = 19};
static user_ssid_t _ssid_cfg;
static user_ssid_t _ssid_cfg_bak;

static char reset_reason = RESTART_REASON_RESET_NULL;


// static tls_os_timer_t *restartCountCheck_Handle;
static manytimes_restart_cb_t manytimes_restart_cb;
static not_manytimes_cb_t not_manytimes_cb;

/*
    获取用户配置结构体
 */
user_config_t * flash_get_user_config(void)
{
    return &_cfg;
}

/*
    获取用户路由配置结构体
 */
user_ssid_t * flash_get_user_ssid_config(void)
{
    return &_ssid_cfg;
}

/*
    获取用户配置备份结构体
 */
user_config_t * flash_get_user_config_bak(void)
{
    return &_cfg_bak;
}

/*
    获取用户路由配置备份结构体
 */
user_ssid_t * flash_get_user_ssid_config_bak(void)
{
    return &_ssid_cfg_bak;
}

/*
    获取是否需要备份
 */
char flash_should_backup(void)
{
    return need_backup;
}

/*
    取消备份
 */
void flash_disable_backup(void)
{
    need_backup = 0;
}

/*
    从Flash读取数据
 */
static void flash_read_data(uint8_t *buff, int len, int address)
{
    size_t size = len;
    if (address == SPI_FLASH_PARA_SECETOR_INDEX) {
        ef_get_env_blob("user_config", buff, len, &size);
    }else if (address == SPI_FLASH_PARA_BAK_SECETOR_INDEX) {
        ef_get_env_blob("user_config_bak", buff, len, &size);
    }else if (address == SPI_FLASH_SSID_INFO_SECTOR_INDEX) {
        ef_get_env_blob("wifi_config", buff, len, &size);
    }
    else if (address == SPI_FLASH_SSID_INFO_BAK_SECTOR_INDEX) {
        ef_get_env_blob("wifi_config_bak", buff, len, &size);
    }
}

/*
    写入数据到Flash
 */
static void flash_write_data(uint8_t *buff, int len, int address)
{
    if (address == SPI_FLASH_PARA_SECETOR_INDEX) {
        ef_set_env_blob("user_config", buff, len);
    }else if (address == SPI_FLASH_PARA_BAK_SECETOR_INDEX) {
        ef_set_env_blob("user_config_bak", buff, len);
    }else if (address == SPI_FLASH_SSID_INFO_SECTOR_INDEX) {
        ef_set_env_blob("wifi_config", buff, len);
    }
    else if (address == SPI_FLASH_SSID_INFO_BAK_SECTOR_INDEX) {
        ef_set_env_blob("wifi_config_bak", buff, len);
    }
}

/*
    从Flash读取用户配置信息
 */
void flash_user_config_read(void)
{
    int len = sizeof(user_config_t);
    user_config_t *pcfg = flash_get_user_config();
    flash_read_data((uint8_t *)pcfg, len, SPI_FLASH_PARA_SECETOR_INDEX);
}

/*
    用户配置写入Flash
 */
void flash_user_config_write(void)
{
    LOGI(TAG, "flash_user_config_write");
    int len = sizeof(user_config_t);
    user_config_t *pcfg = flash_get_user_config();
    flash_write_data((uint8_t *) pcfg, len, SPI_FLASH_PARA_SECETOR_INDEX);
    need_backup = 1;
}

/*
    从Flash读取路由配置信息
 */
void  flash_ssid_config_read(void)
{
    int len = sizeof(user_ssid_t);
    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();
    flash_read_data((uint8_t *)pssid_cfg, len, SPI_FLASH_SSID_INFO_SECTOR_INDEX);
}

/*
    路由配置信息写入Flash
 */
void  flash_ssid_config_write(void)
{
    int len = sizeof(user_ssid_t);
    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();
    flash_write_data((uint8_t *) pssid_cfg, len, SPI_FLASH_SSID_INFO_SECTOR_INDEX);
    need_backup = 1;
}

/*
    路由配置信息备份写入FLASH
 */
void  flash_ssid_config_bak_write(void)
{
    user_ssid_t *pssid_cfg_bak = flash_get_user_ssid_config_bak();
    int len = sizeof(user_ssid_t);
    flash_write_data((uint8_t *) pssid_cfg_bak, len, SPI_FLASH_SSID_INFO_BAK_SECTOR_INDEX);
}

/*
    从Flash读取用户数据备份和路由信息备份
 */
static void read_all_backup_data(void)
{
    LOGI(TAG, "Read all backup data");
    user_ssid_t *pssid_cfg_bak = flash_get_user_ssid_config_bak();
    user_config_t *pcfg_bak = flash_get_user_config_bak();
    int len = sizeof(user_config_t);
    flash_read_data((uint8_t *)pcfg_bak, len, SPI_FLASH_PARA_BAK_SECETOR_INDEX);

    len = sizeof(user_ssid_t);
    flash_read_data((uint8_t *)pssid_cfg_bak, len, SPI_FLASH_SSID_INFO_BAK_SECTOR_INDEX);
}

/*
    同步备份用户数据
 */
void  flash_user_config_to_bak_write(void)
{
    LOGI(TAG, "flash_user_config_to_bak_write");

    user_config_t *pcfg = flash_get_user_config();
    user_config_t *pcfg_bak = flash_get_user_config_bak();

    memcpy((void *)pcfg_bak, (void *)pcfg, sizeof(user_config_t));

    int len = sizeof(user_config_t);
    flash_write_data((uint8_t *) pcfg_bak, len, SPI_FLASH_PARA_BAK_SECETOR_INDEX);
}

/*
    同步备份路由配置信息
 */
void  flash_ssid_config_to_bak_write(void)
{
    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();
    user_ssid_t *pssid_cfg_bak = flash_get_user_ssid_config_bak();

    LOGI(TAG, "size:%d :%d", sizeof(user_config_t), sizeof(user_ssid_t));
    memcpy((void *)pssid_cfg_bak, (void *)pssid_cfg, sizeof(user_ssid_t));
    flash_ssid_config_bak_write();
}

/*
    同步备份用户数据和路由配置
 */
void flash_updeta_all_backup(void)
{
    LOGI(TAG, "flash_updeta_all_backup here");
    flash_ssid_config_to_bak_write();     ////////////////// backup WIFI data
    flash_user_config_to_bak_write();      ////////////////// backup led data
}


/*
    重置所有用户数据，恢复出厂配置
 */
void flash_reset_user_config(void)
{
    LOGI(TAG, "flash_reset_user_config");

    user_config_t *pcfg = flash_get_user_config();
    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();
 
    pssid_cfg->reset_count = 0;
    pcfg->timezone_offset = 19;
    pcfg->remote_ctrl = 0;//远程

    memset(pssid_cfg->ssid, 0, SSID_SSID_LEN);
    memset(pssid_cfg->password, 0, SSID_PASS_LEN);
    memset(pcfg->saved_timers, 0xff, (sizeof(saved_timer_t) * TIMER_NUM));   // erase timer LOGI
    pcfg->restart_loc = RESTART_REASON_RESET_DEV;

    flash_user_config_write();
    flash_ssid_config_write();
    flash_updeta_all_backup();
}

/*
    从Flash中读取重启次数
 */
char flash_get_reset_count(void)
{
    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();
    if (pssid_cfg->reset_count != 0xff) {
        // LOGI(TAG, "user saved reset_count:%d", pssid_cfg->reset_count);
        return pssid_cfg->reset_count;
    }
    user_ssid_t *pssid_cfg_bak = flash_get_user_ssid_config_bak();
    if (pssid_cfg_bak->reset_count != 0xff) {
        pssid_cfg->reset_count = pssid_cfg_bak->reset_count;
        flash_ssid_config_write();
        LOGI(TAG, "WARNING:: used backup reset_count:%d", pssid_cfg_bak->reset_count);
        return pssid_cfg_bak->reset_count;
    }
    pssid_cfg->reset_count = 0;
    flash_reset_rst_count();
    return pssid_cfg->reset_count;
}

/*
    写入重启次数到flash(仅备份)
 */
void flash_set_reset_count_bak(uint8_t rst_count)
{
    LOGI(TAG, "set_reset_count:%d", rst_count);
    user_ssid_t *pssid_cfg_bak = flash_get_user_ssid_config_bak();
    if (rst_count == 0xff) {
        LOGE(TAG, "ALERT:: error reset count:%02x", rst_count);
        return;
    }
    if (rst_count == pssid_cfg_bak->reset_count) {
        LOGI(TAG, "WARNING:: rst_count == pssid_cfg_bak->reset_count");
        return;
    }
    pssid_cfg_bak->reset_count = rst_count;
    int len = sizeof(user_ssid_t);
    flash_write_data((uint8_t *) pssid_cfg_bak, len, SPI_FLASH_SSID_INFO_BAK_SECTOR_INDEX);
    // LOGI(TAG, "backup reset count:%d", rst_count);
}

/*
    重置重启次数
 */
void flash_reset_rst_count(void)
{
    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();
    uint8_t rst_count = flash_get_reset_count();
    if (rst_count != 0) {
        pssid_cfg->reset_count = 0;
        flash_ssid_config_write();
        // LOGI(TAG, "reset_count = 0");
        flash_set_reset_count_bak(pssid_cfg->reset_count);
    }
}

/*
    写入重启次数加1
 */
void flash_write_reset_count(void)
{
    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();
    uint8_t rst_count = flash_get_reset_count();

    pssid_cfg->reset_count = rst_count + 1;
    if(pssid_cfg->reset_count > 20){
        pssid_cfg->reset_count = 20;
    }
    // LOGI(TAG, "write reset count %d", pssid_cfg->reset_count);

    flash_ssid_config_write();
    flash_set_reset_count_bak(pssid_cfg->reset_count);
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

// 直接擦除
void restart_count_check(void *arg){
    uint8_t restart_count = 0;
    static uint8_t time = 0;
    static uint8_t timeout = 10;

    vTaskDelay(10 / portTICK_RATE_MS);
    while(1){
        time++;
        if (time == 1) {
            restart_count = flash_get_reset_count();
            LOGI(TAG, "restart_count: %d",restart_count);
            if (restart_count >= RESTART_TRIGGER_COUNT -1) {
                flash_write_reset_count();
                if(manytimes_restart_cb != NULL){
                    manytimes_restart_cb(restart_count);
                }
            }else{
                flash_write_reset_count();
                if(not_manytimes_cb != NULL){
                    not_manytimes_cb();
                }
            }
        } else if (time > timeout) {
            flash_reset_rst_count();
            break;
        }
        vTaskDelay(1000 / portTICK_RATE_MS);
    }
    vTaskDelete(NULL);
}

//有超时机制
// void restart_count_check(void *arg){
//     uint8_t restart_count = 0;
//     static uint8_t time = 0;
//     static uint8_t timeout = 10;

//     vTaskDelay(10 / portTICK_RATE_MS);
//     while(1){
//         time++;
//         if (time == 1) {
//             restart_count = flash_get_reset_count();
//             LOGI(TAG, "restart_count: %d",restart_count);
//             if (restart_count >= RESTART_TRIGGER_COUNT -1) {
//                 if(manytimes_restart_cb != NULL){
//                     manytimes_restart_cb();
//                 }
//                 timeout = 20;
//             }else{
//                 flash_write_reset_count();
//                 if(not_manytimes_cb != NULL){
//                     not_manytimes_cb();
//                 }
//             }
//         } else if (time > timeout) {
//             flash_reset_rst_count();
//             break;
//         }
//         vTaskDelay(1000 / portTICK_RATE_MS);

//     }
//     vTaskDelete(NULL);
// }

#define    RST_CHECK_TASK_PRI       5        
#define    RST_CHECK_TASK_SIZE      512
void flash_reg_manytimes_restart_cb(not_manytimes_cb_t user_not_manytimes_cb, manytimes_restart_cb_t user_manytimes_restart_cb){
    manytimes_restart_cb = user_manytimes_restart_cb;
    not_manytimes_cb = user_not_manytimes_cb;

    xTaskCreate(restart_count_check, "rst_check_task", RST_CHECK_TASK_SIZE, NULL, RST_CHECK_TASK_PRI, NULL);
}

char flash_get_reset_reason(void){
    return reset_reason;
}

/*
    初始化Flash
 */
void flash_storage_init(void)
{
    LOGI(TAG, "flash init");

    flash_user_config_read();
    flash_ssid_config_read();
    read_all_backup_data();

    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();
    user_ssid_t *pssid_cfg_bak = flash_get_user_ssid_config_bak();
    LOGI(TAG,"saved SSID: %s, passwd: %s", pssid_cfg->ssid, pssid_cfg->password);
    LOGI(TAG,"saved bak SSID: %s, passwd: %s", pssid_cfg_bak->ssid, pssid_cfg_bak->password);

    user_config_t *pcfg = flash_get_user_config();

    reset_reason = pcfg->restart_loc;
    LOGI(TAG,"flash_get_reset_reason: %d", reset_reason);
    pcfg->restart_loc = RESTART_REASON_RESET_NULL;
    flash_user_config_write();
}
