#ifndef _APP_PROTOCOL_H_
#define _APP_PROTOCOL_H_

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include "cJSON.h"

#include "doit_light_driver.h"


typedef enum {
	PRODUCT_CONTROL_DOHOME = 0,		
}product_control_t;

typedef enum {

	PRODUCT_CMD_SET_STATUS = 6,						// 6	调光	recv {“cmd”:6,“r”:0,“g”:1,“b”:2,“w”:3,“m”:4,“on”:1,“temp”:1}
	PRODUCT_CMD_GET_STATUS = 25,					// 25	查询当前状态
	PRODUCT_CMD_SET_STATIC_MODE = 7,				// 7	设置静态模式灯光   recv {“cmd”:7,“index”:0,“freq”:22}
}product_cmd_t;

typedef struct {
	rgb_pixel_t color;
	char led_effect_set;
	char led_effect_type;
	char control_way;
} product_mode_t;

void product_set_control_way(product_control_t way);
product_control_t product_get_control_way(void);

void product_read_status(product_mode_t *status);
void product_write_status(product_mode_t status);

int product_doit_set_status(cJSON *root);
void product_doit_get_status_str(char *data_str);
void product_status_factory(product_mode_t *status);

int product_run_doit_cmd(int cmd, cJSON *root, char* ret_buf);

product_mode_t* product_get_status(void);
void product_save_status(void);

bool product_dohomoe_update_status(void);

void product_init(void);

#endif