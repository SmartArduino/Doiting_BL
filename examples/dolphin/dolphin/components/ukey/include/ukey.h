#ifndef _U_KWY_H_
#define _U_KWY_H_

#include <stdint.h>

#include "bl_gpio.h"

// typedef unsigned char               uint8_t;
// typedef unsigned int                uint32_t;
// typedef unsigned long long int      uint64_t;


#define UKEY_MAX_NUM                10
#define UKEY_HANDLE_TIME            30
#define UKEY_PRESS_LONG_TIME        3000

#define UKEY_SET_BIT(a,b)                          (a |= (1 << b))
#define UKEY_CLEAR_BIT(a,b)                        (a &= ~(1 << b))
#define UKEY_IS_BIT_SET(a,b)                       (a & (1 << b))

#define UKEY_GPIO_PRESS(a)        (bl_gpio_input_get_value(a)==0)

typedef enum {
    UKEY_STATUS_IDLE = 0,
    UKEY_STATUS_UNSTABLE,      //按下未消抖
    UKEY_STATUS_DOWN,
    UKEY_STATUS_UP,
    UKEY_STATUS_LONG,
}ukey_status;

typedef enum {
    UKEY_EVEVT_PRESS = 0,
    UKEY_EVEVT_SHORT_PRESS,
    UKEY_EVEVT_LONG_PRESS,
    UKEY_EVEVT_LONG_PRESS_RELEASE,
}ukey_event;

typedef void (*ukey_event_cb_t)(uint8_t gpio_name, ukey_event event);

typedef struct
{
    uint8_t gpio_id;
    uint32_t gpio_name; 
    ukey_status status;
    ukey_event_cb_t key_cb;
}ukey_t; 

typedef struct{
    uint8_t key_num;
    ukey_t ** key_list; 
}ukeys_t;


void ukey_init(void);
void ukey_add(uint32_t gpio_name, ukey_event_cb_t event_cb);


#endif