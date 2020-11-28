#include "ukey.h"

#include <stdlib.h>

#include <FreeRTOS.h>
#include <task.h>

#include "bl_gpio.h"
#include "do_log.h"

#if LOG_KEY_EN
#define TAG            "ukey"
#define LOGI           LOG_I
#define LOGE           LOG_E
#else
#define TAG            ""
#define LOGI(...)
#define LOGE(...)
#endif

#define LOG_TAG     TAG

static ukey_t *static_key_list[UKEY_MAX_NUM];
static ukeys_t static_ukeys = {
    .key_num = 0,
    .key_list = static_key_list
};


static uint64_t keys_read(){
    uint8_t i = 0;
    uint64_t key_press_bit = 0;
    for (i = 0; i < static_ukeys.key_num ; i++) {
        if(UKEY_GPIO_PRESS(static_ukeys.key_list[i]->gpio_name)){
            UKEY_SET_BIT(key_press_bit, static_ukeys.key_list[i]->gpio_name);
            return key_press_bit;
        }
    }
    return 0;
}

static ukey_t *keys_get_press_key(uint64_t key_press){
    uint8_t list_id = 0;
    for (list_id = 0; list_id < static_ukeys.key_num ; list_id++) {
        if(UKEY_IS_BIT_SET(key_press, static_ukeys.key_list[list_id]->gpio_name)){
            return static_ukeys.key_list[list_id];
        }
    }
    return NULL;
}


void ukey_handle(void *arg){
    static uint8_t time_cnt = 0;
    static uint64_t key_prev = 0;               //上一次状态
    static uint64_t key_press = 0;              //按下的置相应的位
    static ukey_status key_status = UKEY_STATUS_IDLE;

    while (1)
    {
        ukey_t *key = NULL;

        key_press = keys_read();

        switch (key_status)
        {
        case UKEY_STATUS_IDLE:
            if (key_press != 0) {
                key_prev = key_press;
                key_status = UKEY_STATUS_UNSTABLE;
            }
            break;
        case UKEY_STATUS_UNSTABLE:
            if (key_press == key_prev) { 
                key = keys_get_press_key(key_press);
                if(key && key->key_cb != NULL){
                    key->key_cb(key->gpio_name, UKEY_EVEVT_PRESS);
                }
                key_status = UKEY_STATUS_DOWN;
                time_cnt = 0;
            }else{
                key_status = UKEY_STATUS_IDLE;
                time_cnt = 0;
            }
            break;
        case UKEY_STATUS_DOWN:
            if (key_press != key_prev){
                key = keys_get_press_key(key_prev);
                if(key && key->key_cb != NULL){
                    key->key_cb(key->gpio_name, UKEY_EVEVT_SHORT_PRESS);
                }
                key_status = UKEY_STATUS_IDLE;
                time_cnt = 0;
            }else{
                time_cnt++;
                if(time_cnt > (UKEY_PRESS_LONG_TIME / UKEY_HANDLE_TIME)){
                    key = keys_get_press_key(key_press);
                    if(key && key->key_cb != NULL){
                        key->key_cb(key->gpio_name, UKEY_EVEVT_LONG_PRESS);
                    }
                    key_status = UKEY_STATUS_LONG;
                }
            }
            break;
        case UKEY_STATUS_LONG:
            if (key_press != key_prev){
                key = keys_get_press_key(key_prev);
                if(key && key->key_cb != NULL){
                    key->key_cb(key->gpio_name, UKEY_EVEVT_LONG_PRESS_RELEASE);
                }
                key_status = UKEY_STATUS_IDLE;
            }
            break;
        default:
            break;
        }
        vTaskDelay(UKEY_HANDLE_TIME / portTICK_RATE_MS);
    }
}


void ukey_add(uint32_t gpio_name, ukey_event_cb_t event_cb){

    bl_gpio_enable_input(gpio_name, 1, 0);

    ukey_t *singleKeyOne = (ukey_t *) malloc(sizeof(ukey_t));
    singleKeyOne->gpio_name = gpio_name;
    singleKeyOne->gpio_id = static_ukeys.key_num;
    singleKeyOne->key_cb = event_cb;
    static_key_list[static_ukeys.key_num] = singleKeyOne;
    static_ukeys.key_num++;
}


void ukey_init(void){

    if (xTaskCreate(ukey_handle, "ukey_handle", 512, NULL, 3, NULL) != pdPASS) {
        LOGI(TAG, "xTaskCreate(ukey_handle) failed");
    }
}