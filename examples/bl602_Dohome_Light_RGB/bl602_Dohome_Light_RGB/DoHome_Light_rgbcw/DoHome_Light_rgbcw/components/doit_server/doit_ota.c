#include "doit_ota.h"

#include <stdlib.h>
#include <string.h>
#include <lwip/mem.h>
#include <lwip/memp.h>
#include <lwip/sockets.h>
#include <lwip/netdb.h>

#include <FreeRTOS.h>
#include <task.h>

#include "ulog.h"
#include "app_config.h"
#include "doit_system.h"

#include <hal_boot2.h>
#include <hal_sys.h>
#include <utils_sha256.h>
#include <bl_sys_ota.h>
#include <bl_mtd.h>

#if LOG_OTA_EN
#define TAG             "ota"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif


#define USE_NEW_OTA

//OTA header大小
#define OTA_HEADER_SIZE 		(512)

typedef struct ota_header {
    union {
        struct {
            uint8_t header[16];

            uint8_t type[4];//RAW XZ
            uint32_t len;//body len
            uint8_t pad0[8];

            uint8_t ver_hardware[16];
            uint8_t ver_software[16];

            uint8_t sha256[32];
        } s;
        uint8_t _pad[512];
    } u;
} ota_header_t;


unsigned char sig_backup[32];

uint8_t written_data[256] = {0};

static bl_mtd_handle_t handle;
static HALPartition_Entry_Config ptEntry;

static int use_xz = 0;
static ota_header_t *ota_header;
static uint32_t ota_bin_size = 0;

static iot_sha256_context ctx;
static uint8_t sha256_result[32];

static uint8_t *ota_header_buffer;

#ifdef USE_NEW_OTA
static uint32_t sequence_num = 0;
#endif


static int _check_ota_header(ota_header_t *ota_header, uint32_t *ota_len, int *use_xz)
{
    char str[33];//assume max segment size
    int i;

    memcpy(str, ota_header->u.s.header, sizeof(ota_header->u.s.header));
    str[sizeof(ota_header->u.s.header)] = '\0';
    puts("[OTA] [HEADER] ota header is ");
    puts(str);
    puts("\r\n");

    memcpy(str, ota_header->u.s.type, sizeof(ota_header->u.s.type));
    str[sizeof(ota_header->u.s.type)] = '\0';
    puts("[OTA] [HEADER] file type is ");
    puts(str);
    puts("\r\n");
    if (strstr(str, "XZ")) {
        *use_xz = 1;
    } else {
        *use_xz = 0;
    }

    memcpy(ota_len, &(ota_header->u.s.len), 4);
    printf("[OTA] [HEADER] file length (exclude ota header) is %lu\r\n", *ota_len);

    memcpy(str, ota_header->u.s.ver_hardware, sizeof(ota_header->u.s.ver_hardware));
    str[sizeof(ota_header->u.s.ver_hardware)] = '\0';
    puts("[OTA] [HEADER] ver_hardware is ");
    puts(str);
    puts("\r\n");

    memcpy(str, ota_header->u.s.ver_software, sizeof(ota_header->u.s.ver_software));
    str[sizeof(ota_header->u.s.ver_software)] = '\0';
    puts("[OTA] [HEADER] ver_software is ");
    puts(str);
    puts("\r\n");

    memcpy(str, ota_header->u.s.sha256, sizeof(ota_header->u.s.sha256));
    str[sizeof(ota_header->u.s.sha256)] = '\0';
	printf("[OTA] [HEADER] sha256 len: %d\r\n", sizeof(ota_header->u.s.sha256));
    puts("[OTA] [HEADER] sha256 is ");
    for (i = 0; i < sizeof(ota_header->u.s.sha256); i++) {
        printf("%02X", str[i]);
    }
    puts("\r\n");
    puts("[OTA] [HEADER] OK!!!\r\n");

    return 0;
}
	
//包格式： 包头（2字节） | 包类型（1字节） | 数据长度（1字节） | 数据（240字节） | 校验位（1字节） | 包尾（1字节）
//新包格式： 包头（2字节） | 包类型（1字节） | 数据长度（1字节） | 包序号（4字节，高位在前低位在后） | 数据（240字节） | 校验位（1字节） | 包尾（1字节）
static int ota_start(void)
{
	LOGI(TAG, "--------->ota_start");

	int ret;
	ret = bl_mtd_open(BL_MTD_PARTITION_NAME_FW_DEFAULT, &handle, BL_MTD_OPEN_FLAG_BACKUP);
    if (ret) {
        LOGE(TAG, "Open Default FW partition failed");
        return 0;
    }

	uint8_t activeID;
	activeID = hal_boot2_get_active_partition();
	LOGI(TAG, "activeID is %u", activeID);


	if (hal_boot2_get_active_entries(BOOT2_PARTITION_TYPE_FW, &ptEntry)) {
        LOGE(TAG, "PtTable_Get_Active_Entries fail");
        bl_mtd_close(handle);
        return 0;
    }

	unsigned int ota_addr;
	uint32_t bin_size, part_size;
	ota_addr = ptEntry.Address[!ptEntry.activeIndex];
    bin_size = ptEntry.maxLen[!ptEntry.activeIndex];
    part_size = ptEntry.maxLen[!ptEntry.activeIndex];
    (void) part_size;
    LOGI(TAG, "Starting OTA test. OTA size is %lu\r\n", bin_size);
    LOGI(TAG, "activeIndex is %u, use OTA address=%08x\r\n", ptEntry.activeIndex, (unsigned int)ota_addr);
    LOGI(TAG, "Erase flash with size %lu...", bin_size);

	utils_sha256_init(&ctx);
    utils_sha256_starts(&ctx);
	memset(sha256_result, 0, sizeof(sha256_result));

	ota_header_buffer = pvPortMalloc(OTA_HEADER_SIZE);
	return 1;
}

static int ota_end(void)
{
	int i = 0;
	int ret = 0;
	uint8_t sha256_img[32];

	utils_sha256_finish(&ctx, sha256_result);
	memcpy(sha256_img, ota_header->u.s.sha256, sizeof(sha256_img));
	puts("\r\nCalculated SHA256 Checksum:");
	for (i = 0; i < sizeof(sha256_result); i++) {
		printf("%02X", sha256_result[i]);
	}
	puts("\r\nHeader SET SHA256 Checksum:");
	for (i = 0; i < sizeof(sha256_img); i++) {
		printf("%02X", sha256_img[i]);
	}
	puts("\r\n");

	if (memcmp(sha256_img, sha256_result, sizeof(sha256_img))) {
		/*Error found*/
		LOGE(TAG, "SHA256 NOT Correct");
		return 0;
	}

	ptEntry.len = ota_bin_size;

	ret = hal_boot2_update_ptable(&ptEntry);
	LOGI(TAG, "boot2_update ret: %d", ret);
	system_delay_reboot();
	return 1;
}

static uint8_t checksum(uint8_t *buff, int len)
{
	uint8_t chksum = buff[len - 2];
	int data_len = buff[3];
	int i = 0, sum = 0;

#ifdef USE_NEW_OTA
	for (i = 2; i <= 2 + 4 + data_len + 1; i++) {
		sum += buff[i];
	}
#else
	for (i = 2; i <= 2 + data_len + 1; i++) {
		sum += buff[i];
	}
#endif


	uint8_t cal_sum = sum & 0xff;
	// LOGI(TAG, "recv checksum: %02x, compute checksum: %02x, sum: %d\r\n", chksum, cal_sum, sum);
	return (cal_sum == chksum);
}

static void  ota_pkg_parser(int socket, uint8_t *buff, int len)
{
// #ifdef USE_NEW_OTA
	if (len < 9) {
		LOGI(TAG, "error package len<9, len=%d\r\n", len);
		int i = 0;
		for (i = 0; i < len; i++) { LOGI(TAG, "%02x ", buff[i]); }
		LOGI(TAG, "\r\n");
		goto EXCEPTION_OCCUR;
	}

	if (buff[0] != 0xf1 || buff[1] != 0xf1) {
		LOGE(TAG, "error package prefix, pkg[0]=%02x, pkg[1]=%02x, pkg[2]=%02x, pkg[3]=%02x, chksum=%02x, last=%02x, pkgLen=%d\r\n", buff[0], buff[1], buff[2], buff[3], buff[len - 2], buff[len - 1], len);
		goto EXCEPTION_OCCUR;
	}

	if (buff[len - 1] != 0x7e) {
		LOGE(TAG, "error package suffix\r\n");
		goto EXCEPTION_OCCUR;
	}

	static int ota_header_offset = 0;
	static unsigned int flash_offset = 0;
    static int ota_header_found = 0;
	uint32_t seq = 0;
	uint32_t temp = buff[4];

	seq = temp << 24;
	temp = buff[5];
	seq += temp << 16;
	temp = buff[6];
	seq += temp << 8;
	seq += buff[7];
	if (seq != sequence_num) {	//app发来的通知升级结束的包不用再判断序号
		if (buff[2] != OTA_OP_REQ_END) {
			LOGE(TAG, "error sequence number:%d %d, buf:%d %d %d %d, reboot!\r\n", seq, sequence_num, buff[4], buff[5], buff[6], buff[7]);
			goto EXCEPTION_OCCUR;
		} else {
			LOGI(TAG, "skip cmd package, cmd=%d\r\n", buff[2]);
		}
	} else {
		// LOGI(TAG, "seq OK\r\n");
	}

	char exception_resp[] = {0xf2, 0xf2, OTA_OP_EXCEPTION, 0x00, OTA_OP_EXCEPTION, 0x7e, 0x0};
	int data_len = buff[3];	
	// LOGI(TAG, "bit2=%02x, bit3=%02x, data_len=%d, seq=%d\r\n", buff[2], buff[3], data_len, sequence_num);
	if (data_len > OTA_PKG_SIZE) {
		LOGE(TAG, "error OTA pkg size > 240, reboot\r\n");
		goto EXCEPTION_OCCUR;
	}
	int align_data_len = data_len;
	// if (align_data_len != OTA_PKG_SIZE) {	//最后一包长度小于240，需要对齐
	// 	if (align_data_len % 4 != 0) {
	// 		align_data_len = align_data_len + 4 - align_data_len % 4;
	// 	}
	// }

	if (checksum(buff, len)) {
		if (buff[2] == OTA_OP_REQ_END) {
			ota_end();
			LOGI(TAG, "OTA complete\r\n");

		} else if (buff[2] == OTA_OP_REQ_START) {
			ota_start();
			char resp[8] = {0xf2, 0xf2, OTA_OP_RESP_STARTED, 0x01, 0x01, OTA_OP_RESP_STARTED + 2, 0x7e, 0x0}; //如果数据中有0x0，iOS会认为是结束符，在tcp接收中截去0x0后面的数据
			write(socket, resp, strlen(resp));

		} else if (buff[2] == OTA_OP_REQ_SLOT) {	// client request slot info
			// uint8_t slot = ota_get_cur_index() + 1;
			uint8_t slot = 1;
			uint8_t chksum = OTA_OP_RESP_SLOT + 0x01 + slot;
			char resp[8] = {0xf2, 0xf2, OTA_OP_RESP_SLOT, 0x01, slot, chksum, 0x7e, 0x0};
			write(socket, resp, strlen(resp));
			LOGI(TAG, "send slot info, len=%d\r\n", strlen(resp));

		} else if (buff[2] == OTA_OP_RECV_PKG || buff[2] == OTA_OP_RECV_LAST_PKG) {

			if(0 == ota_header_found){
				if((ota_header_offset+align_data_len) > OTA_HEADER_SIZE){
					memcpy(ota_header_buffer+ota_header_offset, buff + 8, OTA_HEADER_SIZE-ota_header_offset);
					ota_header_offset += align_data_len;
				}else{
					memcpy(ota_header_buffer+ota_header_offset, buff + 8, align_data_len);
					ota_header_offset += align_data_len;
				}
				LOGI(TAG, "header size = %d, ret = %d", OTA_HEADER_SIZE, ota_header_offset);

				if(ota_header_offset >= OTA_HEADER_SIZE){
					LOGI(TAG, "start check header");
					ota_header = (ota_header_t*)ota_header_buffer;
					if (_check_ota_header(ota_header, &ota_bin_size, &use_xz)) {
						LOGE(TAG, "can not found header");
						goto EXCEPTION_OCCUR;
					}
					ota_header_found = 1;
					LOGI(TAG, "check_ota_header ok bin_size: %lu, file status %s", ota_bin_size, use_xz ? "XZ" : "RAW");
					if(ota_header_offset > OTA_HEADER_SIZE){
						int bin_offset = ota_header_offset-OTA_HEADER_SIZE;
						utils_sha256_update(&ctx, buff+8+align_data_len-bin_offset, bin_offset);
						bl_mtd_write(handle, flash_offset, bin_offset, buff+8+align_data_len-bin_offset);
						flash_offset += bin_offset;
					}
				}
			}else{
				utils_sha256_update(&ctx, buff + 8, align_data_len);
				bl_mtd_write(handle, flash_offset, align_data_len, buff + 8);
				flash_offset+=align_data_len;
				LOGI(TAG, "bin ota_header_offset = %d, ret = %d", ota_bin_size, flash_offset);
			}

			sequence_num++;	//写入成功，序号才加1

			// OTA send echo, requrie next package
			char resp[8] = {0xf2, 0xf2, OTA_OP_REQ_NEXT_PKG, 0x01, 0x01, OTA_OP_REQ_NEXT_PKG + 2, 0x7e, 0x0}; //如果数据中有0x0，iOS会认为是结束符，在tcp接收中截去0x0后面的数据
			if (buff[2] == OTA_OP_RECV_LAST_PKG) {
				resp[2] = OTA_OP_RESP_LAST_PKG;
				resp[5] = resp[2] + 2;
				write(socket, resp, strlen(resp));
			} else {
				resp[2] = OTA_OP_REQ_NEXT_PKG;
				resp[5] = resp[2] + 2;  
				write(socket, resp, strlen(resp));
			}
		} else {
			LOGE(TAG, "unknown message! unknown package type!\r\n");
		}
	} else {
		LOGE(TAG, "~~> checksum failed!!\r\n");
		goto EXCEPTION_OCCUR;
	}
	return;

EXCEPTION_OCCUR:
	write(socket, exception_resp, strlen(exception_resp));
	system_delay_reset();
}

#define    OTA_TASK_SIZE      1024
TaskHandle_t ota_task_handle = NULL;

static void ota_server_task(void *pvParameters)
{
	struct sockaddr_in server_addr;
	struct sockaddr_in client_addr;
	socklen_t socklen = sizeof(client_addr);
	int server_socket_fd = 0;
	int client_socket_fd = 0;
	uint8_t *databuff = NULL;
	LOGI(TAG, "ota server socket....,port=%d", OTA_TCP_PORT);
	server_socket_fd = socket(AF_INET, SOCK_STREAM, 0);

	if (server_socket_fd < 0) {
		LOGE(TAG,"create_server error: %d", server_socket_fd);
	}

	server_addr.sin_family = AF_INET;
	server_addr.sin_port = htons(OTA_TCP_PORT);
	server_addr.sin_addr.s_addr = htonl(INADDR_ANY);

	if (bind(server_socket_fd, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0) {
		LOGE(TAG,"bind_server error: %d", server_socket_fd);
		close(server_socket_fd);
	}

	if (listen(server_socket_fd, 5) < 0) {
		LOGE(TAG,"listen_server error: %d", server_socket_fd);
		close(server_socket_fd);
	}

	databuff = malloc(256);

	for (;;) {
		LOGI(TAG, "start accept\n");
		client_socket_fd = accept(server_socket_fd, (struct sockaddr *)&client_addr, &socklen);
		if (client_socket_fd <= 0) {
			break;
		}
		LOGI(TAG, "new client connected %d\n", client_socket_fd);

		while (1) {
			memset(databuff, 0x00, 256);
			int len = recv(client_socket_fd, databuff, 256, 0);

			if (len > 0) {
				// LOGI(TAG, "~~~>   recv_data: %s\n", databuff);
				ota_pkg_parser(client_socket_fd, databuff, len);
			} else {
				//LOGE(TAG,"recv_data", client_socket_fd);
				LOGI(TAG, "client disconnected\n");
				int res = close(client_socket_fd);
				LOGI(TAG, "close res: %d", res);
				break;
			}
		}
	}

	free(databuff);
	close(server_socket_fd);
	vTaskDelete(NULL);
	ota_task_handle = NULL;
}


void doit_ota_server_init(void)
{
	LOGI(TAG, "doit_ota_server_init.");

	if(!ota_task_handle){
		if (xTaskCreate(ota_server_task, "ota_server_task", OTA_TASK_SIZE, NULL, 10, &ota_task_handle) != pdPASS) {
			LOGE(TAG, "create ota_server_task fail");
		}
	}
}