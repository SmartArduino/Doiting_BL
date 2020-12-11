#ifndef _DOIT_WIFI_H_
#define _DOIT_WIFI_H_


#define SSID_PASS_LEN			64
#define SSID_SSID_LEN			64

#define REMOTE_SRV_PORT 		80
#define REMOTE_SRV_HOST         ""

 #define    TCPC_TASK_SIZE      1024


enum _WIFI_EVENT_INDICATE{
	WIFI_EVENT_CONNECT = 0,
	WIFI_EVENT_DISCONNECT,
	WIFI_EVENT_CLIENT_ONLINE
};

typedef struct {
	char ssid[SSID_SSID_LEN];
	char password[SSID_PASS_LEN];
} user_ssid_t;

typedef unsigned long wifi_event_indicate_t;

typedef void (*wifi_event_cb_t)(wifi_event_indicate_t event);

char wifi_get_connect_status(void);
char wifi_config_has_configuration(void);

int wifi_setup_ap(void);
int wifi_setup_sta(void);

void wifi_start_connect(void);
void wifi_event_handler(wifi_event_indicate_t event);
void wifi_init(wifi_event_cb_t user_wifi_event_cb);

static void tcp_server(void *arg);
#endif