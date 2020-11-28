#ifndef _USER_LED_DRIVE_H_
#define _USER_LED_DRIVE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "stdint.h"

typedef struct {
	int16_t blue; //LSB
	int16_t green;
	int16_t red;
	int16_t white;
	int16_t yellow;
	uint8_t on;
} rgb_pixel_t;

typedef void (*doit_post_cb_t)(void);

#define IS_DEFAULT_CFG_MODE     0
#define IS_DOHOME_CFG_MODE      1
#define IS_SMOOTH_CFG_MODE      2
#define IS_AMBILIGHT_CFG_MODE   3
#define IS_FACTORY_TEST_MODE    4

int update_config_upload();
int get_brightness(int r, int g, int b, int w);

char get_led_cfg_mode();
void set_light_work_mode(char mode);
void init_led_cfg_mode();

char is_color_zero(rgb_pixel_t color);

void led_load_saved_color();
void led_load_saved_color2();

void set_led_smoothing(rgb_pixel_t rgb);

void send_light_data(int r, int g, int b, int w, int y,int t);

int send_light_onoff(char on);
void led_rgb_set_off();

void start_led_change(rgb_pixel_t rgb, int t);

void send_light_data_pwm(rgb_pixel_t rgb);
void send_light_data_pwm_off(rgb_pixel_t rgb, char save);
void send_light_data_pwm_map(rgb_pixel_t rgb, char save);

void dohome_reg_delay_post_cb(doit_post_cb_t user_delay_post_cb);
void dohome_reg_post_cb(doit_post_cb_t user_post_cb);

int delay_update_config_upload(void);

void light_init();


#ifdef __cplusplus
}
#endif

#endif
