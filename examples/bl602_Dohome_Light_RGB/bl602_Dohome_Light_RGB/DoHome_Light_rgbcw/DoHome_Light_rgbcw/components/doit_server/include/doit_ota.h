#ifndef _DOIT_OTA_H_
#define _DOIT_OTA_H_

#define OTA_OP_REQ_START			0x01
#define OTA_OP_RECV_PKG				0x02
#define OTA_OP_REQ_END				0x03

#define OTA_OP_REQ_SLOT				0x05
#define OTA_OP_RESP_SLOT			0x06
#define OTA_OP_RESP_STARTED			0x07
#define OTA_OP_REQ_NEXT_PKG			0x08
#define OTA_OP_RECV_LAST_PKG		0x09
#define OTA_OP_RESP_LAST_PKG		0x0a
#define OTA_OP_EXCEPTION			0x20

void doit_ota_server_init(void);

#endif