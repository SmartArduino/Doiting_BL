#ifndef _DOIT_CONFIG_H_
#define _DOIT_CONFIG_H_

#include <string.h>

/*
 * Log config
*/
#define USE_UART_LOG	    1
#define LOG_COLOR_ENABLE    0
#define USE_UDP_LOG         0

#if USE_UART_LOG
#define LOG_MIAN_EN       1
#define LOG_WIFI_EN       1
#define LOG_FLASH_EN      1
#define LOG_UTILS_EN      0
#define LOG_PROTOCOL_EN   1
#define LOG_DEVICE_EN     1
#define LOG_UDP_EN        1
#define LOG_LIGHT_EN      0
#define LOG_TCP_EN        0
#define LOG_TCP_CONFIG_EN 1
#define LOG_HTTP_EN       1
#define LOG_UPLOAD_EN     1
#define LOG_SNTP_EN       1
#define LOG_TIMER_EN      1
#define LOG_PROCES_EN     0
#define LOG_LED_DRIVE_EN  0
#define LOG_LED_BOARD_EN  0
#define LOG_OTA_EN        1
#define LOG_UDPLOG_EN     0
#define LOG_FACTORY_EN    1
#define LOG_KEY_EN        1
#define LOG_LOG_EN        1
#define LOG_IR_EN         1
#define LOG_PRODUCT_EN    1
#endif



/*
 * product config
*/
#define IS_WYRGB
// #define IS_WY
// #define IS_STRIP
#if defined IS_STRIP
#define HARDWARE_TYPE			"_STRIPE"
#elif defined IS_WYRGB
#define DEVIVE_NAME_PREFIX      "Light_"
#define HARDWARE_TYPE			"_DT-WYRGB"
#define PIN_LED_R		27
#define PIN_LED_G		13
#define PIN_LED_B		26
#define PIN_LED_W		4
#define PIN_LED_Y		16
#elif defined IS_WY
#define HARDWARE_TYPE			"_DT-WY"
#else
#define HARDWARE_TYPE			"_LED"
#endif



/*
 * doit config
*/
#define FW_VERSION				"1.1.0"
#define DEF_SSID_PREFIX			"DoHome_"
#define DEF_HOSTNAME			"DoHome"

#define ORGANIZATION			"_DOIT"
#define CHIP_TYPE				"_ESP32"

#define REMOTE_SERVER_IP        "115.28.78.23"      

#define REMOTE_SRV_HOST			"led_iot.doit.am"
#define REMOTE_SRV_PORT			8899//6007

#define UPLOAD_SRV_HOST			"dohome.doit.am"
#define UPLOAD_SRV_PORT			8008

#define NTP_SERVER_HOST		    "xinfeng.doit.am"
#define NTP_SERVER_PORT			80

#define UPLOAD_SRV_URL			"http://dohome.doit.am:8008"
#define NTP_SERVER_URL		    "http://xinfeng.doit.am/iot_api/get_iot_time.php"

#define MAX_STA_NUM				3
#define TCP_SRV_PORT			5555

#define	SPI_FLASH_SEC_SIZE		4096

#define UDP_BROADCAST_INFO_PORT	6095
#define UDP_SRV_PORT			6091

#define WEB_SRV_PORT			80
#define DNS_SRV_PORT			53

#define OTA_TCP_PORT			6093
#define OTA_TCP_ECHO_PORT		6094

#define HTTP_UPO
#define WIFI_DEF_MAGIC 			0x03

#define KEEPALIVE_TIME 			60*1000

#define RESTART_TRIGGER_COUNT      3

#define EXT_UPLOAD_PERIOD	        (60)		//second		
#define BASE_UPLOAD_PERIOD	        (50)	    //second

#define SYNC_TIME_PERIOD	        (30*60)         //second

#define MIN_TIMEZONE_OFFSET		0
#define MAX_TIMEZONE_OFFSET		23

#define TIMER_NUM				7		// you can setup at most TIMER_NUM timer

#define SEQ_SIZE				(16 * 5)
#define POWERUP_COLOR_MAX_NUM	16
#define MAX_CUSTOM_COLOR		16

#define OTA_PKG_SIZE			240
#define HB_SEND_MAX_COUNT		8

#define SSID_PASS_LEN			64
#define SSID_SSID_LEN			32

#define COLOR_MAX			    1000
#define LIGHT_GRA_STEP          10

#define USE_WM_HTTP             0
#ifndef IS_STRIP_WS2812
#define USE_RTC_TIME            1
#endif

#define RESTART_REASON_RESET_NULL					0
#define RESTART_REASON_RESET_DEV					1
#define RESTART_REASON_REBOOT_REQ					2


#endif /*_USER_CONFIG_H_*/