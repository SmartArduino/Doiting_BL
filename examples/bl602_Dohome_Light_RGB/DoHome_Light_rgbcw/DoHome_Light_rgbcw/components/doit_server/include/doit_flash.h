#ifndef _DOIT_FLASH_H_
#define _DOIT_FLASH_H_

#include <string.h>
#include <stdint.h>

#include "app_config.h"

typedef struct {
	char valid;
	char on_off;
	char repeat;
	char reserved2;
	unsigned long ts;
	unsigned long end_tick;
} saved_timer_t;


typedef struct {
	
	char restart_loc;		// for debugging

	saved_timer_t saved_timers[TIMER_NUM];		// saved timer info

	char remote_ctrl;
	char timezone_offset;

} user_config_t;

typedef struct {
	char ssid[SSID_SSID_LEN];
	char password[SSID_PASS_LEN];
	char reset_count;
} user_ssid_t;


typedef void (*manytimes_restart_cb_t)(uint8_t rst_cnt);
typedef void (*not_manytimes_cb_t)(void);

user_config_t *flash_get_user_config(void);
user_config_t *flash_get_user_config_bak(void);

user_ssid_t *flash_get_user_ssid_config(void);
user_ssid_t *flash_get_user_ssid_config_bak(void);

char falsh_is_area_empty(uint8_t *buff, int len);

char flash_should_backup(void);
void flash_disable_backup(void);

void flash_user_config_read(void);
void flash_user_config_write(void);

void flash_ssid_config_read(void);
void flash_ssid_config_write(void);
void flash_ssid_config_bak_write(void);

void flash_user_config_to_bak_write(void);
void flash_ssid_config_to_bak_write(void);
void flash_updeta_all_backup(void);

void flash_reset_user_config(void);

char flash_get_reset_count(void);
void flash_set_reset_count_bak(uint8_t rst_count);

void flash_reset_rst_count(void);
void flash_write_reset_count(void);

char flash_get_reset_reason(void);


void flash_storage_init(void);

void flash_reg_manytimes_restart_cb(not_manytimes_cb_t user_not_manytimes_cb,manytimes_restart_cb_t user_manytimes_restart_cb);

#endif

