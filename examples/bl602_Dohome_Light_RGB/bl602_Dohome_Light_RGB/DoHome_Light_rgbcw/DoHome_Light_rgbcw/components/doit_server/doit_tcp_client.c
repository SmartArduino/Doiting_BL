#include "doit_tcp_client.h"

#include <FreeRTOS.h>
#include <task.h>
#include <timers.h>

#include "lwip/sockets.h"
#include "lwip/sys.h"
#include <lwip/netdb.h>

#include "doit_wifi.h"
#include "doit_device_info.h"
#include "doit_dohome_protocol.h"

#include "ulog.h"
#include "app_config.h"

#if LOG_TCP_EN
#define TAG             "tcp_client"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif

#define LOG_TAG     TAG


static int g_client_fd = 0;
bool b_start_keep_alive = false;

static TimerHandle_t tcpc_Handle;

static int TCPSetKeepAlive( int sockfd, int keepAlive, int keepIdle, int keepInterval, int keepCount ) {

	int tvKeepAlive = keepAlive;
	int tvKeepIdle = keepIdle / 1000;
	int tvKeepInterval = keepInterval / 1000;
	int tvKeepCount = keepCount;
	//bool bDontLinger = false;

	//if (setsockopt(sockfd, SOL_SOCKET, SO_DONTLINGER, (const char*)&bDontLinger, sizeof(bool)) < 0) {
	//	LOGI(TAG, "Set setsockopt bDontLinger failed");
	//}

	if ( setsockopt( sockfd, SOL_SOCKET, SO_KEEPALIVE, ( void * )&tvKeepAlive, sizeof( int ) ) < 0 ) {
		LOGI(TAG, "Set setsockopt keep alive failed");
	}
	if ( setsockopt( sockfd, IPPROTO_TCP, TCP_KEEPIDLE, ( void * )&tvKeepIdle, sizeof( int ) ) < 0 ) {
		LOGI(TAG, "Set setsockopt keep idle failed");
	}
	if ( setsockopt( sockfd, IPPROTO_TCP, TCP_KEEPINTVL, ( void * )&tvKeepInterval, sizeof( int ) ) < 0 ) {
		LOGI(TAG, "Set setsockopt keep interval failed");
	}
	if ( setsockopt( sockfd, IPPROTO_TCP, TCP_KEEPCNT, ( void * )&tvKeepCount, sizeof( int ) ) < 0 ) {
		LOGI(TAG, "Set setsockopt keep count failed");
	}
	return 0;
}

/*
	处理tcp服务下发的数据
 */
static void parse(int socket, char *buff, int len)
{
	// LOGI(TAG, "tcp_package: %s", buff);
	if (strstr(buff, "cmd=subscribe") != NULL) {
		char *pstart = strstr(buff, "res=");
		if (pstart != NULL) {
			pstart += strlen("res=");
			int r = *pstart - '0';
			if (r == 1) {
				LOGI(TAG, "register device on remote server OK");
			} else {
				LOGI(TAG, "register device failed!");
			}
		} else {
			LOGI(TAG, "result not found!");
		}
	} else if (strstr(buff, "cmd=publish") != NULL) {
		char *pstart = strstr(buff, "message=");
		if (pstart != NULL) {
			pstart += strlen("message=");
			char ret_buf[256];
			parse_dohome_protocol(pstart, len - (pstart - buff), ret_buf);
		} else {
			LOGI(TAG, "message not found!");
		}
	} else if (strstr(buff, "cmd=keep") != NULL) {
		LOGI(TAG, "send heartbeat OK");
	} else {
		LOGI(TAG, "no such command");
	}
}


static void vTimerCallback(TimerHandle_t timer)
{
	//服务器连接上了,开始发送心跳
	if (b_start_keep_alive) {
		char keep_msg[256];
		memset(keep_msg, 0x00, sizeof(keep_msg));
		sprintf(keep_msg, "cmd=keep&device_id=%s&device_key=%s\r\n", dev_id, dev_key);
		send(g_client_fd, keep_msg, strlen(keep_msg), 0);
		LOGI(TAG, "keepalive buff: %s", keep_msg);
	} else {
		// LOGI(TAG, "tcp client disconnect=====");
	}
}

//this task establish a TCP connection and receive data from TCP
static void tcp_client_conn(void *pvParameters)
{
	LOGI(TAG, "will connect tcp server host: %s port:%d",
	     REMOTE_SRV_HOST, REMOTE_SRV_PORT);
	char re_hostbyname_cnt = 0;
	char databuff[512];
	memset(databuff, 0x00, sizeof(databuff));
	char sub_buf[200];
	memset(sub_buf, 0x00, sizeof(sub_buf));
	struct sockaddr_in server_addr;
	int client_fd = -1;
	struct hostent *server_host = NULL;
	while (1) {

		if (!wifi_get_connect_status()) {
			// LOGI(TAG, "wifi disconnected!");
			vTaskDelay(1000 / portTICK_RATE_MS);
			continue;
		}
		
		client_fd = socket(AF_INET, SOCK_STREAM, 0);

		if (client_fd < 0) {
			LOGI(TAG, "create socket fail: %d", client_fd);
			vTaskDelay(1000 / portTICK_RATE_MS);
			continue;
		}

		memset(&server_addr, 0, sizeof(server_addr));
		server_addr.sin_family = AF_INET;
		server_addr.sin_port = htons(REMOTE_SRV_PORT);


		server_host = (struct hostent *)gethostbyname((char *)REMOTE_SRV_HOST);
		if (server_host == NULL) {
			vTaskDelay(1000 / portTICK_RATE_MS);
			re_hostbyname_cnt++;
			LOGI(TAG, "[ERROR] Get host ip failed");
			if (re_hostbyname_cnt < 30) {
				close(client_fd);
				continue;
			}
		}

		if (re_hostbyname_cnt >= 30) {
			LOGE(TAG,  "DNS resolution failed, use fixed IP");
			uint8_t upload_srv_ip[4] = {115, 28, 78, 23}; //"115.28.78.23"
			memcpy(&server_addr.sin_addr.s_addr, upload_srv_ip, 4);
			// server_addr.sin_addr.s_addr = 0x174e1c73;//"115.28.78.23"
		} else {
			LOGI(TAG, "[ERROR] Get host ip ok %d\r\n", re_hostbyname_cnt);
			memcpy((void *)&server_addr.sin_addr.s_addr, (void *)server_host->h_addr, (size_t)server_host->h_length);
		}

		re_hostbyname_cnt = 0;
		uint8_t sip[4];
		memcpy(sip, (void *)&server_addr.sin_addr.s_addr, 4);
		LOGI(TAG, "connectting server:%s(%d.%d.%d.%d)",
		     REMOTE_SRV_HOST, sip[0], sip[1], sip[2], sip[3]);

		for (;;) {
			//连接服务器
			if (connect(client_fd, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0) {
				LOGE(TAG, "client connect %d", client_fd);
				LOGI(TAG, "connect failed!");
				vTaskDelay(5000 / portTICK_RATE_MS);
				close(client_fd);
				break;
			}

			LOGI(TAG, "connect success!");
			g_client_fd = client_fd;

			TCPSetKeepAlive(client_fd, 1, 20 * 1000, 3000, 2 );
			const struct timeval timeout = { 10, 0 }; /* 3 second timeout */
			setsockopt(client_fd, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout));
			memset(sub_buf, 0x00, sizeof(sub_buf));
			//发送注册包
			sprintf(sub_buf, "cmd=subscribe&device_id=%s&device_key=%s\r\n", dev_id, dev_key);
			LOGI(TAG, "\nsubscribe buff: %s", sub_buf);
			send(client_fd, sub_buf, strlen(sub_buf), 0);

			b_start_keep_alive = true;

			while (1) {
				memset(databuff, 0x00, sizeof(databuff));
				// int len = readline(client_fd, databuff, sizeof(databuff));
				// LOGI(TAG, "*----len-----*: %d\n", len);
				// if (len > 0) {
				// 	LOGI(TAG, "recv_data: %s\n", databuff);
				// 	parse(client_fd, databuff, len);
				// }
				int len = recv(client_fd, databuff, sizeof(databuff), 0);
				if (len > 0) {
					//粘包处理
					int begin_flag=0;
					char *p=databuff;
					for (int i = 0; i < len; ++i){
						//在当前查看的这段缓冲区中含有'\n', 则说明已经读取一行了
						if (databuff[i] == '\n')
						{
							databuff[i]=0;
							parse(client_fd, p, i-begin_flag+1);
							p=databuff+i+1;
							begin_flag=i+1;
						}
					}
				}
				if (len == 0) {
					LOGE(TAG, "close fd %d", client_fd);
					break;
				}
				if (len < 0) {
					if (errno == EAGAIN || errno == EWOULDBLOCK || errno == EINTR) {
						;
					} else {
						LOGE(TAG, "len < 0");
						break;
					}
				}
			}
			close(client_fd);
			b_start_keep_alive = false;
			break;
		} //recv
	}
	while (1)
	{
		vTaskDelay(10000 / portTICK_RATE_MS);
	}
	// vTaskDelete(NULL);
}


#define    TCPC_TASK_SIZE      1024
TaskHandle_t tcpc_task_handle = NULL;

void doit_tcp_client_init(void)
{

	LOGI(TAG, "doit_tcp_client_init.");
	if (!tcpc_task_handle) {
		if (xTaskCreate(tcp_client_conn, "tcp_client_conn", TCPC_TASK_SIZE, NULL, 2, &tcpc_task_handle) != pdPASS) {
			LOGE(TAG, "create tcp_client_conn fail");
		}
	}

	//创建定时心跳
	if (tcpc_Handle == NULL) {
		tcpc_Handle = xTimerCreate("keepalive", KEEPALIVE_TIME / portTICK_RATE_MS, pdPASS, 0, vTimerCallback);
	}
}