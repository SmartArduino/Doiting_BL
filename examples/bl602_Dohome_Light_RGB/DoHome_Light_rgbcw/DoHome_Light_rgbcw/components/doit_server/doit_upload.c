#include "doit_upload.h"

#include <FreeRTOS.h>
#include <task.h>
#include "lwip/netdb.h"

#include "doit_wifi.h"
#include "doit_flash.h"
#include "doit_utils.h"
#include "doit_device_info.h"
#include "doit_sntp.h"
#include "doit_http.h"
#include "doit_dohome_proces.h"

#include "ulog.h"
#include "app_config.h"

#if LOG_UPLOAD_EN
#define TAG             "upload"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif
#define LOG_TAG     TAG

#define FINAL_BUF_LEN  			1256

static long old_ext_ts = 0;
static bool config_write_flag = false;

void upload_reset_ext(void){
    old_ext_ts = 0;
    config_write_flag = true;
}

void upload_delay_ext(void){
    long timestamp = time_get_curr_sec();
    old_ext_ts = timestamp-EXT_UPLOAD_PERIOD + 1;
    config_write_flag = true;
}

static bool post_status = false;
static void http_upload_status_cb(char *response_body, int http_status, char *response_headers, int body_size)
{
	// LOGI(TAG, "http_status=%d, body=%s\r\n", http_status, response_body);
	if (http_status == 200) {
		LOGI(TAG, "http_upload_status ok");
        post_status = true;
	}else{
		LOGE(TAG, "http_upload_status fail");
        post_status = false;
    }
}

bool dohome_http_post(char *msg)
{
    post_status = false;

	request_args request;
	request.method = "POST";
	request.hostname = UPLOAD_SRV_HOST;
	request.port = UPLOAD_SRV_PORT;
	request.path = "/";
	request.content_type = "application/x-www-form-urlencoded";
	request.buffer = msg;
	request.buffer_size = strlen(msg);
	request.user_callback = http_upload_status_cb;
    doit_http_request(&request);
    return post_status;
}

static void upload_ext_stat(void){
    char post_buf[FINAL_BUF_LEN];
    memset(post_buf, 0, FINAL_BUF_LEN);

    user_config_t *pcfg = flash_get_user_config();

    long ts = time_get_curr_sec();
	int year, mon, day, hour, min, sec;
	time_sec_to_time(ts, &year, &mon, &day, &hour, &min, &sec);

    sprintf(post_buf, "cmd=ext_stat&device_id=%s&device_key=%s&status=", dev_id, dev_key);
	doit_strcat(post_buf, "{\"res\":0,\"cmd\":21,");

    char ext_buf[128];
    product_get_ext_info(ext_buf);

    char *add_info = post_buf + strlen(post_buf);
	sprintf(add_info, "\"tz\":%d,\"ver\":\"%s\",\"dev_id\":\"%s\",\"remote\":%d,\"repeater\":%d,%s\"chip\":\"%s\",\"year\":%d,\"mon\":%d,\"day\":%d,\"hour\":%d,\"min\":%d,\"sec\":%d",
	        pcfg->timezone_offset, FW_VERSION, dev_id, pcfg->remote_ctrl, 0, ext_buf, CHIP_TYPE + 1, year, mon, day, hour, min, sec);
	doit_strcat(post_buf, ",\"timers\":[");

    get_timer_info(add_info, post_buf);

    if(!dohome_http_post(post_buf)){
        long timestamp = time_get_curr_sec();
        old_ext_ts = timestamp-EXT_UPLOAD_PERIOD + 3;
    }
}

static void info_upload_task(void *param)
{
    while (1) {

        long timestamp = time_get_curr_sec();
  
        if(wifi_get_connect_status()){
            if(timestamp - old_ext_ts > EXT_UPLOAD_PERIOD){
                old_ext_ts = timestamp;
                if(config_write_flag == true){
                    config_write_flag = false;
                    flash_user_config_write();
                    flash_user_config_to_bak_write();
                }
                LOGI(TAG, "upload_ext_stat");
                upload_ext_stat();
            }
        }
        vTaskDelay(500 / portTICK_RATE_MS);
    }
    vTaskDelete(NULL);
}

#define    UPLOAD_TASK_SIZE      1024
TaskHandle_t upload_task_handle = NULL;
void doit_status_upload_init(void){

    upload_reset_ext();
    if(!upload_task_handle){
        if (xTaskCreate(info_upload_task, "upload_task", UPLOAD_TASK_SIZE, NULL, 2, &upload_task_handle) != pdPASS) {
            LOGE(TAG, "xTaskCreate(upload_task) failed");
        }
    }
}