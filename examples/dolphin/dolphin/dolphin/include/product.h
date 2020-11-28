#ifndef _PRODUCT_H_
#define _PRODUCT_H_

#include <stdint.h>

#define MOTOR_PWM_PERIOD        1000

#define MOTOR_G_PIN             2  //马达口
#define MOTOR_G_CHANNEL         2

#define MOTOR_C_PIN             8
#define MOTOR_C_CHANNEL         1
                     
#define LED_STATUS              0

#define LED_POWER               4
#define LED_POWER_CHANNEL       4



#define KEY_POWER               7

#define CHG_PIN                1//20     //C口  检测有没有充电
#define CHG_STA_PIN             20//1    //S口   控制是否要充电
#define BATTERY                 12//1   //B口


extern uint8_t charge_status;

enum
{
    DISCHARGE,
    CHARGING,
    CHARGEFULL,
};


void motor_c_set_vibrate(uint8_t vibrate);
void motor_g_set_vibrate(uint8_t vibrate);
void led_status_flash(int ms);
void led_power_flash(int ms);
void product_init(void);
void led_breath(void *arg);
void adc(void *arg);
int64_t hal_timer_now_s(void);
int64_t hal_timer_now_ms(void);
#endif
