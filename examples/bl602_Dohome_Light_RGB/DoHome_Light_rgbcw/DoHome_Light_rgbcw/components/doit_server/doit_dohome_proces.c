#include "doit_dohome_proces.h"
#include "doit_dohome_protocol.h"

#include "doit_device_info.h"
#include "doit_flash.h"
#include "doit_wifi.h"
#include "doit_sntp.h"
#include "doit_timer.h"
#include "doit_upload.h"
#include "doit_system.h"
#include "doit_ota.h"
#include "doit_utils.h"
// #include "doit_ota.h"

#include "ulog.h"
#include "app_config.h"


#if LOG_PROCES_EN
#define TAG             "proces"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG 			""
#define LOGI(...)
#define LOGE(...)
#endif
#define LOG_TAG     TAG

int system_reset_json(char *ret){
    sprintf(ret, "{\"res\":%d,\"cmd\":3}\r\n", CMD_RET_OK);
	system_delay_reset();
    return CMD_RET_OK;
}

void __attribute__((weak)) product_get_ext_info(char *buf){
	buf[0] = '\0';
}

int get_device_info(char *info){
    user_config_t *pcfg = flash_get_user_config();
	char ext_buf[128];
	product_get_ext_info(ext_buf);
    sprintf(info, "{\"res\":0,"
            "\"cmd\":4,"
            "\"tz\":%d,"
            "\"ver\":\"%s\","
            "\"dev_id\":\"%s\","
            "\"conn\":%d,"
            "\"remote\":%d,"
            "%s"
            "\"repeater\":%d,"
            "\"portal\":%d,"
            "\"chip\":\"%s\""
            "}\r\n",
            pcfg->timezone_offset,
            FW_VERSION,
            dev_id,
            1,
            0,
            ext_buf,
            0,
            0,
            CHIP_TYPE + 1
            );
    return CMD_RET_OK;
}


static int get_tm_from_json_string(cJSON *root, struct tm *times)
{
	cJSON *pjson;

	pjson = cJSON_GetObjectItem(root, "year");
    if (pjson == NULL) {
		LOGE(TAG, "get year failed");
		return CMD_RET_GET_YEAR_FAILED;
	}
	times->tm_year = pjson->valueint;
	pjson = NULL;

	pjson = cJSON_GetObjectItem(root, "month");
    if (pjson == NULL) {
		LOGE(TAG, "get month failed");
		return CMD_RET_GET_MONTH_FAILED;
	}
    times->tm_mon = pjson->valueint;
    pjson = NULL;

	pjson = cJSON_GetObjectItem(root, "day");
    if (pjson == NULL) {
		LOGE(TAG, "get day failed");
		return CMD_RET_GET_DAY_FAILED;
	}
    times->tm_mday = pjson->valueint;
    pjson = NULL;

	pjson = cJSON_GetObjectItem(root, "hour");
    if (pjson == NULL) {
		LOGE(TAG, "get hour failed");
		return CMD_RET_GET_HOUR_FAILED;
	}
    times->tm_hour = pjson->valueint;
    pjson = NULL;

	pjson = cJSON_GetObjectItem(root, "minute");
    if (pjson == NULL) {
		LOGE(TAG, "get minute failed");
		return CMD_RET_GET_MINUTE_FAILED;
	}
    times->tm_min = pjson->valueint;
    pjson = NULL;

	pjson = cJSON_GetObjectItem(root, "second");
    if (pjson == NULL) {
		LOGE(TAG, "get second failed");
		return CMD_RET_GET_SECOND_FAILED;
	}
    times->tm_sec = pjson->valueint;
    pjson = NULL;
    return CMD_RET_OK;
}

int set_time_to_json(cJSON *root){

	struct tm times;
	int err = get_tm_from_json_string(root, &times);
    if (err != CMD_RET_OK){
		return err;
	}
	time_set_curr_sec_tm(times);
    return CMD_RET_OK;
}

int check_connect_router(char *ret_buf){
	if (wifi_get_connect_status()) {
		uint8_t station_ip[4];
		device_get_sta_ip(station_ip);

		sprintf(ret_buf, "{\"res\":0,\"cmd\":19\",ip\":\"%d.%d.%d.%d\"}\r\n",
					station_ip[0],
					station_ip[1],
					station_ip[2],
					station_ip[3]
				);
	} else {
		sprintf(ret_buf, "{\"res\":1,\"cmd\":19}\r\n");
	}
	return CMD_RET_OK;
}

int get_time_info(char *info){
	struct tm time;
	time_get_curr_sec_tm(&time);
    time_t timestamp = time_get_curr_sec();

	sprintf(info, "{\"res\":0,\"cmd\":9,\"year\":%d,\"mon\":%d,\"day\":%d,\"hour\":%d,\"min\":%d,\"sec\":%d,\"stamps\":%ld}\r\n",
				(time.tm_year) + 1970,
				(time.tm_mon),
				time.tm_mday,
				time.tm_hour,
				time.tm_min,
				time.tm_sec,
				(long)timestamp
			);
    return CMD_RET_OK;
}

int setup_shutdown_timer_to_json(cJSON *root){
	struct tm times;
	int err =  get_tm_from_json_string(root, &times);
    if (err != CMD_RET_OK){
		return err;
	}

	cJSON *pts = cJSON_GetObjectItem(root, "ts");
	if (pts == NULL) {
        LOGE(TAG, "get ts failed\r\n");
		return CMD_RET_GET_TIMESTAMP_FAILED;
	}
	uint32_t ts = pts->valueint;

	cJSON *prepeat = cJSON_GetObjectItem(root, "repeat");
	if (prepeat == NULL) {
        LOGE(TAG, "get repeat failed\r\n");
		return CMD_RET_GET_REPEAT_FAILED;
	}
    int repeat = prepeat->valueint;
	char ret = timer_setup_shutdown(ts, times.tm_year, times.tm_mon,times. tm_mday, times.tm_hour, times.tm_min, times.tm_sec, (char)repeat);
	if (ret == 0) {
		return CMD_RET_SET_TIMER_FAILED;
	}
    return CMD_RET_OK;
}


int setup_powerup_timer_to_json(cJSON *root){
	struct tm times;
	int err =  get_tm_from_json_string(root, &times);
    if (err != CMD_RET_OK){
		return err;
	}

	cJSON *ptype = cJSON_GetObjectItem(root, "type");
	if (ptype == NULL) {
        LOGE(TAG, "get type failed\r\n");
		return CMD_RET_GET_TYPE_FAILED;
	}
	int type = ptype->valueint;
	cJSON *pts = cJSON_GetObjectItem(root, "ts");
	if (pts == NULL) {
        LOGE(TAG, "get ts failed\r\n");
		return CMD_RET_GET_TIMESTAMP_FAILED;
	}
	uint32_t ts = pts->valueint;

	cJSON *prepeat = cJSON_GetObjectItem(root, "repeat");
	if (prepeat == NULL) {
        LOGE(TAG, "get repeat failed\r\n");
		return CMD_RET_GET_REPEAT_FAILED;
	}
    int repeat = prepeat->valueint;
	user_timer_t *u_timer = timer_setup_powerup(ts, times.tm_year, times.tm_mon,times. tm_mday, times.tm_hour, times.tm_min, times.tm_sec, repeat);
	if (u_timer == NULL) {
		return CMD_RET_SET_TIMER_FAILED;
	}
	if (type == 1) {
		u_timer->type = TIMER_CONSTANT;
	} else if (type == 2) {
		u_timer->type = TIMER_PRESET_MODE;
	} else if (type == 3) {
		u_timer->type = TIMER_CUSTOM_MODE;
	} else {
		LOGE(TAG, "unknown type\r\n");
	}
    return CMD_RET_OK;
}

int modify_timer_to_json(cJSON *root){
    struct tm times;
	int err =  get_tm_from_json_string(root, &times);
    if (err != CMD_RET_OK)
        return err;

    cJSON *pindex = cJSON_GetObjectItem(root, "index");
    if (pindex == NULL) {
        LOGE(TAG, "get timer index failed\r\n");
        return CMD_RET_GET_DELAY_TIME_FAILED;
    }
    int idx = pindex->valueint;
    cJSON *prepeat = cJSON_GetObjectItem(root, "repeat");
    if (prepeat == NULL) {
        LOGE(TAG, "get repeat failed\r\n");
        return CMD_RET_GET_REPEAT_FAILED;
    }
    int r = prepeat->valueint;
	char repeat = (r == 1);

    if (timer_modify(idx, times.tm_year, times.tm_mon,times. tm_mday, times.tm_hour, times.tm_min, times.tm_sec, repeat)) {
        LOGI(TAG, "modify timer OK\r\n");
    } else {
        return CMD_RET_MODIFY_TIMER_FAILED;
    }
    return CMD_RET_OK;
}


int delay_shutdown_to_json(cJSON *root){
    cJSON *pts = cJSON_GetObjectItem(root, "ts");
    if (pts == NULL) {
        LOGE(TAG, "get ts failed\r\n");
        return CMD_RET_GET_TIMESTAMP_FAILED;
    }
    uint32_t ts = pts->valueint;

    cJSON *ptime = cJSON_GetObjectItem(root, "time");
    if (ptime == NULL) {
        LOGE(TAG, "get delay time failed\r\n");
        return CMD_RET_GET_DELAY_TIME_FAILED;
    }
    int delay = ptime->valueint;

    timer_setup_shutdown_with_deley(ts, delay);
    return CMD_RET_OK;
}

int cancel_timer_to_json(cJSON *root){
    cJSON *pts = cJSON_GetObjectItem(root, "ts");
    if (pts == NULL) {
        LOGE(TAG, "get ts failed\r\n");
        return CMD_RET_GET_TIMESTAMP_FAILED;
    }
    uint32_t ts = pts->valueint;
    timer_cancel_with_ts(ts);
	return CMD_RET_OK;
}


int falsh_save_ssid_to_json(cJSON *root){
    char *ssid;
    char *pass;

    cJSON *pssid = cJSON_GetObjectItem(root, "ssid");
    if (pssid == NULL) {
        LOGE(TAG, "get router ssid failed");
        return 5;
    }
    ssid = pssid->valuestring;

    cJSON *ppass = cJSON_GetObjectItem(root, "pass");
    if (ppass == NULL) {
        LOGE(TAG, "get router password failed");
        return 5;
    }
    pass = ppass->valuestring;

    LOGI(TAG, "wifi config   ssid: %s    password: %s ", ssid, pass);

	
	user_ssid_t *wifi_config = flash_get_user_ssid_config();

    memcpy(wifi_config->ssid, ssid, strlen(ssid));
    memcpy(wifi_config->password, pass, strlen(pass));


	flash_ssid_config_write();
	flash_ssid_config_to_bak_write();

	// system_delay_reset();
    return 0;
}


int get_ssid_info(char *info){
	user_ssid_t *wifi_config = flash_get_user_ssid_config();
    sprintf(info, "{\"res\":0,\"cmd\":16,\"dev_id\":\"%s\",\"ssid\":\"%s\",\"pass\":\"%s\"}\r\n", dev_id, wifi_config->ssid, wifi_config->password);
    return 0;
}


int get_version_info(char *info){
    sprintf(info, "{\"res\":0,\"cmd\":20,\"ver\":\"%s\"}\r\n", FW_VERSION);
    return CMD_RET_OK;
}


int reset_ap(void){
    user_ssid_t *pssid_cfg = flash_get_user_ssid_config();
    memset(pssid_cfg->ssid, 0, SSID_SSID_LEN);
    memset(pssid_cfg->password, 0, SSID_PASS_LEN);
    flash_ssid_config_write();
    flash_ssid_config_to_bak_write();
    return CMD_RET_OK;
}


/*
	获取定时器列表json
 */
char *get_timer_info(char *additional, char *targetBuf)
{
	char *buff = targetBuf + strlen(targetBuf);
	int i = 0, valid_timer_num = 0;
	char tmp[TEMP_BUFF_SIZE] = {0};
	// int timer_count = timer_compute_info_size(); 
	// LOGE(TAG,"##count=%d", count);

	if (additional == NULL) {
		doit_strcat(buff, "{\"res\":0,\"cmd\":21,\"timers\":[");
	} 

    user_timer_t *timer_list = timer_get_list();

	for (i = 0; i < TIMER_NUM; i++) {
		if (timer_list[i].valid) {
			valid_timer_num++;
		}
	}

	int count = 0 ;
	for (i = 0; i < TIMER_NUM; i++) {
		if (timer_list[i].valid) {
			sprintf(tmp, "{\"index\":%d,\"ts\":%ld,\"type\":%d,\"repeat\":%d",
			        i, timer_list[i].ts, timer_list[i].type, timer_list[i].repeat);
			doit_strcat(buff, tmp);
			memset(tmp, 0, TEMP_BUFF_SIZE);

			count++;
			time_t t = timer_list[i].end_tick;
			int year = 0, mon = 0, day = 0, hour = 0, min = 0, sec = 0;
			time_sec_to_time(t, &year, &mon, &day, &hour, &min, &sec);

			switch (timer_list[i].type)
			{
			case TIMER_DELAY_SHUTDOWN:
			case TIMER_SHUTDOWN: {
				sprintf(tmp, ",\"year\":%d,\"mon\":%d,\"day\":%d,\"hour\":%d,\"min\":%d,\"sec\":%d",
				        year, mon, day, hour, min, sec);
				doit_strcat(buff, tmp);
				break;
			}
			case TIMER_CONSTANT: {
#ifdef ADD_COLOR_TO_STATUS
				sprintf(tmp, ",\"year\":%d,\"mon\":%d,\"day\":%d,\"hour\":%d,\"min\":%d,\"sec\":%d,\"r\":%d,\"b\":%d,\"g\":%d,\"w\":%d,\"m\":%d",
				        year, mon, day, hour, min, sec,
				        (timer_list[i].op.pseq)[0],
				        (timer_list[i].op.pseq)[1],
				        (timer_list[i].op.pseq)[2],
				        (timer_list[i].op.pseq)[3],
				        (timer_list[i].op.pseq)[4]);
#else
				sprintf(tmp, ",\"year\":%d,\"mon\":%d,\"day\":%d,\"hour\":%d,\"min\":%d,\"sec\":%d", year, mon, day, hour, min, sec);
#endif
				doit_strcat(buff, tmp);
				break;
			}
			case TIMER_PRESET_MODE: {
				sprintf(tmp, ",\"index2\":%d,\"freq\":%d,\"year\":%d,\"mon\":%d,\"day\":%d,\"hour\":%d,\"min\":%d,\"sec\":%d",
				        0,
				        0,
				        year, mon, day, hour, min, sec);
				doit_strcat(buff, tmp);
				break;
			}
			case TIMER_CUSTOM_MODE: {
#ifdef ADD_COLOR_TO_STATUS
				sprintf(tmp, ",\"year\":%d,\"mon\":%d,\"day\":%d,\"hour\":%d,\"min\":%d,\"sec\":%d,\"mode\":%d,\"freq\":%d,\"colors\":[",
				        year, mon, day, hour, min, sec,
				        timer_list[i].op.mode_idx,
				        timer_list[i].op.freq);
				doit_strcat(buff, tmp);
				int i;
				for (i = 0; i < timer_list[i].op.elem_num; i++) {
					memset(tmp, 0, TEMP_BUFF_SIZE);
					sprintf(tmp, "{\"r\":%d,\"b\":%d,\"g\":%d,\"w\":%d,\"m\":%d},",
					        (timer_list[i].op.pseq)[CHANNEL_NUM * i],
					        (timer_list[i].op.pseq)[CHANNEL_NUM * i + 1],
					        (timer_list[i].op.pseq)[CHANNEL_NUM * i + 2],
					        (timer_list[i].op.pseq)[CHANNEL_NUM * i + 3],
					        (timer_list[i].op.pseq)[CHANNEL_NUM * i + 4]);
					doit_strcat(buff, tmp);
				}
				doit_strcat(buff, "]");
#else
				sprintf(tmp, ",\"year\":%d,\"mon\":%d,\"day\":%d,\"hour\":%d,\"min\":%d,\"sec\":%d,\"mode\":%d,\"freq\":%d",
				        year, mon, day, hour, min, sec,
				        0,////
				        0);////
				doit_strcat(buff, tmp);
#endif
				break;
			}
			default: {
				LOGE(TAG, "unknown timer type");
				break;
			}
			}

			if (valid_timer_num == count) {
				doit_strcat(buff, "}");
			} else {
				doit_strcat(buff, "},");
			}
		}
	}
	doit_strcat(buff, "]}");
	return buff;
}


/*
	获取延时关列表
 */
void timer_get_delay_shutdown_info(char *buff)
{
	sprintf(buff, "{\"res\":0,\"cmd\":22,\"timers\":[");
	int i, valid_timer_num = 0, count = 0;
	char tmp[100] = {0};

    user_timer_t *timer_list = timer_get_list();
	for (i = 0; i < TIMER_NUM; i++) {
		if (timer_list[i].valid && timer_list[i].type == TIMER_DELAY_SHUTDOWN) {
			valid_timer_num++;
		}
	}

	for (i = 0; i < TIMER_NUM; i++) {
		if (timer_list[i].valid && timer_list[i].type == TIMER_DELAY_SHUTDOWN) {
			count ++;
			time_t t = timer_list[i].end_tick;
			int year = 0, mon = 0, day = 0, hour = 0, min = 0, sec = 0;
			time_sec_to_time(t, &year, &mon, &day, &hour, &min, &sec);
			memset(tmp, 0, 100);
			if (valid_timer_num == count) {
				sprintf(tmp, "{\"index\":%d,\"ts\":%ld,\"year\":%d,\"mon\":%d,\"day\":%d,\"hour\":%d,\"min\":%d,\"sec\":%d}",
				        i, timer_list[i].ts, year, mon, day, hour, min, sec);
			} else {
				sprintf(tmp, "{\"index\":%d,\"ts\":%ld,\"year\":%d,\"mon\":%d,\"day\":%d,\"hour\":%d,\"min\":%d,\"sec\":%d},",
				        i, timer_list[i].ts, year, mon, day, hour, min, sec);
			}
			doit_strcat(buff, tmp);
		}
	}
	doit_strcat(buff, "]}\r\n");
}

int set_timezone_to_json(cJSON *root){
	cJSON *poffset = cJSON_GetObjectItem(root, "offset");
	if (poffset == NULL) {
		LOGE(TAG, "get offset failed\r\n");
		return CMD_RET_GET_TIMEZONE_OFF_FAILED;
	}

	int offset = poffset->valueint;

	user_config_t *pcfg = flash_get_user_config();
	pcfg->timezone_offset = (char)offset;
	LOGE(TAG, "offset: %d, timezone offset: %d\r\n", offset, pcfg->timezone_offset);

	flash_user_config_write();
	time_start_sync();		// sync time immediately
    upload_reset_ext();
	return CMD_RET_OK;
}

int ota_start_to_json(cJSON *root){

	cJSON *potaen = cJSON_GetObjectItem(root, "otaen");
	if (potaen == NULL) {
		LOGE(TAG, "get type failed\r\n");
		return CMD_RET_GET_REPEATER_EN_FAILED;
	}
	int otaen = potaen->valueint;
	if (otaen == 1) {
		LOGI(TAG, "!!!!!!!!!!! ota start !!!!!!!!!\n");
		doit_ota_server_init();
	}
	return CMD_RET_OK;
}


int reset_config_to_json(cJSON *root){
	cJSON *pen = cJSON_GetObjectItem(root, "en");
	if (pen == NULL) {
		LOGE(TAG, "get type failed\r\n");
		return CMD_RET_GET_REPEATER_EN_FAILED;
	}
	int en = pen->valueint;
	if (en == 1) {
		flash_reset_user_config();
		system_delay_reset();
	}
	return CMD_RET_OK;
}