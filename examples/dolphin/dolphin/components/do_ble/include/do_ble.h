#ifndef _DO_BLE_H_
#define _DO_BLE_H_

#include <stdint.h>
#include "conn.h"

enum {
    DO_BLE_DEVICE_CONNECT = 0,
    DO_BLE_DEVICE_DISCONNECT,
};

typedef void (*do_ble_reve_cb_t)(struct bt_conn *conn, const char *buf, u16_t len);

typedef void (*do_ble_connet_cb_t)(uint8_t status, char *addr);

void do_ble_notify(struct bt_conn *conn, char *buf, u16_t len);
void ble_start_advertise();
void do_ble_init(void);
void do_ble_set_reve_cb(do_ble_reve_cb_t ble_reve_cb);
void do_ble_set_connect_cb(do_ble_connet_cb_t ble_connet_cb);

#endif