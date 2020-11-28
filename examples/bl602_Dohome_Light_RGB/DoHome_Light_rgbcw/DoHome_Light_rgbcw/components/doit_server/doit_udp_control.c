#include "doit_udp_control.h"

#include <FreeRTOS.h>
#include <task.h>
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "lwip/udp.h"
#include <lwip/netdb.h>
#include "lwip/pbuf.h"

#include "cJSON.h"
#include "doit_wifi.h"
#include "doit_utils.h"
#include "doit_device_info.h"
#include "doit_dohome_protocol.h"

#include "ulog.h"
#include "app_config.h"

#if LOG_UDP_EN
#define TAG     		"udp_control"
#define LOGI            LOG_I
#define LOGE           	LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif

#define LOG_TAG     TAG

static char ping_ret_data[512];
static bool send_discovery_flag = true;
static int send_discovery_count = 0;

static void ping_ret_data_init(void)
{
	uint8_t station_ip[4] = {0};
	device_get_sta_ip(station_ip);
    sprintf(ping_ret_data, "cmd=pong&host_ip=192.168.4.1"
            "&sta_ip=%d.%d.%d.%d"
            "&device_id=%s"
            "&device_key=%s"
            "&device_name=%s%02x%02x"
            "&device_type=%s"
            "&compandy_id=%s"
            "&chip=%s\r\n",
            station_ip[0], station_ip[1], station_ip[2], station_ip[3],
            dev_id,
            dev_key,
			DEVIVE_NAME_PREFIX,
            station_mac[4], station_mac[5],
            HARDWARE_TYPE,
            ORGANIZATION,
            CHIP_TYPE + 1
           );

    LOGI(TAG, "ping_ret_data: %s", ping_ret_data);
}

static char udp_send_msg(struct udp_pcb *pcb, ip_addr_t *addr, u16_t port, char *content, int len)
{
	struct pbuf *buf = pbuf_alloc(PBUF_TRANSPORT, len, PBUF_RAM);
	if (buf == NULL) {
		LOGE(TAG, "not enough memory\r\n");
		return 0;
	}
	memset(buf->payload, 0 , buf->len);
	memcpy(buf->payload, content, len);
	udp_sendto(pcb, buf, addr, port);
	pbuf_free(buf);
	return 1;
}

static void parse_udp_package(struct udp_pcb *pcb, ip_addr_t *addr, u16_t port, char *buff, int len)
{

	//清除UDP包的主机等信息
	char *data_rchr = doit_strrchr(buff, '}');
	if(NULL != data_rchr){
		*(data_rchr+1) = 0;
	}

	LOGI(TAG, "udp_package: %s", buff);

	if (strstr(buff, "cmd=ping") != NULL) {
		LOGI(TAG, "udp_recv: cmd=ping");
		// LOGI(TAG, "udp_ping_ret: %s", ping_ret_data);
		udp_send_msg(pcb, addr, port, ping_ret_data, strlen(ping_ret_data));

	} else if (strstr(buff, "cmd=ctrl") != NULL) {		// example: cmd=ctrl&devices={[abcd,1234]}&op={"cmd":6,"r":1,"g":2,"b":3,"w":4,"m":5}
	
		char id[8] = {0};
		sprintf(id, "%02x%02x", station_mac[4], station_mac[5]);
		// LOGI(TAG, "udp_ctrl_id: %s", id);
		
		//比较id的同时防止op数据的干扰
		if ( (strstr(buff, id) != NULL) && (strstr(buff, id) < strstr(buff, "op="))) {
			// LOGI(TAG, "udp_ctrl_package: %s", buff);

			// LOGI(TAG, "recv udp cmd from id: %s", id);
			char *pstart = strstr(buff, "op=");
			// LOGI(TAG, "exe udp op=:%s", pstart + 3);
			
			if (pstart != NULL) {
				char *buf = malloc(256);
				
				if (buf == NULL ) {
					LOGE(TAG, "buf Application memory failed");
					return;
				}

				sprintf(buf, "cmd=echo&dev=%s&op=", dev_id);
				
				parse_dohome_protocol(pstart + 3, len - (pstart + 3 - buff), buf + strlen(buf));
				LOGI(TAG, "udp_ctrl_ret: %s", buf);
				udp_send_msg(pcb, addr, port, buf, strlen(buf));
				
				free(buf);
			}
		}
	}else if (strstr(buff, "cmd=bin_slot") != NULL) {
		int slot = 1;
		char *buf = malloc(16);
		if (buf == NULL ) {
			LOGI(TAG, "buf Application memory failed");
			return;
		}
		sprintf(buf, "slot=%d", slot);
		udp_send_msg(pcb, addr, port, buf, strlen(buf));
		free(buf);

	} else {
		LOGI(TAG, "unknown command!!\r\n");
	}
}

static void udpecho_raw_recv(void *arg, struct udp_pcb *pcb, struct pbuf *p, const ip_addr_t *addr, short unsigned int port)
{
	LWIP_UNUSED_ARG(arg);
	if (p == NULL) {
		LOGE(TAG, "p == NULL\r\n");
		return;
	}

	// LOGI(TAG, "udpecho_raw_recv: %s",p->payload);
	parse_udp_package(pcb, (ip_addr_t *)addr, port, p->payload, p->len);

	pbuf_free(p);
}

static char create_udp_server() {

	LOGI(TAG, "Create Udp Server succeed port : %d \n", UDP_SRV_PORT);

	struct udp_pcb *pcb;
	pcb = (struct udp_pcb *)udp_new();
	udp_bind(pcb, IP_ADDR_ANY, UDP_SRV_PORT);
	/* no need to loop forever */
	udp_recv(pcb, udpecho_raw_recv, pcb);

	return 1;
}

static void udp_send_discovery_data(void *pvParameters)
{
	vTaskDelay(100 / portTICK_RATE_MS);
	
	struct sockaddr_in remote_addr;

	LOGI(TAG, "Now Let us create udp client ... ");

	uint32_t bsip = device_get_broadcast_ip();
	uint8_t *bsip8 = (uint8_t *)&bsip;

	LOGI(TAG, "connecting to %d.%d.%d.%d:%d",
	             bsip8[0], bsip8[1], bsip8[2], bsip8[3], UDP_BROADCAST_INFO_PORT);

	int socket_fd = socket(AF_INET, SOCK_DGRAM, 0);

	if (socket_fd < 0) {
		LOGE(TAG, "client create socket error , stop !!!");
		close(socket_fd);
	} else {
		LOGI(TAG, "client create socket Succeed  !!!");
	}

	/*for client remote_addr is also server_addr*/
	remote_addr.sin_family = AF_INET;
	remote_addr.sin_port = htons(UDP_BROADCAST_INFO_PORT);
	remote_addr.sin_addr.s_addr = bsip;

	while (1) {
		if(send_discovery_flag){
			LOGI(TAG, "udp send_discovery_count: %d", send_discovery_count);
			sendto(socket_fd, ping_ret_data, strlen(ping_ret_data), 0,
						(struct sockaddr *) &remote_addr, sizeof(remote_addr));
			send_discovery_count++;

			if (send_discovery_count >= 60) {
				send_discovery_count = 0;
				send_discovery_flag = false;
			}
			vTaskDelay(500 / portTICK_RATE_MS);
		}else{
			vTaskDelay(1000 / portTICK_RATE_MS);
		}
	}
	close(socket_fd);
	vTaskDelete(NULL);
}

#define DISCOVERY_TASK_SIZE      512
#define DISCOVERY_TASK_PRI       5     
TaskHandle_t discovery_task_handle = NULL;

void   doit_udp_control_init(void)
{

	ping_ret_data_init();
	send_discovery_flag = true;
	send_discovery_count = 0;

	if(!discovery_task_handle){
		create_udp_server();

		if (xTaskCreate(udp_send_discovery_data, "discovery_task", DISCOVERY_TASK_SIZE, NULL, DISCOVERY_TASK_PRI, &discovery_task_handle) != pdPASS) {
			LOGE(TAG, "create discovery_task error");
		}
	}
}
