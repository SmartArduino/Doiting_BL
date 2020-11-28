#include "doit_dohome_protocol.h"
#include "doit_dohome_proces.h"

#include "cJSON.h"

#include "doit_wifi.h"
#include "doit_flash.h"
#include "doit_system.h"
#include "doit_device_info.h"
#include "doit_timer.h"

#include "ulog.h"
#include "app_config.h"

#if LOG_PROTOCOL_EN
#define TAG             "dohome_protocol"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif
#define LOG_TAG     TAG

int __attribute__((weak)) dohome_product_run_cmd(int cmd, cJSON *root, char* ret_buf){
	
	return CMD_RET_UNKNOWN_CMD;
}

int parse_dohome_protocol(char *buff, int len, char *ret_buf)
{
	if (buff == NULL) {
		LOGI(TAG, "parse error buff");
		return 0;
	}

	if (len < 0) {
		LOGI(TAG, "parse error len");
		return 1;
	}

	cJSON *root = cJSON_Parse(buff);

	if (root == NULL) {
		LOGI(TAG, "json parse failed");
		return 2;
	} else {
		LOGI(TAG, "json parse successfully");
		// char *pjson = cJSON_Print(root);
		// LOGI(TAG, pjson);
		// tls_mem_free(pjson);	
	}

	cJSON *pcmd = cJSON_GetObjectItem(root, "cmd");
	if (pcmd == NULL) {
		LOGI(TAG, "get cmd failed");
		// goto PARSE_STOP;
		cJSON_Delete(root);
		return 0;
	}
	int cmd = pcmd->valueint;
	int err_no = 0;

	switch (cmd)
	{
	case REBOOT: {								// 3
		err_no = system_reset_json(ret_buf);
		break;
	}
	case GET_DEV_INFO: {						// 4
		err_no = get_device_info(ret_buf);
		cJSON_Delete(root);
		return 0;
	}
	case SET_CUSTOM_MODE: {				// 8
		break;
	}
	case GET_DEV_TIME: {					// 9
		err_no = get_time_info(ret_buf);
		cJSON_Delete(root);
		return 0;
	}
	case SYNC_DEV_TIME: {					// 10
		err_no = set_time_to_json(root);
		break;
	}
	case SET_SHUTDOWN_TIMER: {				// 13
		err_no = setup_shutdown_timer_to_json(root);		
		break;
	}
	case SET_POWERUP_TIMER: {				// 14
		err_no = setup_powerup_timer_to_json(root);		
		break;
	}
	case ROUTER_CONFIG: {					// 16
		err_no = falsh_save_ssid_to_json(root);
		get_ssid_info(ret_buf);
		cJSON_Delete(root);
		system_delay_reset();
		return 0;
	}
	case DELAY_SHUTDOWN: {					// 17
		err_no = delay_shutdown_to_json(root);
		break;
	}
	case IS_CONNECT_TO_ROUTER: {			// 19
		err_no = check_connect_router(ret_buf);
		cJSON_Delete(root);
		return 0;
	}
	case GET_VERSION: {						// 20
		err_no = get_version_info(ret_buf);
		cJSON_Delete(root);
		return 0;
	}
	case GET_DEV_TIMER: {					// 21
		get_timer_info(NULL, ret_buf);
		cJSON_Delete(root);
		return 0;
	}
	case GET_DELAY_INFO: {					// 22
		timer_get_delay_shutdown_info(ret_buf);
		cJSON_Delete(root);
		return 0;
	}
	case CANCEL_TIMER: {					// 23
		cancel_timer_to_json(root);
		break;
	}
	case MODIFY_TIMER: {					// 26
		err_no = modify_timer_to_json(root);
		break;
	}
	case RESET_AP: {						// 28
		err_no = reset_ap();
		break;
	}
	case SET_TIMEZONE: {					// 29
		set_timezone_to_json(root);
		break;
	}
	case 200: {					// 200     ota
		err_no = ota_start_to_json(root);
		break;
	}
	case 201: {					// 201     reset config
		err_no = reset_config_to_json(root);
		break;
	}
	default: {
		err_no = dohome_product_run_cmd(cmd, root, ret_buf);
		if(err_no == CMD_RET_RETURN_BUFF){
			cJSON_Delete(root);
			return 0;
		}
		break;
	}
	}
// PARSE_STOP:
	sprintf(ret_buf, "{\"res\":%d,\"cmd\":%d}\r\n", err_no, cmd);
	cJSON_Delete(root);
	return 0;
}

