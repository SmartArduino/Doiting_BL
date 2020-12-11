#include "doit_wifi.h"

#include <FreeRTOS.h>
#include <task.h>
#include <timers.h>

#include <aos/yloop.h>
#include <wifi_mgmr_ext.h>
#include <dhcp_server.h>

#include "lwip/sockets.h"
#include "lwip/sys.h"
#include <lwip/netdb.h>


#include <bl_timer.h>
#include <bl_sys_time.h>
#include <hal_wifi.h>

#include "ulog.h"



#if 1
#define TAG            "wifi"
#define LOGI           LOG_I
#define LOGE           LOG_E
#else
#define TAG            ""
#define LOGI(...)
#define LOGE(...)
#endif

static char static_wifi_connect_status = 0;
static wifi_event_cb_t static_wifi_cb = NULL;

TaskHandle_t tcpc_task_handle = NULL;


#define IPERF_PORT          80
#define IPERF_BUFSZ         (4 * 1300)



static void event_cb_wifi_event(input_event_t *event, void *private_data)
{
    switch (event->code) {
        case CODE_WIFI_ON_DISCONNECT:
        {
            LOGI(TAG, "wifi disconnect");
            if(static_wifi_connect_status != 0){
                static_wifi_connect_status = 0;
                if(static_wifi_cb != NULL){
                    static_wifi_cb(WIFI_EVENT_DISCONNECT);
                }
            }
        }
        break;
        case CODE_WIFI_ON_CONNECTED:
        {
            LOGI(TAG, "wifi connect");
        }
        break;
        case CODE_WIFI_ON_GOT_IP:
        {
            LOGI(TAG, "wifi get ip");
            if(static_wifi_connect_status != 1){
                static_wifi_connect_status = 1;
                if(static_wifi_cb != NULL){
                    static_wifi_cb(WIFI_EVENT_CONNECT);
                }
            }
        }
        break;
    }
}

static void cmd_stack_wifi(char *buf, int len, int argc, char **argv)
{
    /*wifi fw stack and thread stuff*/
    static uint8_t stack_wifi_init  = 0;


    if (1 == stack_wifi_init) {
        puts("Wi-Fi Stack Started already!!!\r\n");
        return;
    }
    stack_wifi_init = 1;

    printf("Start Wi-Fi fw @%lums\r\n", bl_timer_now_us()/1000);
    hal_wifi_start_firmware_task();
    /*Trigger to start Wi-Fi*/
    printf("Start Wi-Fi fw is Done @%lums\r\n", bl_timer_now_us()/1000);
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);

}

char wifi_get_connect_status(void){
    return static_wifi_connect_status;
}
/*
    建立STA连接
 */
int wifi_setup_sta(void){

    LOGI(TAG, "wifi_setup_sta");
    user_ssid_t wifi_info;
    strcpy(wifi_info.ssid, "Doit");                                 //wifi名称
    strcpy(wifi_info.password, "doit3305");                         //wifi密码
    wifi_interface_t wifi_interface = wifi_mgmr_sta_enable();
    wifi_mgmr_sta_connect(wifi_interface, wifi_info.ssid, wifi_info.password, NULL, NULL, 0, 0);
    return 1;
    
}


/*
    wifi连接状态
 */
void wifi_event_handler(wifi_event_indicate_t event){
    switch (event)
    {
        case WIFI_EVENT_CONNECT:
            LOGE(TAG, "wifi_connect");
	//WIFI连接成功创建TCP任务
	if (!tcpc_task_handle) {
		if (xTaskCreate(tcp_server, "tcp_server", TCPC_TASK_SIZE, NULL, 2, &tcpc_task_handle) != pdPASS) {
			LOGE(TAG, "create tcp_server fail");
		}
	}
	
            break;
        case WIFI_EVENT_DISCONNECT:
            LOGE(TAG, "wifi_disconnect");
            break;
        default:
            LOGE(TAG, "wifi_event: %d",event);
            break;
    }
}   

//TCP server任务
static void tcp_server(void *arg)
{
    char databuff[512];
    uint8_t *recv_data;
    uint32_t sin_size;
    int sock = -1, connected, bytes_received;
    struct sockaddr_in server_addr, client_addr;
    char *host = (char*)arg;

    LOGE(TAG," start  tcp_server ");
    recv_data = (uint8_t *)pvPortMalloc(IPERF_BUFSZ);
    if (recv_data == NULL)
    {
        LOGE(TAG,"No memory");
        goto __exit;
    }

    (void) host;
    sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock < 0) {
        LOGE(TAG,"Socket error");
        goto __exit;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(IPERF_PORT);
    server_addr.sin_addr.s_addr = INADDR_ANY;//INADDR_ANY;
    memset(&(server_addr.sin_zero), 0x0, sizeof(server_addr.sin_zero));

    if (bind(sock, (struct sockaddr *)&server_addr, sizeof(struct sockaddr)) == -1) {
        LOGE(TAG,"Unable to bind");
        goto __exit;
    }

    if (listen(sock, 5) == -1) {
        LOGE(TAG,"Listen error");
        goto __exit;
    }

    while (1) {
        sin_size = sizeof(struct sockaddr_in);

        connected = accept(sock, (struct sockaddr *)&client_addr, (socklen_t *)&sin_size);
        LOGI(TAG,"new client connected from (%s, %d)",
                  inet_ntoa(client_addr.sin_addr),ntohs(client_addr.sin_port));


        {
            int flag = 1;

            setsockopt(connected,
                IPPROTO_TCP,     /* set option at TCP level */
                TCP_NODELAY,     /* name of option */
                (void *) &flag,  /* the cast is historical cruft */
                sizeof(int));    /* length of option value */


        }
        while (1) {
            
            memset(databuff, 0x00, sizeof(databuff));
			bytes_received= recv(connected, databuff, sizeof(databuff), 0);
            if (bytes_received <= 0) break;
			send(connected, databuff, strlen(databuff), 0);//将接收到的消息发送回客户端
            LOGE(TAG, "recv: %s", databuff);

        }

        if (connected >= 0) closesocket(connected);
        connected = -1;
    }

__exit:
    if (sock >= 0) closesocket(sock);
    if (recv_data) vPortFree(recv_data);
    if (arg) vPortFree(arg);
}

/*
    wifi初始化
 */
void wifi_init(wifi_event_cb_t user_wifi_event_cb) {
    
	LOGI(TAG, "wifi init");
    cmd_stack_wifi(NULL, 0, 0, NULL);
    static_wifi_cb = user_wifi_event_cb;
    void wifi_set_event_cb(void (*user_wifi_cb)(input_event_t *event, void *private_data));
	wifi_set_event_cb(event_cb_wifi_event);

}







