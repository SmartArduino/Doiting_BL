#include "product.h"

#include <easyflash.h>

#include "doit_utils.h"
#include "doit_flash.h"
#include "doit_upload.h"
#include "doit_device_info.h"
#include "doit_dohome_protocol.h"

#include "ulog.h"
#include "app_config.h"

#include "product_upload.h"

#include "doit_light_Ambilight.h"
#include "doit_light_driver.h"

#if LOG_PRODUCT_EN
#define TAG             "product"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG 			""
#define LOGI(...)
#define LOGE(...)
#endif

static product_mode_t product_status;

void product_set_control_way(product_control_t way){
	product_status.control_way = way;
}

product_control_t product_get_control_way(void){
	return product_status.control_way;
}

product_mode_t* product_get_status(void){
	return &product_status;
}

void product_save_status(void){
	product_write_status(product_status);
}


void product_status_factory(product_mode_t *status){
	if(status == NULL){
		product_mode_t product_status;
		status = &product_status;
	}
	status->color.on = 1;
	status->color.red = 0;
	status->color.green = 0;
	status->color.blue = 0;
	status->color.white = COLOR_MAX;
	status->color.yellow = 0;
	status->led_effect_set = 0; 
	status->led_effect_type = 0;
	product_write_status(*status);
}

static char app_product_status_check(product_mode_t status){
	if((status.color.red > 0
		|| status.color.green > 0
		|| status.color.green > 0
		|| status.color.white > 0
		|| status.color.yellow > 0) 
		&&(status.color.red <= COLOR_MAX
		&& status.color.green <= COLOR_MAX
		&& status.color.green <= COLOR_MAX
		&& status.color.white <= COLOR_MAX
		&& status.color.yellow <= COLOR_MAX)){
			return 1;
	}else{
		return 0;
	}
}

void product_read_status(product_mode_t *status)
{
	size_t size = sizeof(product_mode_t);
	if(ef_get_env_blob("product_status", status, sizeof(product_mode_t), &size) > 0){
		if(!app_product_status_check(*status)){
			product_status_factory(status);
		}
	}else{
		//初始化
		product_status_factory(status);
	}
}

/*
    写入数据到Flash
 */
void product_write_status(product_mode_t status)
{
	ef_set_env_blob("product_status", &status, sizeof(product_mode_t));
}


static int get_color_pulsewidth(product_mode_t *product_status, rgb_pixel_t *pwm){
#if defined(IS_WYRGB)
	
	pwm->red = map(product_status->color.red, 0, 5000, 0, COLOR_MAX);
	pwm->green = map(product_status->color.green, 0, 5000, 0, COLOR_MAX);
	pwm->blue = map(product_status->color.blue, 0, 5000, 0, COLOR_MAX);
#else
	pwm->red = 0;
	pwm->green = 0;
	pwm->blue = 0;
#endif
	pwm->white = map(product_status->color.white, 0, 5000, 0, COLOR_MAX);
	pwm->yellow = map(product_status->color.yellow, 0, 5000, 0, COLOR_MAX);
    return 1;
}

static int get_product_status_to_json(cJSON *root, product_mode_t *status)
{
#if defined(IS_WYRGB)
	cJSON *pred = cJSON_GetObjectItem(root, "r");
	if (pred == NULL) {
		LOGE(TAG, "get red failed\r\n");
		return CMD_RET_GET_RED_FAILED;
	}
	status->color.red = pred->valueint;
	cJSON *pblue = cJSON_GetObjectItem(root, "b");
	if (pblue == NULL) {
		LOGE(TAG, "get blue failed\r\n");
		return CMD_RET_GET_BLUE_FAILED;
	}
	status->color.blue = pblue->valueint;
	cJSON *pgreen = cJSON_GetObjectItem(root, "g");
	if (pgreen == NULL) {
		LOGE(TAG, "get green failed\r\n");
		return CMD_RET_GET_GREEN_FAILED;
	}
	status->color.green = pgreen->valueint;
#else
	status->color.red = 0;
	status->color.green = 0;
	status->color.blue = 0;
#endif
	cJSON *pwhite = cJSON_GetObjectItem(root, "w");
	if (pwhite == NULL) {
		LOGE(TAG, "get white failed\r\n");
		return CMD_RET_GET_WHITE_FAILED;
	}
	status->color.white = pwhite->valueint;
	cJSON *pm = cJSON_GetObjectItem(root, "m");
	if (pm == NULL) {
		LOGE(TAG, "get m failed\r\n");
		return CMD_RET_GET_M_FAILED;
	}
	status->color.yellow = pm->valueint;
	return CMD_RET_OK;
}

void product_doit_get_status_str(char *status_str){
	int red, green, blue, white, yellow;
#if defined(IS_WYRGB)
	red = map(product_status.color.red, 0, COLOR_MAX, 0, 5000);
	green = map(product_status.color.green, 0, COLOR_MAX, 0, 5000);
	blue = map(product_status.color.blue, 0, COLOR_MAX, 0, 5000);
#else
	red = 0;
	green = 0;
	blue = 0;
#endif
	white = map(product_status.color.white, 0, COLOR_MAX, 0, 5000);
	yellow = map(product_status.color.yellow, 0, COLOR_MAX, 0, 5000);

	if (product_status.color.on == 1) {
		sprintf(status_str, "{\"res\":0,\"cmd\":25,\"r\":%d,\"g\":%d,\"b\":%d,\"w\":%d,\"m\":%d,\"type\":1}\r\n",
					red, green, blue, white, yellow);
	} else {
		sprintf(status_str,"{\"res\":0,\"cmd\":25,\"r\":0,\"g\":0,\"b\":0,\"w\":0,\"m\":0,\"type\":1}\r\n");
	}
}

int product_doit_set_status(cJSON *root)
{
	rgb_pixel_t color_pwm;
	product_mode_t product_status;

	int err = get_product_status_to_json(root, &product_status);
	if (err != CMD_RET_OK)
		return err;

	cJSON *pon = cJSON_GetObjectItem(root, "on");		//为了兼容老版本的灯固件，这里设置一个新字段表示软件开关灯
	if (pon == NULL) {
		// LOGI(TAG, "get on field failed, turn on\r\n");
	} else {
		int on = pon->valueint;
		if (on == 1) {	//App开灯，保持关灯前状态
			send_light_onoff(1);
		} else {
			send_light_onoff(0);
		}
		return CMD_RET_OK;
	}
	cJSON *psmooth = cJSON_GetObjectItem(root, "smooth");//新增直接设置颜色，取消平滑
	int smoothen = 1;
	if (psmooth != NULL) {
		smoothen = psmooth->valueint;
		// LOGI(TAG, "get smooth en %d\r\n", smoothen);
	}
	
	get_color_pulsewidth(&product_status,&color_pwm);

	cJSON *p_t= cJSON_GetObjectItem(root, "t");//新增直接设置颜色，取消平滑
	int t = 0;
	if (p_t != NULL) {
		t= p_t->valueint;
	}

	if(smoothen){
		LOGI(TAG,"\n--------r: %d    g: %d    b: %d    w: %d     y: %d", color_pwm.red, color_pwm.green, color_pwm.blue, color_pwm.white, color_pwm.yellow);
		set_light_work_mode(IS_SMOOTH_CFG_MODE);
		send_light_data(color_pwm.red, color_pwm.green, color_pwm.blue, color_pwm.white, color_pwm.yellow, t);
	}else{
		set_light_work_mode(IS_DEFAULT_CFG_MODE);
		color_pwm.on = 1;
		send_light_data_pwm(color_pwm);
	}

	return CMD_RET_OK;
}

bool product_dohomoe_update_status(void){

	char post_str[256];
    char post_buf[400];
    product_doit_get_status_str(post_str);
    sprintf(post_buf, "cmd=stat&device_id=%s&device_key=%s&status=%s", dev_id, dev_key, post_str);
	return dohome_http_post(post_buf);
}

int set_preset_mode(cJSON *root){
	cJSON *pindex = cJSON_GetObjectItem(root, "index");
	if (pindex == NULL) {
		LOGE(TAG, "get offset failed\r\n");
		return CMD_RET_PARSE_FAILED;
	}
	int index = pindex->valueint;
	set_light_work_mode(IS_AMBILIGHT_CFG_MODE);
	set_ambilight_mode(index);
	return CMD_RET_OK;
}

// void product_get_ext_info(char *ret_buf){
// }


int dohome_product_run_cmd(int cmd, cJSON *root, char* ret_buf){
	int err_no = CMD_RET_RETURN_BUFF;
	switch (cmd)
	{
	case PRODUCT_CMD_SET_STATUS: {
		err_no = product_doit_set_status(root);	
		break;
	}
	case PRODUCT_CMD_GET_STATUS: {					
		product_doit_get_status_str(ret_buf);
		break;
	}
	case PRODUCT_CMD_SET_STATIC_MODE: {					
		err_no = set_preset_mode(root);
		break;
	}
	default:
		LOGI(TAG, "unknown command!");
		err_no = CMD_RET_UNKNOWN_CMD;
		break;
	}
	return err_no;
}

void dohome_status_post(void){
	product_set_control_way(PRODUCT_CONTROL_DOHOME);
	product_upload_status(PRODUCT_UPLOAD_DOHOME);
}

void dohome_status_delay_post(void){
	product_set_control_way(PRODUCT_CONTROL_DOHOME);
	product_delay_upload_status(PRODUCT_UPLOAD_DOHOME);
}

void product_init(void){

	light_init();

	product_read_status(&product_status);

	product_status_upload_init();
	
    dohome_reg_delay_post_cb(dohome_status_delay_post);
    dohome_reg_post_cb(dohome_status_post);
}
