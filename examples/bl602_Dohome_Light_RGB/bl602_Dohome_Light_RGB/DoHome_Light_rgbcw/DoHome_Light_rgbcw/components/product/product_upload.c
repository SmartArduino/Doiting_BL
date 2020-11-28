#include "product_upload.h"

#include <FreeRTOS.h>
#include <task.h>
#include "lwip/netdb.h"

#include "doit_wifi.h"
#include "doit_sntp.h"
#include "doit_upload.h"
#include "doit_device_info.h"

#include "ulog.h"
#include "app_config.h"

#include "product.h"

#if LOG_UPLOAD_EN
#define TAG             "product_upload"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif
#define LOG_TAG     TAG


static time_t old_upload_ts = 0;
static bool product_status_is_write = false;
static int upload_server = 0;

void product_upload_status(int server){
    old_upload_ts = 0;
    upload_server |= server;
    product_status_is_write = true;
    LOGI(TAG, "set_upload_server: %02x", upload_server);
}

void product_delay_upload_status(int server){
    time_t timestamp = time_get_curr_sec();
    old_upload_ts = timestamp-BASE_UPLOAD_PERIOD + 1;
    product_status_is_write = true;
    upload_server |= server;
    LOGI(TAG, "set_delay_upload_server: %02x", upload_server);
}

static void dohome_upload_status(void){
    if(!product_dohomoe_update_status()){
        long timestamp = time_get_curr_sec();
        old_upload_ts = timestamp-BASE_UPLOAD_PERIOD + 3;
    }
}

static void product_upload_task(void *param)
{
    while (1) {

        long timestamp = time_get_curr_sec();
        if(wifi_get_connect_status()){
            if(timestamp - old_upload_ts > BASE_UPLOAD_PERIOD){
                old_upload_ts = timestamp;
                if(product_status_is_write == true){
                    product_status_is_write = false;
                    product_save_status();

                    if(upload_server & PRODUCT_UPLOAD_DOHOME){
                        LOGI(TAG, "dohome_upload_status");
                        upload_server &= (~PRODUCT_UPLOAD_DOHOME);
                        dohome_upload_status();  
                    }
                }else{
                    LOGI(TAG, "product_upload_status");
                    dohome_upload_status();  
                }
            }
        }else{
            old_upload_ts = 0;
        }
        vTaskDelay(500 / portTICK_RATE_MS);
    }
    vTaskDelete(NULL);
}

#define    PRODUCT_UPLOAD_TASK_SIZE      4*1024
void product_status_upload_init(void){

    if (xTaskCreate(product_upload_task, "produc_upload_task", PRODUCT_UPLOAD_TASK_SIZE, NULL, 2, NULL) != pdPASS) {
        LOGI(TAG, "xTaskCreate(produc_upload_task) failed");
    }
}