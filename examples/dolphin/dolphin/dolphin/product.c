#include "product.h"

#include <FreeRTOS.h>
#include <timers.h>

#include "bl_gpio.h"
#include "hal_pwm.h"

#include "do_log.h"

#include <bl602_glb.h>
#include <bl602_gpio.h>

#include"hal_adc.h"
#include"hal_hbn.h"
#include"bl_timer.h"


#if LOG_PRODUCT_EN
#define TAG            "product"
#define LOGI           LOG_I
#define LOGE           LOG_E
#else
#define TAG            ""
#define LOGI(...)
#define LOGE(...)
#endif


uint8_t charge_status = DISCHARGE;
static bool led_status_on = true;


int64_t hal_timer_now_s(void)
{
    int64_t tmp;

    tmp = bl_timer_now_us()/1000000;

    return tmp;
}

int64_t hal_timer_now_ms(void)
{
    int64_t tmp;

    tmp = bl_timer_now_us()/1000;

    return tmp;
}

long duty_map(const long x, const long in_min, const long in_max, const long out_min, const long out_max)
{
	return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

//0-100
void motor_g_set_duty(uint32_t duty){
    hal_pwm_duty_set(MOTOR_G_CHANNEL, duty, 0);
}

void motor_c_set_duty(uint32_t duty){
    hal_pwm_duty_set(MOTOR_C_CHANNEL, duty, 0);
}

void set_led_status(uint8_t status){
    bl_gpio_output_set(LED_STATUS, status?1:0);
}

void motor_c_set_vibrate(uint8_t vibrate){
    uint32_t duty = 0;
    if(vibrate != 0){
        duty = duty_map(vibrate, 0, 20, 2000, 10000);
    }
    motor_c_set_duty(duty);
}

void motor_g_set_vibrate(uint8_t vibrate){
    uint32_t duty = 0;
    if(vibrate != 0){
        //马达有个启动电压(电流)
        duty = duty_map(vibrate, 0, 20, 2000, 10000);
    }
    motor_g_set_duty(duty);
}



static TimerHandle_t led_status_timer = NULL;
static TimerHandle_t led_power_timer = NULL;


void led_status_timer_cb(TimerHandle_t timer){
    static int led_stasus = 0;
    if(led_stasus){
        //LOGI(TAG, "LED_STATUS: off");
        led_stasus=false;
        bl_gpio_output_set(LED_STATUS, 1);
    }else{
        //LOGI(TAG, "LED_STATUS: on");
        led_stasus=true;
        bl_gpio_output_set(LED_STATUS, 0);
    }
}

void led_power_timer_cb(TimerHandle_t timer){
    static bool led_power = false;
    if(led_power){
        bl_gpio_output_set(LED_POWER, 1);
        led_power=false;
        //LOGI(TAG, "LED_power: off");
    }else{
        bl_gpio_output_set(LED_POWER, 0);
        //LOGI(TAG, "LED_power: on");
        led_power=true;
    }
}


void led_status_flash(int ms){
    if(led_status_on){
        if(ms == 0){
            if( xTimerStop(led_status_timer, 100) != pdPASS ){
                LOGE(TAG, "led_status_timer xTimerStop Failure");

            }
            return;
        }

        if(xTimerChangePeriod(led_status_timer, ms / portTICK_PERIOD_MS, 1000) == pdPASS ){
            if( xTimerStart(led_status_timer, 100) != pdPASS ){
                LOGE(TAG, "led_status_timer xTimerStop Failure");
            }
        }else{
            LOGE(TAG, "led_status_timer ChangePeriod Failure");
        }
    }
}

void led_power_flash(int ms){
    if(led_status_on){
        if(ms == 0){
            if( xTimerStop(led_power_timer, 100) != pdPASS ){
                LOGE(TAG, "led_status_timer xTimerStop Failure");
            }
            return;
        }

        if(xTimerChangePeriod(led_power_timer, ms / portTICK_PERIOD_MS, 1000) == pdPASS ){
            if( xTimerStart(led_power_timer, 100) != pdPASS ){
                LOGE(TAG, "led_status_timer xTimerStop Failure");
            }
        }else{
            LOGE(TAG, "led_status_timer ChangePeriod Failure");
        }
    }
}

static void led_init(void){


    bl_gpio_enable_output(LED_STATUS, 0, 0);
    bl_gpio_enable_output(LED_POWER, 0, 0);

    bl_gpio_enable_input(CHG_PIN,0,0);
    bl_gpio_enable_output(CHG_STA_PIN,0,0);
    bl_gpio_output_set(LED_POWER, 1);

    led_status_timer = xTimerCreate(((const char*)"led_status_timer"), 500 / portTICK_RATE_MS, pdTRUE, 0, led_status_timer_cb);
	if( led_status_timer == NULL ) {
        LOGE(TAG, "create led_status_timer fail");
    }
    
    
    led_power_timer = xTimerCreate(((const char*)"led_power_timer"), 500 / portTICK_RATE_MS, pdTRUE, 0, led_power_timer_cb);
	if( led_power_timer == NULL ) {
        LOGE(TAG, "create led_power_timer fail");
    }
}




void product_init(void){

    hal_pwm_init(MOTOR_G_CHANNEL, MOTOR_G_PIN);
    hal_pwm_freq_update(MOTOR_G_CHANNEL, MOTOR_PWM_PERIOD);
    hal_pwm_duty_set(MOTOR_G_CHANNEL, 0, 0);
    hal_pwm_start(MOTOR_G_CHANNEL);

    hal_pwm_init(MOTOR_C_CHANNEL, MOTOR_C_PIN);
    hal_pwm_freq_update(MOTOR_C_CHANNEL, MOTOR_PWM_PERIOD);
    hal_pwm_duty_set(MOTOR_C_CHANNEL, 0, 0);
    hal_pwm_start(MOTOR_C_CHANNEL);

    led_init();
    
}