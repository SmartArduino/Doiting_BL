#ifndef _USER_LED_EFFECT_H_
#define _USER_LED_EFFECT_H_

#ifdef __cplusplus
extern "C" {
#endif
	
#include "doit_light_driver.h"

void led_cfg_def_effect();
void led_cfg_homekit_effect();
void led_cfg_dohome_effect();
void led_cfg_dohome_effect2();
void led_cfg_dohome_effect3();
void set_led_cfg_dohome_effect_cnt(char cnt);

#ifdef __cplusplus
}
#endif

#endif
