#include "doit_light_effect.h"
#include "doit_light_driver.h"
#include "app_config.h"

#include <FreeRTOS.h>
#include <task.h>

#if LOG_LED_DRIVE_EN
#define TAG             "led_drive"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define ERROR(...)
#endif
//fun
void led_cfg_def_effect();
void led_cfg_dohome_effect();

static char led_cfg_dohome_effect_cnt = 0;
/*******************************************************
						effect
 *******************************************************/
void set_led_cfg_dohome_effect_cnt(char cnt)
{
	led_cfg_dohome_effect_cnt = cnt;
}

#if (defined(IS_WYRGB) || defined(IS_STRIP_RGB))

void led_cfg_def_effect()
{

}

void led_cfg_dohome_effect()
{
	rgb_pixel_t w1;//w亮
	w1.red = 0; w1.green = 0; w1.blue = 0; w1.white = 150; w1.on = 1;
	w1.yellow = 0;

	rgb_pixel_t w0;//w灭
	w0.red = 0; w0.green = 0; w0.blue = 0; w0.white = 0; w0.on = 1;
	w0.yellow = 0;

	led_cfg_dohome_effect_cnt++;
	if (led_cfg_dohome_effect_cnt > 15) {
		//w亮
		rgb_pixel_t w2;
		w2.red = 0; w2.green = 0; w2.blue = 0; w2.white = 255; w2.on = 1;
		w2.yellow = 0;
		send_light_data_pwm_map(w2, 1);
		set_light_work_mode(IS_DEFAULT_CFG_MODE);
	} else {
		if ((led_cfg_dohome_effect_cnt % 2) == 0) {
			send_light_data_pwm_map(w0, 0);
		} else {
			send_light_data_pwm_map(w1, 0);
		}
		vTaskDelay(1000 / portTICK_RATE_MS);
	}
}

void led_cfg_dohome_effect2()
{
	rgb_pixel_t w1 = {.red = 0, .green = 0, .blue = 0, .white = 255, .on = 1};
#if defined(IS_WYRGB)
	w1.yellow = 0;
#endif
	w1.on = 1;
	send_light_data_pwm_map(w1, 0);
	vTaskDelay(1000 / portTICK_RATE_MS);

	w1.on = 0;
	send_light_data_pwm_map(w1, 0);
	vTaskDelay(1000 / portTICK_RATE_MS);
}

void led_cfg_dohome_effect3()
{
	rgb_pixel_t w1 = {.red = 0, .green = 0, .blue = 0, .white = 255, .on = 1};
#if defined(IS_WYRGB)
	w1.yellow = 0;
#endif

	if(led_cfg_dohome_effect_cnt < 10){
		if(led_cfg_dohome_effect_cnt%5 == 0){
			w1.on = 1;
			w1.red = 255;w1.green = 0;w1.blue = 0;w1.white = 0;w1.yellow = 0;
			send_light_data_pwm_map(w1, 0);
			vTaskDelay(5000 / portTICK_RATE_MS);
		}
		else if (led_cfg_dohome_effect_cnt%5 == 1) {
			w1.on = 1;
			w1.red = 0;w1.green = 255;w1.blue = 0;w1.white = 0;w1.yellow = 0;
			send_light_data_pwm_map(w1, 0);
			vTaskDelay(5000 / portTICK_RATE_MS);
		}
		else if (led_cfg_dohome_effect_cnt%5 == 2) {
			w1.on = 1;
			w1.red = 0;w1.green = 0;w1.blue = 255;w1.white = 0;w1.yellow = 0;
			send_light_data_pwm_map(w1, 0);
			vTaskDelay(5000 / portTICK_RATE_MS);
		}
	#if defined(IS_WYRGB)
		else if (led_cfg_dohome_effect_cnt%5 == 3) {
			w1.on = 1;
			w1.red = 0;w1.green = 0;w1.blue = 0;w1.white = 0;w1.yellow = 255;
			send_light_data_pwm_map(w1, 0);
			vTaskDelay(5000 / portTICK_RATE_MS);
		}
		else if (led_cfg_dohome_effect_cnt%5 == 4) {
			w1.on = 1;
			w1.red = 0;w1.green = 0;w1.blue = 0;w1.white = 255;w1.yellow = 0;
			send_light_data_pwm_map(w1, 0);
			vTaskDelay(5000 / portTICK_RATE_MS);
		}
	#else
		led_cfg_dohome_effect_cnt = led_cfg_dohome_effect_cnt+2;
	#endif
		led_cfg_dohome_effect_cnt++;
		if(led_cfg_dohome_effect_cnt == 10){
			w1.on = 1;
			w1.red = 0;w1.green = 255;w1.blue = 0;w1.white = 0;w1.yellow = 0;
			send_light_data_pwm_map(w1, 0);
		}
	}
}


#elif defined(IS_WY)

void led_cfg_def_effect()
{

}

void led_cfg_dohome_effect()
{
	rgb_pixel_t w1;//w亮
	w1.red = 0; w1.green = 0; w1.blue = 0; w1.white = 150; w1.on = 1;
	w1.yellow = 0;

	rgb_pixel_t w0;//w灭
	w0.red = 0; w0.green = 0; w0.blue = 0; w0.white = 0; w0.on = 1;
	w0.yellow = 0;

	led_cfg_dohome_effect_cnt++;
	if (led_cfg_dohome_effect_cnt > 15) {
		//w亮
		rgb_pixel_t w2;
		w2.red = 0; w2.green = 0; w2.blue = 0; w2.white = 255; w2.on = 1;
		w2.yellow = 0;
		send_light_data_pwm_map(w2, 1);
		set_light_work_mode(IS_DEFAULT_CFG_MODE);
	} else {
		if ((led_cfg_dohome_effect_cnt % 2) == 0) {
			send_light_data_pwm_map(w0, 0);
		} else {
			send_light_data_pwm_map(w1, 0);
		}
		vTaskDelay(1000 / portTICK_RATE_MS);
	}
}

void led_cfg_dohome_effect3()
{
	rgb_pixel_t w1 = {.red = 0, .green = 0, .blue = 0, .white = 255, .on = 1};

	if(led_cfg_dohome_effect_cnt < 5){
		if(led_cfg_dohome_effect_cnt%2 == 0){
			w1.on = 1;
			w1.red = 0; w1.green = 0; w1.blue = 0; w1.white = 255; w1.yellow = 0;
			send_light_data_pwm_map(w1, 0);
			vTaskDelay(5000 / portTICK_RATE_MS);
		}
		else if (led_cfg_dohome_effect_cnt%2 == 1) {
			w1.on = 1;
			w1.red = 0; w1.green = 0; w1.blue = 0; w1.white = 0; w1.yellow = 255;
			send_light_data_pwm_map(w1, 0);
			vTaskDelay(5000 / portTICK_RATE_MS);
		}
		led_cfg_dohome_effect_cnt++;
	}
}

//effect
#endif