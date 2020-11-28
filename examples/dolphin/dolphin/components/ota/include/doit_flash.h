#ifndef _DOIT_FLASH_H_
#define _DOIT_FLASH_H_

#include <string.h>
#include <stdint.h>

#include "app_config.h"


typedef struct {
	char ssid[SSID_SSID_LEN];
	char password[SSID_PASS_LEN];
} user_ssid_t;


typedef void (*manytimes_restart_cb_t)(uint8_t rst_cnt);
typedef void (*not_manytimes_cb_t)(void);



user_ssid_t *flash_get_user_ssid_config(void);


char falsh_is_area_empty(uint8_t *buff, int len);
void flash_ssid_config_read(void);
void flash_ssid_config_write(void);
void flash_storage_init(void);
void flash_reg_manytimes_restart_cb(not_manytimes_cb_t user_not_manytimes_cb,manytimes_restart_cb_t user_manytimes_restart_cb);

#endif

