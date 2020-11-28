#ifndef _DOIT_DEVICE_INFO_H_
#define _DOIT_DEVICE_INFO_H_

#include <stdint.h>

extern char dev_id[64];
extern char dev_key[33];
extern uint8_t station_mac[6];

uint32_t device_get_broadcast_ip();

void device_get_sta_ip(uint8_t *ip);
void device_get_sta_mac(uint8_t *mac);

void device_get_dev_id(char *id);
void device_get_dev_key(char *key);

void doit_device_info_init(void);

#endif