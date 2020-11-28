#ifndef _DOIT_DOHOME_PROTOCOL_H_
#define _DOIT_DOHOME_PROTOCOL_H_

#include "app_config.h"

#define CMD_RET_OK						0   //没有错误
#define CMD_RET_SCAN_FAILED				1
#define CMD_RET_SCAN_TIMEOUT				2
#define CMD_RET_INVALID_PASSWORD			3
#define CMD_RET_GET_CMD_FAILED				4
#define CMD_RET_GET_STATUS_FAILED			5
#define CMD_RET_SCAN_RES_NULL				6
#define CMD_RET_GET_PASSWORD_FAILED		7
#define CMD_RET_GET_LED_OP_FAILED			8
#define CMD_RET_GET_SSID_FAILED			9
#define CMD_RET_GET_RED_FAILED				10
#define CMD_RET_GET_BLUE_FAILED			11
#define CMD_RET_GET_GREEN_FAILED			12
#define CMD_RET_GET_WHITE_FAILED			13
#define CMD_RET_GET_M_FAILED				14
#define CMD_RET_GET_MODE_INDEX_FAILED		15
#define CMD_RET_GET_FREQ_FAILED			16
#define CMD_RET_GET_TIME_JSON_FAILD		17
#define CMD_RET_GET_YEAR_FAILED			18
#define CMD_RET_GET_MONTH_FAILED			19
#define CMD_RET_GET_DAY_FAILED				20
#define CMD_RET_GET_HOUR_FAILED			21
#define CMD_RET_GET_MINUTE_FAILED			22
#define CMD_RET_GET_SECOND_FAILED			23
#define CMD_RET_MALLOC_FAILED				24
#define CMD_RET_SET_SHUTDOWN_TIMER_FAILED	25
#define CMD_RET_UNKNOWN_CMD				   26
#define CMD_RET_GET_TIMER_INDEX_FAILED		27
#define CMD_RET_GET_DELAY_TIME_FAILED		28
#define CMD_RET_GET_TYPE_FAILED			29
#define CMD_RET_SET_TIMER_FAILED			30
#define CMD_RET_GET_COLOR_ARR_FAILED		31
#define CMD_RET_TOO_MANY_CUSTOM_COLOR		32
#define CMD_RET_GET_OP_FAILED				33
#define CMD_RET_CHANGE_RMT_CTRL_FAILED		34
#define CMD_RET_GET_POWERUP_INFO_FAILED	35
#define CMD_RET_MODIFY_TIMER_FAILED		36
#define CMD_RET_GET_MODE_LIST_FAILED		37
#define CMD_RET_GET_MODE_ITEM_FAILED		38
#define CMD_RET_GET_LOOP_FAILED			39
#define CMD_RET_TOO_MANY_MODE				40
#define CMD_RET_GET_REPEAT_FAILED			41
#define CMD_RET_GET_TIMER_INFO_FAILED		42
#define CMD_RET_GET_TIMEZONE_OFF_FAILED	43
#define CMD_RET_NOT_CONN_ROUTER			44
#define CMD_RET_GET_TIMESTAMP_FAILED		45
#define CMD_RET_GET_REPEATER_EN_FAILED		46
#define CMD_RET_GET_PORT_FAILED			47
#define CMD_RET_GET_VAL_FAILED				48
#define CMD_RET_GET_IS_ON_FAILED			49
#define CMD_RET_GET_WEEKDAY_FAILED			50
#define CMD_RET_GET_WRONG_WEEKDAY			51
#define CMD_RET_GET_WEEKDAY_ITEM_FAILED	52
#define CMD_RET_GET_ERROR_TIMER_TYPE		53
#define CMD_RET_GET_ERROR_NO_PRODUCT		54

#define CMD_RET_PARSE_FAILED				101

#define CMD_RET_RETURN_BUFF					200


typedef enum {
	INVALID_CMD = 0,
	GET_WIFI_SCAN_RES,					// 1    WIFI扫描数据   ret {“res”:0,“cmd”:1,“wifi”:[{“ssid”:”aaa”, ”enc”:0, “rssi”:56},..]}
	MODIFY_SSID,						// 2    修改AP SSID PWD  recv {“cmd”:2,“ssid”:”abc”,“pass”:”88888888”}
	REBOOT,								// 3    重启
	GET_DEV_INFO,						// 4	设备信息 recv {“res”:0,“cmd”:4,“tz”:19,“tzMinute”:10,“dev_id”:”AB0352EB”,“ver”:”1.1.0”,“conn”:1,“remote”:0,“save_off_stat”:0,“repeater”:0,“portal”:0}
	SWITCH_OPERATE,						// 5    开灯 recv {“cmd”:5,“op”:0“stamps”:1234567890}
	CHANGE_COLOR,						// 6	调光	recv {“cmd”:6,“r”:0,“g”:1,“b”:2,“w”:3,“m”:4,“on”:1,“temp”:1}
	SET_PRESET_MODE,					// 7	设置炫彩灯光   recv {“cmd”:7,“index”:0,“freq”:22}
	SET_CUSTOM_MODE,					// 8	设置自定义炫彩灯光  recv  {“cmd”:8,“colors”:[{“r”:1,”g”:2,”b”:3,”w”:4},..],“mode”:1,“freq”:22}
	GET_DEV_TIME,						// 9	获取时间  ret {“res”:0,“cmd”:9,“year”:2018,“month”:1,“day”:10,“hour”:19,“minute”:20,“second”:10}
	SYNC_DEV_TIME = 10,					// 10 	同步时间  recv {“cmd”:10,“year”:2018,“month”:1,“day”:10,“hour”:19,“minute”:20,“second”:10}
	SET_POWERUP_LED_STATUS,				// 11   查询上电插座开关状态（固定还是保持） ret {“res”:0,“cmd”:11“op”:0}
	REMEMBER_SHUTDOWN_LED_STATUS,		// 12	设置上电状态 recv {“cmd”:12,“op”:1} op表示上电关状态；1表示上电开；2表示使用上次状态（记录上次状态）
	SET_SHUTDOWN_TIMER,					// 13   设置定时关灯 recv {“cmd”:13,“ts”:12344556,“year”:2018,“month”:1,“day”:10,“hour”:19,“minute”:20,“second”:10,“repeat”:0}
	SET_POWERUP_TIMER,					// 14	设置定时开灯 recv {“cmd”:14,“ts”:12344556,“year”:2018,“month”:1,“day”:10,“hour”:19,“minute”:20,“second”:10, “r”:1,“g”:2,“b”:3,“w”:4,“m”:5, “type”:1,“repeat”:0}
	REMOTE_CONTROL_ENABLE,				// 15   远程控制使能 recv {“cmd”:15,“op”:0}
	ROUTER_CONFIG,						// 16	设置路由 recv {“cmd”:16,“ssid”:”test_ssid”,“pass”:”12345567”“bssid”:”12:b3:e8:33:90:7d”“tz”:10}
	DELAY_SHUTDOWN,						// 17	设置延时关灯 recv {“cmd”:17,“time”:15,“ts”:12344556} min
	START_OTA,							// 18   OTA
	IS_CONNECT_TO_ROUTER,				// 19   查询路由连接情况 ret {“res”:0,“cmd”:19,“ip”:”192.168.1.100”}
	GET_VERSION,						// 20   查询挂件版本 ret {“res”:0,“cmd”:20,“ver”:”1.1.0”}
	GET_DEV_TIMER,						// 21   查询定时器信息 ret {“res”:0,“cmd”:21,“timers”:[{“index”:1,”type”:0,”year”:2018,”mon”:1,”day”:2,”hour”:10,”min”:2,”sec”:20,”repeat”:0},...]}
	GET_DELAY_INFO,						// 22   查询延时关灯设置 ret {“res”:0,“cmd”:22,“timers”:[{“index”:5,”year”:2018,”mon”:7,”day”:23,”hour”:19,”min”:2,”sec”:2,”ts”:4234566},...]}
	CANCEL_TIMER,						// 23   取消定时器 recv {“cmd”:23,“ts”:3344356}
	GET_POWERUP_STATUS,					// 24   查询上电开灯状态 ret {“res”:0,“cmd”:24,“type”:0,……}
	GET_LED_STATUS,						// 25	查询当前状态
	MODIFY_TIMER,						// 26   修改定时任务 recv {“cmd”:26,“index”:1,“year”:2018,“mon”:8,“day”:8,“hour”:11,“min”:22,“sec”:1,“repeat”:1,}
	PRESET_MODE_COMBO,					// 27   预设动态模式组合 recv {“cmd”:27,“repeat”:1,“list”:[{“index”:1,”freq”:30,”loop”:3},{“index”:2,”freq”:40,”loop”:6},……]}
	RESET_AP,							// 28   重置 recv {“res”:0,“cmd”:28,}
	SET_TIMEZONE,						// 29   设置时区 recv { “cmd”:29,“offset”:2,“tzMinute”:0~59}
	ENABLE_REPEATER,					// 30   中继 recv { “cmd”:30,“en”:1,}
	ENABLE_PORTAL,						// 31   门户 recv { “cmd”:31,“en”:1,}
	SET_PORTAL_TEXT,					// 32   设置门户内容 recv { “cmd”:32,“text”:”hello world”,}
	SET_LIGHT_PERCENT,					// 33   调节亮度百分比（当前的%） recv { “cmd”:33,“sign”:0,“val”:30}
	SET_TO_PERCENT,						// 34   调节亮度百分为 recv { “cmd”:34, “val”:30}
#ifdef IS_STRIP
	SET_IR_GPIO,						// 35	设置灯带管脚（rgb对应） recv { “cmd”:35,“type”:1}
#endif
	
	UNKNOWN_CMD,
} app_command;

int parse_dohome_protocol(char *buff,int len, char *ret_buf);

#endif