#ifndef _DOIT_DOHOME_PROCED_H_
#define _DOIT_DOHOME_PROCED_H_

#include "cJSON.h"

int system_reset_json(char *ret);

int get_device_info(char *info);

int get_time_info(char *info);
int set_time_to_json(cJSON *root);

int setup_powerup_timer_to_json(cJSON *root);
int setup_shutdown_timer_to_json(cJSON *root);
int modify_timer_to_json(cJSON *root);

int delay_shutdown_to_json(cJSON *root);
int cancel_timer_to_json(cJSON *root);

int get_ssid_info(char *info);
int falsh_save_ssid_to_json(cJSON *root);

int get_version_info(char *info);

int reset_ap(void);

char *get_timer_info(char *additional, char *targetBuf);

void timer_get_delay_shutdown_info(char *buff);

int set_timezone_to_json(cJSON *root);

int ota_start_to_json(cJSON *root);

int reset_config_to_json(cJSON *root);
int check_connect_router(char *ret_buf);

void product_get_ext_info(char *ret_buf);

#endif