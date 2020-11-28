#include "app_config.h"
#include "doit_light_driver.h"
#include "doit_light_Ambilight.h"
#include "doit_flash.h"

#include <FreeRTOS.h>
#include <task.h>

#include "product.h"


#if LOG_LED_BOARD_EN
#define TAG             "led_drive"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define ERROR(...)
#endif


// #if defined(IS_STRIP) || defined(IS_STRIP_NO_IR)

// strip_mode_switch strip_mode = STRIP_MODE_SWITCH_RED_ON;

#define STRIP_STROBE_ON_INTERVAL		500
#define STRIP_STROBE_OFF_INTERVAL		500
#define LED_EFFECT_BRIGHT_STEP			1//亮度步长
#define LED_EFFECT_STEP					1//灯效每一次变化步长

#define MIN_LED_VALUE 					1

//灯光效果
uint8_t led_effect_flag = 0;		//1:频闪,2:单色渐变,3:多色渐变,4:红绿蓝跳变,5:七彩跳变,6:双色渐变
//上一个灯光效果
uint8_t pre_led_effect_stat = 0;
//灯光类型
uint8_t led_type_flag = STRIP_MODE_INIT_MODE;


//设置当前灯效模式
//0:取消所有灯效,1:频闪,2:单色渐变,3:多色渐变,4:红绿蓝跳变,5:七彩跳变,6:双色渐变
void set_led_effect_disenable(uint8_t en)
{
	product_mode_t *product_status = product_get_status();
	led_effect_flag = en;
	if (product_status->led_effect_set != led_effect_flag) {
		product_status->led_effect_set = led_effect_flag;
		product_save_status();
	}
}

//获取当前灯效模式
uint8_t get_led_effect_disenable(void)
{
	return led_effect_flag;
}

#if 0
//记录上一个灯效模式
void set_pre_led_effect_status(uint8_t en)
{
	product_mode_t *product_status = product_get_status();
	pre_led_effect_stat = en;
	if (product_status->pre_led_effect != pre_led_effect_stat) {
		product_status->pre_led_effect = pre_led_effect_stat;
		product_save_status();
	}
}


//获取上一个灯效模式
uint8_t get_pre_led_effect_status(void)
{
	return pre_led_effect_stat;
}
#endif

//设置灯效类型
void set_all_led_effect(uint8_t led_type)
{
	product_mode_t *product_status = product_get_status();
	led_type_flag = led_type;
	if (product_status->led_effect_type != led_type_flag) {
		product_status->led_effect_type = led_type_flag;
		product_save_status();
	}
}

/*
频闪效果
	00:七彩频闪 01:红绿蓝频闪 02:红色频闪 03:绿色频闪 04:蓝色频闪
*/
void rgb_color_flash(uint8_t led_effect_switch)
{
	rgb_pixel_t rgbw = {0, 0, 0, 0, 0, 0};
	//static uint8_t curr_rgb_r = 0, curr_rgb_g = 0,curr_rgb_b = 0;
	static uint8_t color_cnt = 0;
	//七彩频闪
	if (led_effect_switch == STRIP_MODE_SEVEN_STROBE) {
		color_cnt++;
		if (color_cnt >= 7) {
			color_cnt = 0;
		}
	}
	//红绿蓝频闪
	else if (led_effect_switch == STRIP_MODE_RGB_STROBE) {
		if (color_cnt == 0) {
			color_cnt = 1;
		}
		else if (color_cnt == 1) {
			color_cnt = 2;
		} else {
			color_cnt = 0;
		}
	}
	//红绿频闪
	else if (led_effect_switch == STRIP_MODE_RG_STROBE) {
		if (color_cnt == 0) {
			color_cnt = 1;
		} else {
			color_cnt = 0;
		}
	}
	//红蓝频闪
	else if (led_effect_switch == STRIP_MODE_RB_STROBE) {
		if (color_cnt == 0) {
			color_cnt = 2;
		} else {
			color_cnt = 0;
		}
	}
	//蓝绿频闪
	else if (led_effect_switch == STRIP_MODE_GB_STROBE) {
		if (color_cnt == 1) {
			color_cnt = 2;
		} else {
			color_cnt = 1;
		}
	}
	//红色频闪
	else if (led_effect_switch == STRIP_MODE_RED_STROBE) {
		color_cnt = 0;
	}
	//绿色频闪
	else if (led_effect_switch == STRIP_MODE_GREEN_STROBE) {
		color_cnt = 1;
	}
	//蓝色频闪
	else if (led_effect_switch == STRIP_MODE_BLUE_STROBE) {
		color_cnt = 2;
	}
	//白色频闪
	else if (led_effect_switch == STRIP_MODE_WHITE_STROBE) {
		color_cnt = 3;
	}
	//黄色频闪
	else if (led_effect_switch == STRIP_MODE_YELLOW_STROBE) {
		color_cnt = 5;
	}
	switch (color_cnt) {
	//红
	case 0: {
		rgbw.red = 255; rgbw.green = 0; rgbw.blue = 0; rgbw.white = 0; rgbw.on = 1;
		break;
	}
	//绿
	case 1: {
		rgbw.red = 0; rgbw.green = 255; rgbw.blue = 0; rgbw.white = 0; rgbw.on = 1;
		break;
	}
	//蓝
	case 2: {
		rgbw.red = 0; rgbw.green = 0; rgbw.blue = 255; rgbw.white = 0; rgbw.on = 1;
		break;
	}
	//白
	case 3: {
		rgbw.red = 255; rgbw.green = 255; rgbw.blue = 255; rgbw.white = 0; rgbw.on = 1;
		break;
	}
	//紫色
	case 4: {
		rgbw.red = 255; rgbw.green = 0; rgbw.blue = 255; rgbw.white = 0; rgbw.on = 1;
		break;
	}
	//黄色
	case 5: {
		rgbw.red = 255; rgbw.green = 255; rgbw.blue = 0; rgbw.white = 0; rgbw.on = 1;
		break;
	}
	//青色
	case 6: {
		rgbw.red = 0; rgbw.green = 255; rgbw.blue = 255; rgbw.white = 0; rgbw.on = 1;
		break;
	}
	default: {
		break;
	}
	}
	send_light_data_pwm_map(rgbw, 0);
}

/*
单色渐变效果
00:红色渐变 01:绿色渐变 02:蓝色渐变
*/
void singel_color_gradient_effect(uint8_t led_effect_switch)
{
	static uint8_t curr_rgb_r = 0, curr_rgb_g = 0, curr_rgb_b = 0;
	static bool curr_rgb_mode = false;
	static int brightness = 100;
	if (curr_rgb_mode) {
		brightness += LED_EFFECT_BRIGHT_STEP;
		if (brightness >= 100) {
			brightness = 100;
			curr_rgb_mode = false;
		}
	} else {
		brightness -= LED_EFFECT_BRIGHT_STEP;
		if (brightness <= 5) {
			brightness = 5;
			curr_rgb_mode = true;
		}
	}

	switch (led_effect_switch) {
	//红色渐变
	case STRIP_MODE_RED_GRADIENT: {
		curr_rgb_r = 255;
		curr_rgb_g = 0;
		curr_rgb_b = 0;
		break;
	}
	//绿色渐变
	case STRIP_MODE_GREEN_GRADIENT: {
		curr_rgb_r = 0;
		curr_rgb_g = 255;
		curr_rgb_b = 0;
		break;
	}
	//蓝色渐变
	case STRIP_MODE_BLUE_GRADIENT: {
		curr_rgb_r = 0;
		curr_rgb_g = 0;
		curr_rgb_b = 255;
		break;
	}
	//黄光渐变
	case STRIP_MODE_YELLOW_GRADIENT: {
		curr_rgb_r = 255;
		curr_rgb_g = 255;
		curr_rgb_b = 0;
		break;
	}
	//青色渐变
	case STRIP_MODE_CYAN_GRADIENT: {
		curr_rgb_r = 0;
		curr_rgb_g = 255;
		curr_rgb_b = 255;
		break;
	}
	//紫色渐变
	case STRIP_MODE_PURPLE_GRADIENT: {
		curr_rgb_r = 255;
		curr_rgb_g = 0;
		curr_rgb_b = 255;
		break;
	}
	//白色渐变
	case STRIP_MODE_WHITE_GRADIENT: {
		curr_rgb_r = 255;
		curr_rgb_g = 255;
		curr_rgb_b = 255;
		break;
	}
	default: {
		break;
	}
	}
	rgb_pixel_t rgbw = {0, 0, 0, 0, 0, 0};

	rgbw.on    = 1;
	rgbw.red   = (curr_rgb_r * brightness) / 100;
	rgbw.green = (curr_rgb_g * brightness) / 100;
	rgbw.blue  = (curr_rgb_b * brightness) / 100;
	send_light_data_pwm_map(rgbw, 0);
}

/*
双色渐变
*/
void double_color_gradient_effect(char led_effect_switch)
{
	static int curr_gradient_1 = 0, curr_gradient_2 = 0;
	static char curr_rgb_mode = 0;

	if (curr_rgb_mode == 0) {
		curr_gradient_1 += LED_EFFECT_STEP;
		curr_gradient_2 = 0;

		if (curr_gradient_1 >= 255) {
			curr_gradient_1 = 255;
			curr_gradient_2 = 0;
			curr_rgb_mode = 1;
		}
	}
	else if (curr_rgb_mode == 1)
	{
		curr_gradient_1 -= LED_EFFECT_STEP;
		curr_gradient_2 = 0;
		if (curr_gradient_1 <= 0) {
			curr_gradient_1 = 0;
			curr_gradient_2 = 0;
			curr_rgb_mode = 2;
		}
	}
	else if (curr_rgb_mode == 2) {
		curr_gradient_1 = 0;
		curr_gradient_2 += LED_EFFECT_STEP;
		if (curr_gradient_2 >= 255) {
			curr_gradient_1 = 0;
			curr_gradient_2 = 255;
			curr_rgb_mode = 3;
		}
	}
	else if (curr_rgb_mode == 3) {
		curr_gradient_1 = 0;
		curr_gradient_2 -= LED_EFFECT_STEP;
		if (curr_gradient_2 <= 5) {
			curr_gradient_1 = 0;
			curr_gradient_2 = 0;
			curr_rgb_mode = 0;
		}
	} else {
	}

	rgb_pixel_t rgbw = {0, 0, 0, 0, 0, 0};
	rgbw.on    = 1;
	//红绿渐变
	if (led_effect_switch == STRIP_MODE_RG_GRADIENT) {
		rgbw.red   = curr_gradient_1;
		rgbw.green = curr_gradient_2;
		rgbw.blue  = 0;
	}
	//红蓝渐变
	else if (led_effect_switch == STRIP_MODE_RB_GRADIENT) {
		rgbw.red   = curr_gradient_1;
		rgbw.green = 0;
		rgbw.blue  = curr_gradient_2;
	}
	//蓝绿渐变
	else if (led_effect_switch == STRIP_MODE_GB_GRADIENT) {
		rgbw.red   = 0;
		rgbw.green = curr_gradient_1;
		rgbw.blue  = curr_gradient_2;
	}
	send_light_data_pwm_map(rgbw, 0);
}

//多色渐变效果
void mult_color_gradient_effect(uint8_t led_effect_switch)
{
	static uint8_t curr_rgb_r = 0, curr_rgb_g = 0, curr_rgb_b = 0;
	static uint8_t curr_rgb_mode = 1;
	static uint8_t turn_cnt = 0;
	static uint8_t rgb_type = 0;
	static int brightness = 100;

	if (led_effect_switch != STRIP_MODE_SEVEN_GRADIENT && led_effect_switch != STRIP_MODE_RGB_GRADIENT) {
		return;
	}
	if (curr_rgb_mode) {
		brightness += LED_EFFECT_BRIGHT_STEP;
		if (brightness >= 100) {
			brightness = 100;
			curr_rgb_mode = 0;
			turn_cnt++;
		}
	} else {
		brightness -= LED_EFFECT_BRIGHT_STEP;
		if (brightness <= 5) {
			brightness = 5;
			curr_rgb_mode = 1;
			turn_cnt++;
		}
	}

	if (turn_cnt == 2) {
		turn_cnt = 0;
		rgb_type++;
		//红绿蓝渐变
		if (led_effect_switch == STRIP_MODE_RGB_GRADIENT) {
			if (rgb_type >= 3) {
				rgb_type = 0;
			}
		}
		//七彩渐变
		else if (led_effect_switch == STRIP_MODE_SEVEN_GRADIENT) {
			if (rgb_type >= 7) {
				rgb_type = 0;
			}
		}
	}
	switch (rgb_type) {
	//红色渐变
	case 0: {
		curr_rgb_r = 255;
		curr_rgb_g = 0;
		curr_rgb_b = 0;
		break;
	}
	//绿色渐变
	case 1: {
		curr_rgb_r = 0;
		curr_rgb_g = 255;
		curr_rgb_b = 0;
		break;
	}
	//蓝色渐变
	case 2: {
		curr_rgb_r = 0;
		curr_rgb_g = 0;
		curr_rgb_b = 255;
		break;
	}
	//黄光渐变
	case 3: {
		curr_rgb_r = 255;
		curr_rgb_g = 255;
		curr_rgb_b = 0;
		break;
	}
	//青色渐变
	case 4: {
		curr_rgb_r = 0;
		curr_rgb_g = 255;
		curr_rgb_b = 255;
		break;
	}
	//紫色渐变
	case 5: {
		curr_rgb_r = 255;
		curr_rgb_g = 0;
		curr_rgb_b = 255;
		break;
	}
	//白色渐变
	case 6: {
		curr_rgb_r = 255;
		curr_rgb_g = 255;
		curr_rgb_b = 255;
		break;
	}
	default: {
		break;
	}
	}

	rgb_pixel_t rgbw = {0, 0, 0, 0, 0, 0};
	rgbw.on    = 1;
	rgbw.red   = (curr_rgb_r * brightness) / 100;
	rgbw.green = (curr_rgb_g * brightness) / 100;
	rgbw.blue  = (curr_rgb_b * brightness) / 100;
	send_light_data_pwm_map(rgbw, 0);
}

/*
三色跳变效果
0x05:红绿蓝跳变
*/
void rgb_color_jump_effect(char led_effect_switch)
{
	static int curr_gradient_1 = 255, curr_gradient_2 = MIN_LED_VALUE, curr_gradient_3 = MIN_LED_VALUE;
	static uint8_t curr_rgb_mode = 0;
	//static uint8_t brightness = 100;
	//红--->绿
	if (curr_rgb_mode == 0) {
		curr_gradient_1 = 255;
		curr_gradient_2 = 0;
		curr_gradient_3 = 0;
		curr_rgb_mode++;
		// curr_gradient_1 -= LED_EFFECT_STEP;
		// curr_gradient_2 += LED_EFFECT_STEP;
		// //最小值为0的话会导致不平滑
		// curr_gradient_3 = MIN_LED_VALUE;

		// if (curr_gradient_1 <= MIN_LED_VALUE || curr_gradient_2 >= 255) {
		// 	curr_gradient_1 = MIN_LED_VALUE;
		// 	curr_gradient_2 = 255;
		// 	curr_gradient_3 = MIN_LED_VALUE;
		// 	curr_rgb_mode = 1;
		// }
		
	}
	//绿--->蓝
	else if (curr_rgb_mode == 1)
	{
		curr_gradient_1 = 0;
		curr_gradient_2 = 255;
		curr_gradient_3 = 0;
		curr_rgb_mode++;

		// curr_gradient_1 = MIN_LED_VALUE;
		// curr_gradient_2 -= LED_EFFECT_STEP;
		// curr_gradient_3 += LED_EFFECT_STEP;
		// if (curr_gradient_2 <= MIN_LED_VALUE || curr_gradient_3 >= 255) {
		// 	curr_gradient_1 = MIN_LED_VALUE;
		// 	curr_gradient_2 = MIN_LED_VALUE;
		// 	curr_gradient_3 = 255;
		// 	curr_rgb_mode = 2;
		// }
	}
	//蓝--->红
	else if (curr_rgb_mode == 2) {
		curr_gradient_1 = 0;
		curr_gradient_2 = 0;
		curr_gradient_3 = 255;
		curr_rgb_mode = 0;
		// curr_gradient_1 += LED_EFFECT_STEP;
		// curr_gradient_2 = MIN_LED_VALUE;
		// curr_gradient_3 -= LED_EFFECT_STEP;
		// if (curr_gradient_1 >= 255 || curr_gradient_3 <= MIN_LED_VALUE) {
		// 	curr_gradient_1 = 255;
		// 	curr_gradient_2 = MIN_LED_VALUE;
		// 	curr_gradient_3 = MIN_LED_VALUE;
		// 	curr_rgb_mode = 0;
		// }
	}

	rgb_pixel_t rgbw = {0, 0, 0, 0, 0, 0};
	rgbw.on    = 1;
	//红绿蓝跳变
	if (led_effect_switch == STRIP_MODE_RGB_JUMP) {
		rgbw.red   = curr_gradient_1;
		rgbw.green = curr_gradient_2;
		rgbw.blue  = curr_gradient_3;
	}
	//红绿跳变
	else if (led_effect_switch == STRIP_MODE_RG_JUMP) {
		rgbw.red   = curr_gradient_1;
		rgbw.green = curr_gradient_2;
		rgbw.blue  = 0;
	}
	//红蓝跳变
	else if (led_effect_switch == STRIP_MODE_RB_JUMP) {
		rgbw.red   = curr_gradient_1;
		rgbw.green = 0;
		rgbw.blue  = curr_gradient_3;
	}
	//蓝绿跳变
	else if (led_effect_switch == STRIP_MODE_GB_JUMP) {
		rgbw.red   = 0;
		rgbw.green = curr_gradient_2;
		rgbw.blue  = curr_gradient_3;
	}
	send_light_data_pwm_map(rgbw, 0);
}

//七彩跳变
void seven_color_jump_effect()
{
	static int curr_gradient_r = 255, curr_gradient_g = MIN_LED_VALUE, curr_gradient_b = MIN_LED_VALUE;
	static uint8_t curr_rgb_mode = 0;

	switch (curr_rgb_mode) {
	case 0://红
		curr_gradient_r = 255;
		curr_gradient_g = 0;
		curr_gradient_b = 0;
		curr_rgb_mode++;
		break;
	case 1://橙
		curr_gradient_r = 255;
		curr_gradient_g = 127;
		curr_gradient_b = 0;
		curr_rgb_mode++;
		break;
	case 2://黄
		curr_gradient_r = 255;
		curr_gradient_g = 255;
		curr_gradient_b = 0;
		curr_rgb_mode++;
		break;
	case 3://绿
		curr_gradient_r = 0;
		curr_gradient_g = 255;
		curr_gradient_b = 0;
		curr_rgb_mode++;
		break;
	case 4://青色
		curr_gradient_r = 0;
		curr_gradient_g = 255;
		curr_gradient_b = 255;
		curr_rgb_mode++;
		break;
	case 5:
		curr_gradient_r = 0;
		curr_gradient_g = 0;
		curr_gradient_b = 255;
		curr_rgb_mode++;
		break;
	case 6:
		curr_gradient_r = 139;
		curr_gradient_g = 0;
		curr_gradient_b = 255;
		curr_rgb_mode = 0;
		break;
	}
	rgb_pixel_t rgbw = {0, 0, 0, 0, 0, 0};
	rgbw.on    = 1;
	rgbw.red   = curr_gradient_r;
	rgbw.green = curr_gradient_g;
	rgbw.blue  = curr_gradient_b;
	send_light_data_pwm_map(rgbw, 0);
}

//灯效模式 频闪、渐变、跳变等
void ambilight_task()
{
	//七彩频闪,红绿蓝频闪,单色频闪
	if (led_effect_flag == 1) {
		static bool dirFlag = false;
		if (dirFlag) {
			rgb_color_flash(led_type_flag);
			dirFlag = false;
			vTaskDelay(STRIP_STROBE_ON_INTERVAL / portTICK_RATE_MS);
		} else {
			dirFlag = true;
			rgb_pixel_t rgbw = {0, 0, 0, 0, 0, 0};
			send_light_data_pwm_map(rgbw, 0);
			vTaskDelay(STRIP_STROBE_OFF_INTERVAL / portTICK_RATE_MS);
		}
	}
	//单色渐变
	else if (led_effect_flag == 2) {
		singel_color_gradient_effect(led_type_flag);
		vTaskDelay(20 / portTICK_RATE_MS);
	}
	//多色渐变
	else if (led_effect_flag == 3) {
		mult_color_gradient_effect(led_type_flag);
		vTaskDelay(20 / portTICK_RATE_MS);
	}
	//红绿蓝跳变
	else if (led_effect_flag == 4) {
		rgb_color_jump_effect(led_type_flag);
		vTaskDelay(800 / portTICK_RATE_MS);
	}
	//七彩跳变
	else if (led_effect_flag == 5) {
		seven_color_jump_effect();
		vTaskDelay(800 / portTICK_RATE_MS);
	}
	//双色渐变
	else if (led_effect_flag == 6) {
		double_color_gradient_effect(led_type_flag);
		vTaskDelay(20 / portTICK_RATE_MS);
	}
	else {
		vTaskDelay(10 / portTICK_RATE_MS);
	}
}

void ambilight_init()
{
	LOGI(TAG, "board_drive_init.");

	//不恢复灯光效果
#if (NO_RESTORE_LED_EFFECT == 0)
	set_led_effect_disenable(0);
	//set_pre_led_effect_status(0);
	set_all_led_effect(0);
#else
	product_mode_t *product_status = product_get_status();

	set_led_effect_disenable(product_status->led_effect_set);
	//set_pre_led_effect_status(pcfg->pre_led_effect);
	set_all_led_effect(product_status->led_effect_type);

	if (get_led_effect_disenable()) {
		set_led_cfg_mode(IS_AMBILIGHT_CFG_MODE);
	}
#endif

}

void set_ambilight_mode(char mode) {
	set_led_effect_disenable(0);
	switch (mode) {
	// 0 无效模式
	case STRIP_MODE_INIT_MODE: {
		break;
	}
	// 1 七彩渐变
	case STRIP_MODE_SEVEN_GRADIENT: {
		set_led_effect_disenable(3);
		set_all_led_effect(STRIP_MODE_SEVEN_GRADIENT);
		break;
	}
	// 2 红色渐变
	case STRIP_MODE_RED_GRADIENT: {
		set_led_effect_disenable(2);
		set_all_led_effect(STRIP_MODE_RED_GRADIENT);
		break;
	}
	// 3 绿色渐变
	case STRIP_MODE_GREEN_GRADIENT: {
		set_led_effect_disenable(2);
		set_all_led_effect(STRIP_MODE_GREEN_GRADIENT);
		break;
	}
	// 4 蓝色渐变
	case STRIP_MODE_BLUE_GRADIENT: {
		set_led_effect_disenable(2);
		set_all_led_effect(STRIP_MODE_BLUE_GRADIENT);
		break;
	}
	// 5 黄色渐变
	case STRIP_MODE_YELLOW_GRADIENT: {
		set_led_effect_disenable(2);
		set_all_led_effect(STRIP_MODE_YELLOW_GRADIENT);
		break;
	}
	// 6 青色渐变
	case STRIP_MODE_CYAN_GRADIENT: {
		set_led_effect_disenable(2);
		set_all_led_effect(STRIP_MODE_CYAN_GRADIENT);
		break;
	}
	// 7 紫色渐变
	case STRIP_MODE_PURPLE_GRADIENT: {
		set_led_effect_disenable(2);
		set_all_led_effect(STRIP_MODE_PURPLE_GRADIENT);
		break;
	}
	// 8 白色渐变
	case STRIP_MODE_WHITE_GRADIENT: {
		set_led_effect_disenable(2);
		set_all_led_effect(STRIP_MODE_WHITE_GRADIENT);
		break;
	}
	// 9 红色频闪
	case STRIP_MODE_RED_STROBE: {
		set_led_effect_disenable(1);
		set_all_led_effect(STRIP_MODE_RED_STROBE);
		break;
	}
	// 10 绿色频闪
	case STRIP_MODE_GREEN_STROBE: {
		set_led_effect_disenable(1);
		set_all_led_effect(STRIP_MODE_GREEN_STROBE);
		break;
	}
	// 11 蓝色频闪
	case STRIP_MODE_BLUE_STROBE: {
		set_led_effect_disenable(1);
		set_all_led_effect(STRIP_MODE_BLUE_STROBE);
		break;
	}
	// 12 黄色频闪
	case STRIP_MODE_YELLOW_STROBE: {
		set_led_effect_disenable(1);
		set_all_led_effect(STRIP_MODE_YELLOW_STROBE);
		break;
	}
	// 13 红绿渐变
	case STRIP_MODE_RG_GRADIENT: {
		set_led_effect_disenable(6);
		set_all_led_effect(STRIP_MODE_RG_GRADIENT);
		break;
	}
	// 14 红蓝渐变
	case STRIP_MODE_RB_GRADIENT: {
		set_led_effect_disenable(6);
		set_all_led_effect(STRIP_MODE_RB_GRADIENT);
		break;
	}
	// 15 绿蓝渐变
	case STRIP_MODE_GB_GRADIENT: {
		set_led_effect_disenable(6);
		set_all_led_effect(STRIP_MODE_GB_GRADIENT);
		break;
	}
	// 16 红绿跳变
	case STRIP_MODE_RG_JUMP: {
		set_led_effect_disenable(4);
		rgb_color_jump_effect(STRIP_MODE_RG_JUMP);
		break;
	}
	// 17 红蓝跳变
	case STRIP_MODE_RB_JUMP: {
		set_led_effect_disenable(4);
		rgb_color_jump_effect(STRIP_MODE_RB_JUMP);
		break;
	}
	// 18 绿蓝跳变
	case STRIP_MODE_GB_JUMP: {
		set_led_effect_disenable(4);
		rgb_color_jump_effect(STRIP_MODE_GB_JUMP);
		break;
	}
	// 19 红绿频闪
	case STRIP_MODE_RG_STROBE: {
		set_led_effect_disenable(1);
		set_all_led_effect(STRIP_MODE_RG_STROBE);
		break;
	}
	// 20 红蓝频闪
	case STRIP_MODE_RB_STROBE: {
		set_led_effect_disenable(1);
		set_all_led_effect(STRIP_MODE_RB_STROBE);
		break;
	}
	// 21 绿蓝频闪
	case STRIP_MODE_GB_STROBE: {
		set_led_effect_disenable(1);
		set_all_led_effect(STRIP_MODE_GB_STROBE);
		break;
	}
	// 22 七彩跳变
	case STRIP_MODE_SEVEN_JUMP: {
		set_led_effect_disenable(5);
		set_all_led_effect(STRIP_MODE_SEVEN_JUMP);
		break;
	}
	// 23七彩频闪
	case STRIP_MODE_SEVEN_STROBE: {
		set_led_effect_disenable(1);
		set_all_led_effect(STRIP_MODE_SEVEN_STROBE);
		break;
	}
	// 24 白色频闪
	case STRIP_MODE_WHITE_STROBE: {
		set_led_effect_disenable(1);
		set_all_led_effect(STRIP_MODE_WHITE_STROBE);
		break;
	}
	//25 三色渐变
	case STRIP_MODE_RGB_GRADIENT: {
		set_led_effect_disenable(3);
		set_all_led_effect(STRIP_MODE_RGB_GRADIENT);
		break;
	}
	//26 三色跳变
	case STRIP_MODE_RGB_JUMP: {
		set_led_effect_disenable(4);
		set_all_led_effect(STRIP_MODE_RGB_JUMP);
		break;
	}
	//27 三色频闪
	case STRIP_MODE_RGB_STROBE: {
		set_led_effect_disenable(1);
		set_all_led_effect(STRIP_MODE_RGB_STROBE);
		break;
	}
	case STRIP_MODE_UNKNOWN_CMD: {
		break;
	}
	default: {
		break;
	}
	}
}
// #endif
