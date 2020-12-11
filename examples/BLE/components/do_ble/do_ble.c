#include "do_ble.h"

#include "hci_driver.h"
#include "ble_lib_api.h"
#include "bluetooth.h"
#include "gatt.h"
#include "uuid.h"

#include "do_log.h"

#if LOG_BLE_EN
#define TAG            "ble"
#define LOGI           LOG_I
#define LOGE           LOG_E
#else
#define TAG            ""
#define LOGI(...)
#define LOGE(...)
#endif

#define BT_UUID_DOLP_SER      BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x53300001, 0x0023, 0x4bd4, 0xbbd5, 0xa6920e4c5653))
#define BT_UUID_DOLP_WRITE    BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x53300002, 0x0023, 0x4bd4, 0xbbd5, 0xa6920e4c5653))
#define BT_UUID_DOLP_NOTIFY   BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x53300003, 0x0023, 0x4bd4, 0xbbd5, 0xa6920e4c5653))

do_ble_reve_cb_t static_ble_reve_cb = NULL;
do_ble_connet_cb_t static_ble_connet_cb = NULL;

static struct bt_gatt_attr *notify_attrs;

static void connected(struct bt_conn *conn, u8_t err)
{
	char addr[BT_ADDR_LE_STR_LEN];
    bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));

	if (err) {
		LOGE(TAG, "Failed to connect to %s (%u)", addr, err);
		return;
	}

	LOGI(TAG, "Connected: %s \r\n", addr);

    if(static_ble_connet_cb != NULL){
        static_ble_connet_cb(DO_BLE_DEVICE_CONNECT, addr);

    }
}

static void disconnected(struct bt_conn *conn, u8_t reason)
{
	char addr[BT_ADDR_LE_STR_LEN];

	bt_addr_le_to_str(bt_conn_get_dst(conn), addr, sizeof(addr));  
	LOGI(TAG, "Disconnected: %s (reason %u)", addr, reason);

    if(static_ble_connet_cb != NULL){
        static_ble_connet_cb(DO_BLE_DEVICE_DISCONNECT, addr);

    }
}


static void le_param_updated(struct bt_conn *conn, u16_t interval,
			     u16_t latency, u16_t timeout)
{
	LOGI(TAG, "LE conn param updated: int 0x%04x lat %d to %d", interval, latency, timeout);
}

static struct bt_data ad_discov[2] = {
	BT_DATA_BYTES(BT_DATA_FLAGS, (BT_LE_AD_GENERAL | BT_LE_AD_NO_BREDR)),
    // BT_DATA(BT_DATA_NAME_COMPLETE, "BL602-BLE-DEV", 13),
};

 void ble_start_advertise(void)
{
    struct bt_le_adv_param param;
	const struct bt_data *ad;
	size_t ad_len;
	int err = 0;
    uint8_t adv_type, tmp;

    param.id = BT_ID_DEFAULT;
    param.interval_min = BT_GAP_ADV_FAST_INT_MIN_2;
    param.interval_max = BT_GAP_ADV_FAST_INT_MAX_2;
    // param.interval_min = 0x1000;
	// param.interval_max = 0x1000;

    /*Get adv type, 0:adv_ind,  1:adv_scan_ind, 2:adv_nonconn_ind 3: adv_direct_ind*/
    adv_type = 0;
    if(adv_type == 0){
        param.options = (BT_LE_ADV_OPT_CONNECTABLE | BT_LE_ADV_OPT_USE_NAME | BT_LE_ADV_OPT_ONE_TIME);
    }else if(adv_type == 1){
        param.options = BT_LE_ADV_OPT_USE_NAME;
    }else if(adv_type == 2){
        param.options = 0;
    }

    /*Get mode, 0:General discoverable,  1:non discoverable, 2:limit discoverable*/
    tmp = 0;
    if(tmp == 0 || tmp == 1 || tmp == 2){
        if(tmp == 1){
            ad_discov[0].data = 0;
        }
        ad = ad_discov;
        ad_len = ARRAY_SIZE(ad_discov);
    }
    
    if(adv_type == 1){
        err = bt_le_adv_start(&param, ad, ad_len, &ad_discov[0], 1);
    }else{
        err = bt_le_adv_start(&param, ad, ad_len, NULL, 0);
    }
 
    if(err){
        LOGE(TAG, "Failed to start advertising (err %d)", err);
    }else{
        LOGI(TAG, "Advertising started");
    }

}

static void     bt_ready_cb(int err)
{
    if (err != 0) {
        return;
    }
    LOGI(TAG, "bt_ready");
}


ssize_t recv_cb(struct bt_conn *conn,
                   const struct bt_gatt_attr *attr, const void *buf,
                   u16_t len, u16_t offset, u8_t flags)
{
    // LOGI(TAG, "write length %d   offset: %d", len, offset);
    // blog_info_hexdump("data", (uint8_t *)buf, len);

    if(static_ble_reve_cb != NULL){
        static_ble_reve_cb(conn, buf, len);
    }

    return len;
}

static struct bt_gatt_attr ble_attrs[]= {
	BT_GATT_PRIMARY_SERVICE(BT_UUID_DOLP_SER),
    BT_GATT_CHARACTERISTIC(BT_UUID_DOLP_NOTIFY,
                                BT_GATT_CHRC_NOTIFY,
                                BT_GATT_PERM_NONE,
                                NULL,
                                NULL,
                                NULL),
    BT_GATT_CHARACTERISTIC(BT_UUID_DOLP_WRITE,
                                BT_GATT_CHRC_WRITE | BT_GATT_CHRC_WRITE_WITHOUT_RESP,
                                BT_GATT_PERM_WRITE,
                                NULL,
                                recv_cb,
                                NULL),
};
struct bt_gatt_service dis = BT_GATT_SERVICE(ble_attrs);


static struct bt_conn_cb conn_callbacks = {
	.connected = connected,
	.disconnected = disconnected,
	.le_param_updated = le_param_updated,
};

void do_ble_notify(struct bt_conn *conn, char *buf, u16_t len){
    bt_gatt_notify(conn, notify_attrs, buf, len);
}

void do_ble_init(void){                                                        
    // Initialize BLE controller 
    LOGI(TAG, "do_ble_init ");
    ble_controller_init(configMAX_PRIORITIES - 1);
    //Initialize BLE Host stack
    hci_driver_init();
    bt_enable(bt_ready_cb);
    bt_set_name("BL602_BLE");                                   
    bt_gatt_service_register((struct bt_gatt_service *)&dis);       
    notify_attrs = &ble_attrs[1];                                   
    bt_conn_cb_register(&conn_callbacks);
    ble_start_advertise();
}

void do_ble_set_reve_cb(do_ble_reve_cb_t ble_reve_cb){
    static_ble_reve_cb = ble_reve_cb;
}

void do_ble_set_connect_cb(do_ble_connet_cb_t ble_connet_cb){
    static_ble_connet_cb = ble_connet_cb;
}


 