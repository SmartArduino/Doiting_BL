/*
 * Copyright (c) 2020 Bouffalolab.
 *
 * This file is part of
 *     *** Bouffalolab Software Dev Kit ***
 *      (see www.bouffalolab.com).
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *   1. Redistributions of source code must retain the above copyright notice,
 *      this list of conditions and the following disclaimer.
 *   2. Redistributions in binary form must reproduce the above copyright notice,
 *      this list of conditions and the following disclaimer in the documentation
 *      and/or other materials provided with the distribution.
 *   3. Neither the name of Bouffalo Lab nor the names of its contributors
 *      may be used to endorse or promote products derived from this software
 *      without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <FreeRTOS.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <task.h>
#include <time.h>
#include <wifi_mgmr_ext.h>
#include <lwip/tcpip.h>
#include <lwip/sockets.h>
#include <lwip/netdb.h>
#include <lwip/tcp.h>
#include <lwip/err.h>
#include "atcmd/at_command.h"
#include "at_private.h"
#include <easyflash.h>
#include <bl602_uart.h>
#include "at_server.h"

#if 0
#include "kernel/os/os.h"
#include "sys/interrupt.h"

#include "common/cmd/cmd_ping.h"
#include "common/cmd/cmd_util.h"
#include "common/cmd/cmd_wlan.h"
#include "net/wlan/wlan.h"

#include "common/framework/net_ctrl.h"
#include "lwip/inet.h"

#include "driver/chip/hal_rtc.h"

#include "image/fdcm.h"

#include "errno.h"
#include "lwip/netdb.h"
#include "lwip/sockets.h"
#include "serial.h"

#include "ap_socket.h"
#include "common/framework/sys_ctrl/sys_ctrl.h"
#include "common/framework/sysinfo.h"
#include "driver/chip/hal_gpio.h"
#include "driver/chip/hal_wdg.h"
#include "lwip/dns.h"
#include "net/wlan/wlan_ext_req.h"

#include "ota/ota.h"

#include "atcmd.h"
#include "driver/chip/hal_wakeup.h"
#endif
#include <hal_sys.h>

#define FUN_DEBUG_ON 0

#if FUN_DEBUG_ON == 1
#define FUN_DEBUG(fmt...)                           \
  {                                                 \
    printf("file:%s line:%d ", __FILE__, __LINE__); \
    printf(fmt);                                    \
  }
#else
#define FUN_DEBUG(fmt...)
#endif

#define MANUFACTURER "BOUFFALOLAB"
#define MODEL "serial-to-wifi"
#define SERIAL "01234567"
//#define MAC               {0x00, 0x11, 0x22, 0x33, 0x44, 0x55}

#define CONFIG_FDCM_FLASH (0)

//#define CONFIG_FDCM_ADDR  0x120000UL
//#define CONFIG_FDCM_SIZE  0x10000UL

#define CONFIG_FDCM_ADDR (0x200000UL - 0x8000UL)
#define CONFIG_FDCM_SIZE (0x4000UL)

#define CONFIG_CONTAINNER_SIZE sizeof(config_containner_t)

#define MAX_SCAN_RESULTS 50
#define MAX_SOCKET_NUM 4
#define IP_ADDR_SIZE 15
#define SOCKET_CACHE_BUFFER_SIZE 1024

#define SERVER_THREAD_STACK_SIZE (2 * 1024)

typedef struct {
  s32 cmd;
  AT_ERROR_CODE (*handler)(at_callback_para_t *para, at_callback_rsp_t *rsp);
} callback_handler_t;

typedef struct {
  u32 cnt;
  at_config_t cfg;
} config_containner_t;

typedef struct {
  char ip[IP_ADDR_SIZE + 1];
  char hostname[AT_PARA_MAX_SIZE];
  at_text_t type[4];
  u32 port;
  s32 protocol;  // 1:TCP , 2:UDP
  s32 fd;
  u32 flag;
  u32 ThreadHd;
} connect_t;

typedef struct {
  s32 count;
  connect_t connect[MAX_SOCKET_NUM];
} network_t;

typedef struct {
  s32 mode;  // 0:no connections 1: sta connections 2:ap connections
} system_status_t;

typedef struct {
  u32 flag;
  s32 offset;
  s32 cnt;
  u8 buffer[SOCKET_CACHE_BUFFER_SIZE];
} socket_cache_t;

typedef struct {
  s16 port;
  s32 protocol;
} server_arg_t;

typedef struct {
  u32 flag;
  s16 port;
  s32 protocol;
  s32 conn_fd;
} server_ctrl_t;

static socket_cache_t socket_cache[MAX_SOCKET_NUM + 1];

//static TaskHandle_t g_server_thread;
//static SemaphoreHandle_t g_server_mutex = NULL;
static server_arg_t g_server_arg;
static server_ctrl_t g_server_ctrl;
// static system_status_t g_status;
static u32 g_errorcode = 0;
static network_t networks;
static wifi_interface_t g_wifi_interface;

static u32 g_server_enable = 0;
static SemaphoreHandle_t g_server_sem;
// static uint16_t net_evevt_state = NET_CTRL_MSG_NETWORK_DOWN;
int is_disp_ipd = 1;

enum atc_cwjap_cur_type {
  ATC_CWJAP_CUR_OK = 0,
  ATC_CWJAP_CUR_TIMEOUT = '1',
  ATC_CWJAP_CUR_PSK_INVALID = '2',
  ATC_CWJAP_CUR_SSID_NOMATCH = '3',

};

extern int at_serial_lock(void);
extern int at_serial_unlock(void);

static AT_ERROR_CODE cipsend(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cipstart(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cipsendbuf(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cipclose(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE tcpserver(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE set_apcfg(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cwqap(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE deep_sleep(at_callback_para_t * para, at_callback_rsp_t * rsp);
static AT_ERROR_CODE cwmode_cur(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cwmode_cur_get(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cwjap_cur(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cwjap_info(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE version(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE restory(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE uart_set(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE uart_get(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE scan(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE ap_sta_get(at_callback_para_t * para, at_callback_rsp_t * rsp);
static AT_ERROR_CODE sockon(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE reset(at_callback_para_t *para, at_callback_rsp_t *rsp);

#if 0
static AT_ERROR_CODE act(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE mode(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE save(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE load(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE status(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE factory(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE peer(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE ping(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE sockw(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE sockq(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE sockr(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE sockc(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE sockd(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE wifi(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE reassociate(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE gpioc(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE gpior(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE gpiow(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE sleep(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE wakeupgpio(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cwlapopt(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cwlap(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cwdhcp_cur(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cipstamac_cur(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cipsta_cur(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cwhostname(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cipstatus(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cipdomain(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE tcpservermaxconn(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cipmux(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cipmode(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cipdns_cur(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE ciprecvdata(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE ciprecvmode(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE sysiosetcfg(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE sysiogetcfg(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE syssetiodir(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE syssetgpio(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE sysreadgpio(at_callback_para_t *para, at_callback_rsp_t *rsp);
#endif

static const callback_handler_t callback_tbl[] = {
#if 0
    {ACC_ACT,               act},
#endif
    {ACC_RST,               reset},
#if 0
    {ACC_MODE,              mode},
    {ACC_SAVE,              save},
    {ACC_LOAD,              load},
    {ACC_STATUS,            status},
    {ACC_FACTORY,           factory},
    {ACC_PEER,              peer},
    {ACC_PING,              ping},
    {ACC_SOCKON,            sockon},
    {ACC_SOCKW,             sockw},
    {ACC_SOCKQ,             sockq},
    {ACC_SOCKR,             sockr},
    {ACC_SOCKC,             sockc},
    {ACC_SOCKD,             sockd},
    {ACC_WIFI,              wifi},
    {ACC_REASSOCIATE,       reassociate},
    {ACC_GPIOC,             gpioc},
    {ACC_GPIOR,             gpior},
    {ACC_GPIOW,             gpiow},
#endif
    {ACC_SCAN,              scan},
#if 0
    {ACC_CIPSTATUS,         cipstatus},
#endif
    {ACC_GMR,               version},
    {ACC_RESTORE,           restory},
    {ACC_UART_SET,          uart_set},
    {ACC_UART_GET,          uart_get},
    {ACC_DEEP_SLEEP,        deep_sleep},
#if 0
    {ACC_SLEEP,             sleep},
    {ACC_WAKEUPGPIO,        wakeupgpio},
#endif
    {ACC_CWMODE_CUR,        cwmode_cur},
    {ACC_CWMODE_GET,        cwmode_cur_get},
    {ACC_CWJAP_CUR, cwjap_cur},
    {ACC_CWJAP_INFO, cwjap_info},
#if 0
    {ACC_CWLAPOPT,          cwlapopt},
    {ACC_CWLAP,             cwlap},
#endif
    {ACC_CWQAP, cwqap},
#if 0
    {ACC_CWDHCP_CUR,        cwdhcp_cur},
    {ACC_CIPSTAMAC_CUR,     cipstamac_cur},
    {ACC_CIPSTA_CUR,        cipsta_cur},
    {ACC_CWHOSTNAME,        cwhostname},
    {ACC_CIPDOMAIN,         cipdomain},
#endif
    {ACC_APCFG,             set_apcfg},
    {ACC_AP_STA_GET, ap_sta_get},
    {ACC_CIPSTART, cipstart},
    {ACC_CIPSENDBUF, cipsendbuf},
    {ACC_CIPCLOSE, cipclose},
    {ACC_TCPSERVER, tcpserver},

#if 0
    {ACC_TCPSERVERMAXCONN,  tcpservermaxconn},
    {ACC_CIPMUX,            cipmux},
    {ACC_CIPMODE,           cipmode},
    {ACC_CIPDNS_CUR,        cipdns_cur},
    {ACC_CIPRECVDATA,       ciprecvdata},
    {ACC_CIPRECVMODE,       ciprecvmode},
#endif
    {ACC_CIPSEND, cipsend},
#if 0
    {ACC_SYSIOSETCFG,       sysiosetcfg},
    {ACC_SYSIOGETCFG,       sysiogetcfg},
    {ACC_SYSGPIODIR,        syssetiodir},
    {ACC_SYSGPIOWRITE,      syssetgpio},
    {ACC_SYSGPIOREAD,       sysreadgpio},
#endif
};

#if 0
static const u32 channel_freq_tbl[] = {
    2412,2417,2422,2427,2432,2437,2442,2447,2452,2457,2462,2467,2472
};

static const char *event[] = {
    "wlan connected",
    "wlan disconnected",
    "wlan scan success",
    "wlan scan failed",
    "wlan 4way handshake failed",
    "wlan connect failed",
    "wlan connect loss",
    "network up",
    "network down",
};

static const fdcm_handle_t fdcm_hdl_tbl[] = {
    {CONFIG_FDCM_FLASH, CONFIG_FDCM_ADDR, CONFIG_FDCM_SIZE},
    {CONFIG_FDCM_FLASH, CONFIG_FDCM_ADDR - CONFIG_FDCM_SIZE, CONFIG_FDCM_SIZE}
};

/* factory default */
static const at_config_t default_cfg = {
    .blink_led = 0,
    .wind_off_low = 0x0,
    .wind_off_medium = 0x0,
    .wind_off_high = 0x0,
    .user_desc = "XRADIO-AP",
    .escape_seq = "at+s.",
    .localecho1 = 0,
    .console1_speed = 115200,
    .console1_hwfc = 0,
    .console1_enabled = 0,
    .sleep_enabled = 0,
    .standby_enabled = 0,
    .standby_time = 10,
    .wifi_tx_msdu_lifetime = 0,
    .wifi_rx_msdu_lifetime = 0,
    .wifi_operational_mode = 0x00000011,
    .wifi_beacon_wakeup = 1,
    .wifi_beacon_interval = 100,
    .wifi_listen_interval = 0,
    .wifi_rts_threshold = 3000,
    .wifi_ssid = "iot-ap",
    .wifi_ssid_len = 6,
    .wifi_channelnum = 6,
    .wifi_opr_rate_mask = 0xFFFFFFFF,
    .wifi_bas_rate_mask = 0x0000000F,
    .wifi_mode = 1,
    .wifi_auth_type = 0,
    .wifi_powersave = 1,
    .wifi_tx_power = 18,
    .wifi_rssi_thresh = -50,
    .wifi_rssi_hyst = 10,
    .wifi_ap_idle_timeout = 120,
    .wifi_beacon_loss_thresh = 10,
    .wifi_priv_mode = 2,
    /*.wifi_wep_keys[4][16],*/
    /*.wifi_wep_key_lens[4],*/
    .wifi_wep_default_key = 0,
    /*.wifi_wpa_psk_raw[32],*/
    /*.wifi_wpa_psk_text[64],*/
    .ip_use_dhcp = 1,
    .ip_use_httpd = 1,
    .ip_mtu = 1500,
    .ip_hostname = "xr-iot-dev",
    .ip_apdomainname = "xradio.com",
    .ip_ipaddr = {192, 168, 0, 123},
    .ip_netmask = {255, 255, 255, 0},
    .ip_gw = {192, 168, 0, 1},
    .ip_dns = {192, 168, 0, 1},
    .ip_http_get_recv_timeout = 1000,
    .ip_dhcp_timeout = 20,
    .ip_sockd_timeout = 250,
};

static __always_inline int server_is_isr_context(void)
{
    return __get_IPSR();
}


static void server_mutex_lock(void)
{
    if (g_server_mutex == NULL) {
        g_server_mutex = xSemaphoreCreateRecursiveMutex();
    }
    xSemaphoreTakeRecursive(g_server_mutex, portMAX_DELAY);
}

static void server_mutex_unlock(void)
{
    if (g_server_mutex == NULL) {
        return;
    }

    xSemaphoreGiveRecursive(g_server_mutex);
}
#endif

u32 at_get_errorcode(void) { return g_errorcode; }

#if 0
s32 at_cmdline(char *buf, u32 size)
{
    u32 i;

    for (i = 0; i < size; i++) {
        if (buf[i] == AT_LF) {
            return i+1;
        } else if (buf[i] == AT_CR) {
            if (((i+1) < size) && (buf[i+1] == AT_LF)) {
                return i+2;
            } else {
                return i+1;
            }
        }
    }

    return -1;
}




static void at_wakeup_pin_irq_cb(void *arg)
{
    printf("SYSTE wake up!\r\n");
}

static int wkgpio_pins[] = {GPIO_PIN_4,GPIO_PIN_5,GPIO_PIN_6,GPIO_PIN_7,GPIO_PIN_7,\
                        GPIO_PIN_19,GPIO_PIN_20,GPIO_PIN_21,GPIO_PIN_22,GPIO_PIN_23};

void at_wakeup_gpio_init(int gpioId,int edge)
{
    GPIO_InitParam param;
    GPIO_IrqParam Irq_param;

    if(edge == 1)
    {
        param.driving = GPIO_DRIVING_LEVEL_1;
        param.pull = GPIO_PULL_DOWN;
        param.mode = GPIOx_Pn_F6_EINT;
        HAL_GPIO_Init(GPIO_PORT_A, wkgpio_pins[gpioId], &param);

        Irq_param.event = GPIO_IRQ_EVT_RISING_EDGE;
        Irq_param.callback = at_wakeup_pin_irq_cb;
        Irq_param.arg = (void *)NULL;
        HAL_GPIO_EnableIRQ(GPIO_PORT_A, wkgpio_pins[gpioId], &Irq_param);
        HAL_Wakeup_SetIO(gpioId, WKUPIO_WK_MODE_RISING_EDGE, GPIO_PULL_DOWN);
    }
    else if(edge == 0)
    {
        param.driving = GPIO_DRIVING_LEVEL_1;
        param.pull = GPIO_PULL_UP;
        param.mode = GPIOx_Pn_F6_EINT;
        HAL_GPIO_Init(GPIO_PORT_A, wkgpio_pins[gpioId], &param);

        Irq_param.event = GPIO_IRQ_EVT_FALLING_EDGE;
        Irq_param.callback = at_wakeup_pin_irq_cb;
        Irq_param.arg = (void *)NULL;
        HAL_GPIO_EnableIRQ(GPIO_PORT_A, wkgpio_pins[gpioId], &Irq_param);
        HAL_Wakeup_SetIO(gpioId, WKUPIO_WK_MODE_FALLING_EDGE, GPIO_PULL_UP);
    }

}

#endif
AT_ERROR_CODE callback(AT_CALLBACK_CMD cmd, at_callback_para_t *para, at_callback_rsp_t *rsp) {
  s32 i;

  FUN_DEBUG("callback cmd = %d\r\n", cmd);

  for (i = 0; i < TABLE_SIZE(callback_tbl); i++) {
    if (cmd == callback_tbl[i].cmd) {
      if (callback_tbl[i].handler != NULL) {
        return callback_tbl[i].handler(para, rsp);
      } else {
        /* FUN_DEBUG("callback cmd = %d is unimplimented!\r\n", cmd); */

        return AEC_UNDEFINED;
      }
    }
  }

  FUN_DEBUG("callback cmd = %d is unsupported!\r\n", cmd);

  return AEC_UNSUPPORTED;
}
#if 0

static AT_ERROR_CODE act(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    AT_ERROR_CODE aec = AEC_OK;
    uint8_t ap_ssid[32+1];
    uint8_t ap_psk[] = "12345678";

    switch (para->cfg->wifi_mode) {
    case 0: /* IDLE */

        net_switch_mode(WLAN_MODE_STA);
        wlan_sta_disable();

        break;

    case 1: /* STA */

        net_switch_mode(WLAN_MODE_STA);
        wlan_sta_set(para->cfg->wifi_ssid, para->cfg->wifi_ssid_len, (uint8_t *)para->cfg->wifi_wpa_psk_text);
        wlan_sta_enable();

        break;

    case 2: /* AP */

        net_switch_mode(WLAN_MODE_HOSTAP);
        wlan_ap_disable();
        snprintf((char *)ap_ssid, 32, "xr-ap-%02x%02x%02x", para->cfg->nv_wifi_macaddr[3], para->cfg->nv_wifi_macaddr[4], para->cfg->nv_wifi_macaddr[5]);
        wlan_ap_set(ap_ssid, strlen((char *)ap_ssid), ap_psk);
        wlan_ap_enable();

        break;
#if 0
    case 3: /* IBSS */

        break;
#endif
    default:

        aec = AEC_PARA_ERROR;

        break;
    }

    return aec;
}
#endif
static AT_ERROR_CODE reset(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    AT_ERROR_CODE aec = AEC_OK;

    at_dump("OK\r\n");

    vTaskDelay(pdMS_TO_TICKS(2));
    hal_reboot();

    return aec;
}
#if 0
static AT_ERROR_CODE mode(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    AT_ERROR_CODE res = AEC_OK;
    s32 id;
    u8 *buffer;
    s32 len;
    s32 timeout_ms=10;
    fd_set fdset_r,fdset_w;
    int fd;
    struct sockaddr_in address;
    socklen_t addr_len;
    char ip[IP_ADDR_SIZE+1];
    s16 port;
    s32 protocol;

    if (!g_server_enable) { /* as client */
        id = 0;
        fd = networks.connect[id].fd;
        protocol = networks.connect[id].protocol;
        port = networks.connect[id].port;
        strncpy(ip, networks.connect[id].ip, sizeof(ip));

        if (networks.count > 0) {
            if (networks.connect[id].flag) {
                int rc = -1;
                struct timeval tv;

                FD_ZERO(&fdset_w);
                FD_ZERO(&fdset_r);
                FD_SET(fd, &fdset_w);
                FD_SET(fd, &fdset_r);

                tv.tv_sec = timeout_ms / 1000;
                tv.tv_usec = (timeout_ms % 1000) * 1000;

                rc = select(fd + 1, &fdset_r, NULL, NULL, &tv);
                if (rc > 0) {
                    if (FD_ISSET(fd, &fdset_r)) {
                        buffer = socket_cache[id].buffer;
                        len = SOCKET_CACHE_BUFFER_SIZE;

                        if (protocol == 0) { /* TCP */
                            rc = recv(fd, buffer, len, 0);
                        } else if (protocol == 1) { /* UDP */
                            address.sin_port = htons(port);
                            address.sin_family = AF_INET;
                            address.sin_addr.s_addr= inet_addr(ip);

                            addr_len = sizeof(address);

                            rc = recvfrom(fd, buffer, len, 0, (struct sockaddr *)&address, &addr_len);
                        }

                        if (rc > 0) {
                            /* received normally */
                            serial_write(buffer, rc);
                        } else if (rc == 0) {
                            /* has disconnected with server */
                            res = AEC_DISCONNECT;
                        } else {
                            /* network error */
                            res = AEC_NETWORK_ERROR;
                        }
                    }
                } else if (rc == 0) {
                    /* timeouted and sent 0 bytes */
                } else {
                    /* network error */
                    res = AEC_NETWORK_ERROR;
                }

                rc = select(fd + 1, NULL, &fdset_w, NULL, &tv);
                if (rc > 0) {
                    if (FD_ISSET(fd, &fdset_w)) {
                        buffer = para->u.mode.buf;
                        len = para->u.mode.len;

                        if (buffer != NULL && len >0) {
                            if (protocol == 0) { /* TCP */
                                rc = send(fd, buffer, len, 0);
                            } else if (protocol == 1) { /* UDP */
                                address.sin_port = htons(port);
                                address.sin_family = AF_INET;
                                address.sin_addr.s_addr= inet_addr(ip);

                                addr_len = sizeof(address);
                                rc = sendto(fd, buffer, len, 0, (struct sockaddr *)&address, sizeof(address));
                            }

                            if (rc > 0) {
                                /* do nothing */
                            } else if (rc == 0) {
                                /* disconnected with server */
                                res = AEC_DISCONNECT;
                            } else {
                                /* network error */
                                res = AEC_NETWORK_ERROR;
                            }
                        }
                    }
                } else if (rc == 0) {
                    /* timeouted and sent 0 bytes */
                } else {
                    /* network error */
                    res = AEC_NETWORK_ERROR;
                }
            } else {
                res = AEC_SWITCH_MODE;
            }
        } else {
            res = AEC_SWITCH_MODE;
        }
    } else { /* as server */
        if (!g_server_ctrl.flag) {
            g_server_ctrl.protocol = g_server_arg.protocol;

            server_mutex_lock();
            g_server_ctrl.conn_fd = g_server_net.conn_fd;
            g_server_ctrl.flag = g_server_net.flag;
            server_mutex_unlock();
        }

        if (g_server_ctrl.flag) {
            int rc = -1;
            struct timeval tv;

            port = g_server_ctrl.port;
            protocol = g_server_ctrl.protocol;
            fd = g_server_ctrl.conn_fd;

            FD_ZERO(&fdset_w);
            FD_ZERO(&fdset_r);
            FD_SET(fd, &fdset_w);
            FD_SET(fd, &fdset_r);

            tv.tv_sec = timeout_ms / 1000;
            tv.tv_usec = (timeout_ms % 1000) * 1000;

            rc = select(fd + 1, &fdset_r, NULL, NULL, &tv);
            if (rc > 0) {
                if (FD_ISSET(fd, &fdset_r)) {
                    buffer = socket_cache[MAX_SOCKET_NUM].buffer;
                    len = SOCKET_CACHE_BUFFER_SIZE;

                    if (protocol == 0) { /* TCP */
                        rc = recv(fd, buffer, len, 0);
                    } else if (protocol == 1) { /* UDP */
                        address.sin_port = htons(port);
                        address.sin_family = AF_INET;
                        address.sin_addr.s_addr= inet_addr(ip);

                        addr_len = sizeof(address);

                        rc = recvfrom(fd, buffer, len, 0, (struct sockaddr *)&address, &addr_len);
                    }

                    if (rc > 0) {
                        /* received normally */
                        serial_write(buffer, rc);
                    } else if (rc == 0) {
                        /* has disconnected with server */
                        if (protocol == 0) { /* TCP */
                            server_mutex_lock();
                            g_server_net.conn_fd = -1;
                            g_server_net.flag = 0;
                            server_mutex_unlock();

                            OS_SemaphoreRelease(&g_server_sem);

                            g_server_ctrl.flag = 0;
                        }

                        res = AEC_DISCONNECT;
                    } else {
                        /* network error */
                        res = AEC_NETWORK_ERROR;
                    }
                }
            } else if (rc == 0) {
                /* timeouted and sent 0 bytes */
            } else {
                /* network error */
                res = AEC_NETWORK_ERROR;
            }

            rc = select(fd + 1, NULL, &fdset_w, NULL, &tv);
            if (rc > 0) {
                if (FD_ISSET(fd, &fdset_w)) {
                    buffer = para->u.mode.buf;
                    len = para->u.mode.len;

                    if (buffer != NULL && len >0) {
                        if (protocol == 0) { /* TCP */
                            rc = send(fd, buffer, len, 0);
                        } else if (protocol == 1) { /* UDP */
                            FUN_DEBUG("Unsupported!\r\n");
                        }

                        if (rc > 0) {
                            /* do nothing */
                        } else if (rc == 0) {
                            /* disconnected with server */
                            res = AEC_DISCONNECT;
                        } else {
                            /* network error */
                            res = AEC_NETWORK_ERROR;
                        }
                    }
                }
            } else if (rc == 0) {
                /* timeouted and sent 0 bytes */
            } else {
                /* network error */
                res = AEC_NETWORK_ERROR;
            }
        } else {
            res = AEC_DISCONNECT;
        }
    }

    return res;

}

static AT_ERROR_CODE save(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    config_containner_t *containner;
    s32 i;
    fdcm_handle_t *fdcm_hdl;
    u32 flag[2];
    s32 idx,cnt;

    containner = (config_containner_t *)malloc(2*sizeof(config_containner_t));

    if (containner == NULL) {
        FUN_DEBUG("malloc faild.\r\n");
        return AEC_NOT_ENOUGH_MEMORY;
    }

    for (i=0; i<TABLE_SIZE(fdcm_hdl_tbl); i++) {
        flag[i] = 1;

        fdcm_hdl = fdcm_open(fdcm_hdl_tbl[i].flash, fdcm_hdl_tbl[i].addr, fdcm_hdl_tbl[i].size);

        if (fdcm_hdl == NULL) {
            FUN_DEBUG("fdcm_open faild.\r\n");
            free(containner);
            return AEC_UNDEFINED;
        }

        if (fdcm_read(fdcm_hdl, &containner[i], CONFIG_CONTAINNER_SIZE) != CONFIG_CONTAINNER_SIZE) {
            flag[i] = 0;
        }

        fdcm_close(fdcm_hdl);
    }

    if(flag[0] && flag[1]) {
        if (containner[0].cnt > containner[1].cnt) {
            idx = 1;
            cnt = containner[0].cnt;
        } else {
            idx = 0;
            cnt = containner[1].cnt;
        }
    } else if(flag[0]) {
        idx = 1;
        cnt = containner[0].cnt;
    } else if(flag[1]) {
        idx = 0;
        cnt = containner[1].cnt;
    } else {
        idx = 0;
        cnt = 0;
    }

    fdcm_hdl = fdcm_open(fdcm_hdl_tbl[idx].flash, fdcm_hdl_tbl[idx].addr, fdcm_hdl_tbl[idx].size);

    if (fdcm_hdl == NULL) {
        FUN_DEBUG("fdcm_open faild.\r\n");
        free(containner);
        return AEC_UNDEFINED;
    }

    containner[idx].cnt = cnt + 1;
    memcpy(&containner[idx].cfg, para->cfg, sizeof(at_config_t));

    if (fdcm_write(fdcm_hdl, &containner[idx], CONFIG_CONTAINNER_SIZE) != CONFIG_CONTAINNER_SIZE) {
        FUN_DEBUG("fdcm_write faild.\r\n");
        fdcm_close(fdcm_hdl);
        free(containner);
        return AEC_UNDEFINED;
    }

    fdcm_close(fdcm_hdl);
    free(containner);

    return AEC_OK;
}

static AT_ERROR_CODE load(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    config_containner_t *containner;
    s32 i;
    fdcm_handle_t *fdcm_hdl;
    u32 flag[2];
    s32 idx;

    containner = (config_containner_t *)malloc(2*sizeof(config_containner_t));

    if (containner == NULL) {
        FUN_DEBUG("malloc faild.\r\n");
        free(containner);
        return AEC_UNDEFINED;
    }

    for (i=0; i<TABLE_SIZE(fdcm_hdl_tbl); i++) {
        flag[i] = 1;

        fdcm_hdl = fdcm_open(fdcm_hdl_tbl[i].flash, fdcm_hdl_tbl[i].addr, fdcm_hdl_tbl[i].size);

        if (fdcm_hdl == NULL) {
            FUN_DEBUG("fdcm_open faild.\r\n");
            free(containner);
            return AEC_UNDEFINED;
        }

        if (fdcm_read(fdcm_hdl, &containner[i], CONFIG_CONTAINNER_SIZE) != CONFIG_CONTAINNER_SIZE) {
            flag[i] = 0;
        }

        fdcm_close(fdcm_hdl);
    }

    if(flag[0] && flag[1]) {
        if (containner[0].cnt > containner[1].cnt) {
            idx = 0;
        } else {
            idx = 1;
        }
    } else if(flag[0]) {
        idx = 0;
    } else if(flag[1]) {
        idx = 1;
    } else {
        FUN_DEBUG("load fiald.\r\n");
        free(containner);
        return AEC_UNDEFINED;
    }

    memcpy(para->cfg, &containner[idx].cfg, sizeof(at_config_t));

    free(containner);

    return AEC_OK;
}

static AT_ERROR_CODE status(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    struct netif *nif = g_wlan_netif;
    s32 i;

    memset(para->sts, 0, sizeof(*para->sts));

    if (nif == NULL) {
        return AEC_UNDEFINED;
    }

    if (NET_IS_IP4_VALID(nif) && netif_is_link_up(nif)) {
        memcpy(para->sts->ip_ipaddr, &nif->ip_addr, 4);
        memcpy(para->sts->ip_gw, &nif->gw, 4);
        memcpy(para->sts->ip_netmask, &nif->netmask, 4);
    }

    para->sts->current_time = time(NULL);

    para->sts->ip_sock_open = 0;

    for (i=0; i<MAX_SOCKET_NUM; i++) {
        if (networks.connect[i].flag) {
            para->sts->ip_sock_open |= (1<<i);
        }
    }

    if (g_server_enable) {
        para->sts->ip_sockd_port = g_server_arg.port;
    }

    wlan_ap_sta_num(&para->sts->wifi_num_assoc);

    return AEC_OK;
}

static AT_ERROR_CODE factory(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    struct sysinfo *psysinfo;

    memcpy(para->cfg, &default_cfg, sizeof(at_config_t));

    /* non-volatile config */
    strcpy(para->cfg->nv_manuf, MANUFACTURER);
    strcpy(para->cfg->nv_model, MODEL);
    strcpy(para->cfg->nv_serial, SERIAL);
#if PRJCONF_SYSINFO_SAVE_TO_FLASH
    sysinfo_load();
#endif
    psysinfo = sysinfo_get();
    memcpy(para->cfg->nv_wifi_macaddr, psysinfo->mac_addr, sizeof(para->cfg->nv_wifi_macaddr));

    save(para, NULL);

    return AEC_OK;
}

uint16_t net_get_status(void)
{
    return net_evevt_state;
}

extern s32 test_ping(char *hostname, int count);
static AT_ERROR_CODE ping(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    test_ping(para->u.ping.hostname,3);

    return AEC_OK;
}

static AT_ERROR_CODE peer(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    return AEC_OK;
}
#endif

#define SOCKET_TASK_STACK_SIZE (1 * 1024)
#define QLEN_ATCMDSEND 5

static TaskHandle_t socket_task_handler[5];
static QueueHandle_t q_SocketSend[5];

static AT_ERROR_CODE socket_task_delete(int linkId) {
  if (linkId >= MAX_SOCKET_NUM) {
    return AEC_SOCKET_FAIL;
  }
  if (networks.connect[linkId].ThreadHd != 0) {
      if (q_SocketSend[linkId]) {
          vQueueDelete(q_SocketSend[linkId]);
          q_SocketSend[linkId] = NULL;
      }
      networks.connect[linkId].ThreadHd = 0;
      if (socket_task_handler[linkId]) {
          vTaskDelete(socket_task_handler[linkId]);
      }
  }
  return AEC_OK;
}

static AT_ERROR_CODE disconnect(s32 id) {
  FUN_DEBUG("disconnect id = %d!\r\n", id);
  if (networks.connect[id].flag) {
    networks.connect[id].flag = 0;
    vTaskDelay(pdMS_TO_TICKS(200));

    closesocket(networks.connect[id].fd);
    FUN_DEBUG("disconnect closesocket id = %d!\r\n", id);
    networks.connect[id].fd = -1;
    networks.connect[id].flag = 0;
    networks.count--;
    socket_task_delete((int)id);
    return AEC_OK;
  }
  return AEC_DISCONNECT;
}

static TaskHandle_t OS_Thread_sockon_handler;
static QueueHandle_t OS_queue_sockon_handler;
AT_ERROR_CODE socket_task_create(int linkId);
typedef struct {
  at_callback_para_t para;
  at_callback_rsp_t rsp;
} at_sockontask_para_t;
at_sockontask_para_t sockontask_data;

static void sockon_task(void *arg) {
  AT_ERROR_CODE ret;
  BaseType_t status;
  at_sockontask_para_t sockpara;

  while (1) {
    status = xQueueReceive(OS_queue_sockon_handler, &sockpara, portMAX_DELAY);
    if (status == pdPASS) {
      ret = sockon(&sockpara.para, &sockpara.rsp);
      if (AEC_OK == ret) {
        ret = socket_task_create(sockpara.para.u.net_param.linkId);
      }
      if (AEC_SOCKET_EXISTING == ret) {
        at_dump("socket%d is ALREADY CONNECT\r\n", sockpara.para.u.sockon.fd);
      }
      // FIXME(Zhuoran) fd => linkId
      if (AEC_OK == ret) {
        at_dump("+IPS:%d,0\r\n", sockpara.para.u.sockon.fd);
      } else {
        at_dump("+IPS:%d,-1\r\n", sockpara.para.u.sockon.fd);
      }
      ret = AEC_UNDEFINED;
      memset(&sockpara, 0, sizeof(at_sockontask_para_t));
    }
  }
}
#if 0
static void __server_task_entry(void *arg)
{
    server_arg_t *server_arg;

    server_arg = arg;

    do {
        if (server_arg->protocol == 0) { /* TCP */
            struct sockaddr_in server_addr;
            struct sockaddr_in conn_addr;
            int sock_fd;                  /* server socked */
            int sock_conn;        /* request socked */
            socklen_t addr_len;
            int err;
            int option;

            sock_fd = socket(AF_INET, SOCK_STREAM, 0);
            if (sock_fd == -1) {
                FUN_DEBUG("failed to create sock_fd!\r\n");
                break;
            }

            server_mutex_lock();
            g_server_net.sock_fd = sock_fd;
            server_mutex_unlock();

            FUN_DEBUG("sock fd = %d\r\n", sock_fd);

            memset(&server_addr, 0, sizeof(server_addr));
            server_addr.sin_family = AF_INET;
            server_addr.sin_addr.s_addr =htonl(INADDR_ANY);
            server_addr.sin_port = htons(server_arg->port);

            option = 1;
            if (setsockopt(sock_fd, SOL_SOCKET, SO_REUSEADDR, (char *)&option, sizeof(option)) < 0) {
                FUN_DEBUG("failed to setsockopt sock_fd!\r\n");
                closesocket(sock_fd);
                break;
            }

            option = 1;
            if (setsockopt(sock_fd, SOL_SOCKET, SO_REUSEPORT, (char *)&option, sizeof(option)) < 0) {
                FUN_DEBUG("failed to setsockopt sock_fd!\r\n");
                closesocket(sock_fd);
                break;
            }

            err = bind(sock_fd, (struct sockaddr *)&server_addr, sizeof(server_addr));
            if (err < 0) {
                FUN_DEBUG("bind err = %d\r\n", err);
                FUN_DEBUG("failed to bind sock_fd!\r\n");
                closesocket(sock_fd);
                break;
            }

            err = listen(sock_fd, 1);
            if (err < 0) {
                FUN_DEBUG("failed to listen sock_fd!\r\n");
                closesocket(sock_fd);
                break;
            }

            addr_len = sizeof(struct sockaddr_in);

            while (1) {
                if (xSemaphoreTake(g_server_sem, portMAX_DELAY) != pdTRUE)
                    continue;

                FUN_DEBUG("before accept!\r\n");
                sock_conn = accept(sock_fd, (struct sockaddr *)&conn_addr, &addr_len);
                FUN_DEBUG("after accept!\r\n");

                if (sock_conn > 0) {
                    server_mutex_lock();
                    g_server_net.flag = 1;
                    g_server_net.conn_fd = sock_conn;
                    server_mutex_unlock();
                }

                FUN_DEBUG("conn fd = %d\r\n", sock_conn);
            }
        } else if (server_arg->protocol == 1) { /* UDP */
            /* do nothing */
        }
    } while (0);

    server_mutex_lock();
    g_server_net.flag = 0;
    g_server_net.sock_fd = -1;
    g_server_net.conn_fd = -1;
    server_mutex_unlock();

    FUN_DEBUG("%s() end\r\n", __func__);
    vTaskDelete(g_server_thread);
}
#endif
static AT_ERROR_CODE sockon(at_callback_para_t *para, at_callback_rsp_t *rsp) {
  int type;
  int family;
  struct addrinfo hints_tcp = {0, AF_INET, SOCK_STREAM, IPPROTO_TCP, 0, NULL, NULL, NULL};
  struct addrinfo hints_udp = {0, AF_INET, SOCK_DGRAM, IPPROTO_UDP, 0, NULL, NULL, NULL};

  int rc = -1;
  struct sockaddr_in address;
  struct addrinfo *result = NULL;
  s32 id = -1;
  int fd = 0;

  int socketid = para->u.net_param.linkId;

  rsp->status = 0;

  if (socketid >= 4) return AEC_PARA_ERROR;

  if (networks.connect[socketid].flag) {
    sprintf(rsp->vptr, "ALREADY CONNECT");
    rsp->type = 1;
    rsp->status = 1;
    return AEC_SOCKET_EXISTING;
  }

  strncpy(networks.connect[socketid].type, para->u.net_param.type, 4);
  /*
      if (networks.connect[socketid].fd != -1) {
          return AEC_SOCKET_FAIL;
      }
  */

  strncpy(networks.connect[socketid].ip, para->u.net_param.hostname, IP_ADDR_SIZE);
  networks.connect[socketid].port = para->u.net_param.port;

  if (strcmp(para->u.net_param.networkType, "TCP") == 0) {
    networks.connect[socketid].protocol = 0;
  } else if (strcmp(para->u.net_param.networkType, "UDP") == 0) {
    networks.connect[socketid].protocol = 1;
  } else {
    return AEC_PARA_ERROR;
  }

  if (networks.connect[socketid].protocol == 0) { /* TCP */
    type = SOCK_STREAM;
    family = AF_INET;
    if ((rc = getaddrinfo(networks.connect[socketid].ip, NULL, &hints_tcp, &result)) == 0) {
      struct addrinfo *res = result;

      while (res) {
        if (res->ai_family == family) {
          result = res;
          break;
        }
        res = res->ai_next;
      }

      if (result->ai_family == family) {
        address.sin_port = htons(networks.connect[socketid].port);
        address.sin_family = family;
        address.sin_addr = ((struct sockaddr_in *)(result->ai_addr))->sin_addr;
      } else
        rc = -1;

      freeaddrinfo(result);
    }

    if (rc == 0) {
      fd = socket(family, type, 0);
      if (fd < 0) return AEC_SOCKET_FAIL;

      rc = connect(fd, (struct sockaddr *)&address, sizeof(address));
      if (rc < 0) {
        closesocket(fd);
        return AEC_CONNECT_FAIL;
      }

    } else {
      return AEC_CONNECT_FAIL;
    }

    networks.connect[socketid].fd = fd;
    networks.connect[socketid].flag = 1;

    networks.count++;

    memset(&socket_cache[socketid], 0, sizeof(socket_cache_t));

    rsp->type = 0;
    return AEC_OK;
  } else if (networks.connect[socketid].protocol == 1) { /* UDP */
    type = SOCK_DGRAM;
    family = AF_INET;
    if ((rc = getaddrinfo(networks.connect[socketid].ip, NULL, &hints_udp, &result)) == 0) {
      struct addrinfo *res = result;

      while (res) {
        if (res->ai_family == family) {
          result = res;
          FUN_DEBUG("sockon UDP getaddrinfo aifamily!\r\n");
          break;
        }
        res = res->ai_next;
      }

      if (result->ai_family == family) {
        address.sin_port = htons(networks.connect[socketid].port);
        address.sin_family = family;
        address.sin_addr.s_addr = htonl(INADDR_ANY);
      } else
        rc = -1;

      freeaddrinfo(result);
    }

    if (rc == 0) {
      fd = socket(family, type, 0);
      if (fd < 0) return AEC_SOCKET_FAIL;

      /* for receive */
      FUN_DEBUG("sockon UDP bind address prot = %d!\r\n", networks.connect[socketid].port);
      rc = bind(fd, (struct sockaddr *)&address, sizeof(address));
      if (rc < 0) {
        closesocket(fd);
        return AEC_BIND_FAIL;
      }
    } else {
      return AEC_BIND_FAIL;
    }

    networks.connect[socketid].fd = fd;
    networks.connect[socketid].flag = 1;

    networks.count++;

    memset(&socket_cache[socketid], 0, sizeof(socket_cache_t));

    rsp->type = 0;
    rsp->vptr = (void *)id;

    return AEC_OK;
  }
  return AEC_CMD_FAIL;
}

#if 0
static AT_ERROR_CODE sockw(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    s32 id;
    u8 *buffer;
    s32 len;
    struct sockaddr_in address;
    s32 timeout_ms = 10;
    int sentLen = 0;

    id = para->u.sockw.id;
    buffer = para->u.sockw.buf;
    len = para->u.sockw.len;

    if (networks.count > 0) {
        if (networks.connect[id].flag) {
            if (networks.connect[id].protocol == 0) { /* TCP */
                int rc = -1;
                fd_set fdset;
                struct timeval tv;

                FD_ZERO(&fdset);
                FD_SET(networks.connect[id].fd, &fdset);

                tv.tv_sec = timeout_ms / 1000;
                tv.tv_usec = (timeout_ms % 1000) * 1000;

                rc = select(networks.connect[id].fd + 1, NULL, &fdset, NULL, &tv);
                if (rc > 0) {
                    if ((rc = send(networks.connect[id].fd, buffer, len, 0)) > 0)
                        sentLen = rc;
                    else if (rc == 0) {
                        disconnect(id);
                        sentLen = -1; /* disconnected with server */
                    } else {
                        sentLen = -2; /* network error */
                    }
                } else if (rc == 0) {
                    sentLen = 0; /* timeouted and sent 0 bytes */
                } else {
                    sentLen = -2; /* network error */
                }
            } else if (networks.connect[id].protocol == 1) { /* UDP */
                int rc = -1;
                fd_set fdset;
                struct timeval tv;

                FD_ZERO(&fdset);
                FD_SET(networks.connect[id].fd, &fdset);

                tv.tv_sec = timeout_ms / 1000;
                tv.tv_usec = (timeout_ms % 1000) * 1000;

                address.sin_port = htons(networks.connect[id].port);
                address.sin_family = AF_INET;
                address.sin_addr.s_addr= inet_addr(networks.connect[id].ip);

                rc = select(networks.connect[id].fd + 1, NULL, &fdset, NULL, &tv);
                if (rc > 0) {
                    if ((rc = sendto(networks.connect[id].fd, buffer, len, 0, (struct sockaddr *)&address, sizeof(address))) > 0)
                        sentLen = rc;
                    else if (rc == 0) {
                        disconnect(id);
                        sentLen = -1; /* disconnected with server */
                    } else {
                        sentLen = -2; /* network error */
                    }
                } else if (rc == 0) {
                    sentLen = 0; /* timeouted and sent 0 bytes */
                } else {
                    sentLen = -2; /* network error */
                }
            }
        } else {
            return AEC_DISCONNECT;
        }
    } else {
        return AEC_DISCONNECT;
    }

    if (sentLen == -1) {
        return AEC_DISCONNECT;
    } else if (sentLen == -2) {
        return AEC_NETWORK_ERROR;
    } else if (sentLen == len) {
        return AEC_OK;
    } else {
        return AEC_SEND_FAIL;
    }
}


typedef struct Timer Timer;

struct Timer {
    unsigned int end_time;
};


/** countdown_ms - set timeout value in mil seconds
 * @param timer - timeout timer where the timeout value save
 * @param timeout_ms - timeout in timeout_ms mil seconds
 */
static void countdown_ms(Timer* timer, unsigned int timeout_ms)
{
    timer->end_time = OS_TicksToMSecs(OS_GetTicks()) + timeout_ms;
}

/** countdown - set timeout value in seconds
 * @param timer - timeout timer where the timeout value save
 * @param timeout - timeout in timeout seconds
 */
/*
static void countdown(Timer* timer, unsigned int timeout)
{
countdown_ms(timer, timeout * 1000);
}
*/

/** left_ms - calculate how much time left before timeout
 * @param timer - timeout timer
 * @return the time left befor timeout, or 0 if it has expired
 */
static int left_ms(Timer* timer)
{
    int diff = (int)(timer->end_time) - (int)(OS_TicksToMSecs(OS_GetTicks()));
    return (diff < 0) ? 0 : diff;
}

/** expired - has it already timeouted
 * @param timer - timeout timer
 * @return 0 if it has already timeout, or otherwise.
 */
static char expired(Timer* timer)
{
    return 0 <= (int)OS_TicksToMSecs(OS_GetTicks()) - (int)(timer->end_time); /* is time_now over than end time */
}

static AT_ERROR_CODE read_socket(s32 id)
{
    int recvLen = 0;
    int leftms;
    int rc = -1;
    struct timeval tv;
    Timer timer;
    fd_set fdset;
    struct sockaddr_in address;
    socklen_t addr_len;

    u8 *buffer;
    s32 len;
    s32 timeout_ms = 10;

    buffer = socket_cache[id].buffer;
    len = SOCKET_CACHE_BUFFER_SIZE;

    countdown_ms(&timer, timeout_ms);

    do {
        leftms = left_ms(&timer);
        tv.tv_sec = leftms / 1000;
        tv.tv_usec = (leftms % 1000) * 1000;

        FD_ZERO(&fdset);
        FD_SET(networks.connect[id].fd, &fdset);

        rc = select(networks.connect[id].fd + 1, &fdset, NULL, NULL, &tv);
        if (rc > 0) {
            if (networks.connect[id].protocol == 0) { /* TCP */
                rc = recv(networks.connect[id].fd, buffer + recvLen, len - recvLen, 0);
            } else if (networks.connect[id].protocol == 1) { /* UDP */
                address.sin_port = htons(networks.connect[id].port);
                address.sin_family = AF_INET;
                address.sin_addr.s_addr= inet_addr(networks.connect[id].ip);

                addr_len = sizeof(address);

                rc = recvfrom(networks.connect[id].fd, buffer + recvLen, len - recvLen, 0, (struct sockaddr *)&address, &addr_len);
            }

            if (rc > 0) {
                /* received normally */
                recvLen += rc;
            } else if (rc == 0) {
                /* has disconnected with server */
                recvLen = -1;
                break;
            } else {
                /* network error */
                recvLen = -2;
                break;
            }
        } else if (rc == 0) {
            /* timeouted and return the length received */
            break;
        } else {
            /* network error */
            recvLen = -2;
            break;
        }
    } while (recvLen < len && !expired(&timer)); /* expired() is redundant? */

    if (recvLen >= 0) {
        if (recvLen > 0) {
            socket_cache[id].cnt = recvLen;
            socket_cache[id].offset = 0;
            socket_cache[id].flag = 1;
        }

        return AEC_OK;
    } else if (recvLen == -1) {
        return AEC_DISCONNECT;
    } else if (recvLen == -2) {
        return AEC_NETWORK_ERROR;
    } else {
        return AEC_UNDEFINED;
    }
}

static AT_ERROR_CODE sockq(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    AT_ERROR_CODE aec;
    s32 id;

    id = para->u.sockq.id;

    if (networks.count > 0) {
        if (networks.connect[id].flag) {
            if (socket_cache[id].flag) {
                rsp->type = 0;
                rsp->vptr = (void *)socket_cache[id].cnt;

                return AEC_OK;
            }

            aec = read_socket(id);
            if (aec != AEC_OK) {
                return aec;
            }

            if (socket_cache[id].flag) {
                rsp->type = 0;
                rsp->vptr = (void *)socket_cache[id].cnt;

                return AEC_OK;
            } else {
                rsp->type = 0;
                rsp->vptr = (void *)0;

                return AEC_OK;
            }
        } else {
            return AEC_DISCONNECT;
        }
    } else {
        return AEC_DISCONNECT;
    }
}

static AT_ERROR_CODE sockr(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    AT_ERROR_CODE aec;
    s32 id;
    u8 *buffer;
    s32 len,rlen;

    id = para->u.sockr.id;
    len = para->u.sockr.len;

    if (networks.count > 0) {
        if (networks.connect[id].flag) {
            /* FUN_DEBUG("len = %d\r\n", len); */
            if (len > 0) {
                if (!socket_cache[id].flag) {

                    aec = read_socket(id);
                    if (aec != AEC_OK) {
                        return aec;
                    }
                }

                if (socket_cache[id].flag) {
                    buffer = socket_cache[id].buffer;
                    rlen = len < socket_cache[id].cnt ? len : socket_cache[id].cnt;

                    serial_write(&buffer[socket_cache[id].offset], rlen);

                    socket_cache[id].cnt -= rlen;
                    socket_cache[id].offset += rlen;
                    len -= rlen;

                    if (socket_cache[id].cnt <= 0) {
                        socket_cache[id].flag = 0;
                    }
                }
            }
        } else {
            return AEC_DISCONNECT;
        }
    } else {
        return AEC_DISCONNECT;
    }

    return AEC_OK;
}

static AT_ERROR_CODE sockc(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    s32 id;

    id = para->u.sockc.id;

    if (networks.count > 0) {
        if (networks.connect[id].flag) {
            closesocket(networks.connect[id].fd);
            networks.connect[id].flag = 0;
            networks.count--;

            return AEC_OK;
        }
    }

    return AEC_DISCONNECT;
}
#endif
static int serversock_fd = -1;   /* server socked */
static TaskHandle_t server_task_handle = NULL;
static void server_task(void *arg) {
  server_arg_t *server_arg;
  server_arg = arg;
  int ret;

  do {
    if (server_arg->protocol == 0) { /* TCP */
      struct sockaddr_in server_addr;
      struct sockaddr_in conn_addr;
      int sock_conn; /* request socked */
      socklen_t addr_len;
      int err;
      int option;

      serversock_fd = socket(AF_INET, SOCK_STREAM, 0);
      if (serversock_fd == -1) {
        FUN_DEBUG("failed to create sock_fd!\r\n");
        break;
      }

      FUN_DEBUG("sock fd = %d\r\n", sock_fd);

      memset(&server_addr, 0, sizeof(server_addr));
      server_addr.sin_family = AF_INET;
      server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
      server_addr.sin_port = htons(server_arg->port);

      option = 1;
      if (setsockopt(serversock_fd, SOL_SOCKET, SO_REUSEADDR, (char *)&option, sizeof(option)) < 0) {
        FUN_DEBUG("failed to setsockopt sock_fd!\r\n");
        closesocket(serversock_fd);
        break;
      }

//      option = 1;
//      if (setsockopt(sock_fd, SOL_SOCKET, SO_REUSEPORT, (char *)&option, sizeof(option)) < 0) {
//        FUN_DEBUG("failed to setsockopt sock_fd!\r\n");
//        closesocket(sock_fd);
//        break;
//      }

      err = bind(serversock_fd, (struct sockaddr *)&server_addr, sizeof(server_addr));
      if (err < 0) {
        FUN_DEBUG("bind err = %d\r\n", err);
        FUN_DEBUG("failed to bind sock_fd!\r\n");
        closesocket(serversock_fd);
        break;
      }

      err = listen(serversock_fd, 1);
      if (err < 0) {
        FUN_DEBUG("failed to listen sock_fd!\r\n");
        closesocket(serversock_fd);
        break;
      }

      addr_len = sizeof(struct sockaddr_in);

      // FIXME(Zhuoran) 此处阻塞在accept上，然后停掉server，g_server_enable=0，但是accept未跳出
      // 然后又来一次CIPSERVER
      while (g_server_enable) {
        int linkId;

        FUN_DEBUG("before accept!\r\n");
        sock_conn = accept(serversock_fd, (struct sockaddr *)&conn_addr, &addr_len);
        FUN_DEBUG("after accept!\r\n");

        FUN_DEBUG("conn fd = %d\r\n", sock_conn);
        for (linkId = 0; linkId < MAX_SOCKET_NUM; linkId++) {
          if (networks.connect[linkId].flag == 0){
            memset(&networks.connect[linkId], 0, sizeof(networks.connect[linkId]));
            break;
          }
        }
        if (networks.connect[linkId].flag != 0) {
          // TODO no avaliable connect slot
          // 关闭Server Socket
          break;
        }
        networks.count++;

        // set connect parameter
        networks.connect[linkId].fd = sock_conn;
        networks.connect[linkId].flag = 1;
        networks.connect[linkId].protocol = 0;
        networks.connect[linkId].port = conn_addr.sin_port;
        // FIXME(Zhuoran.rong) add peer ip address
        // networks.connect[linkId].ip = conn_addr.sin_port;
        strcpy(networks.connect[linkId].type, "TCP");

        ret = socket_task_create(linkId);
        if (AEC_SOCKET_EXISTING == ret) {
          at_dump("socket %d is ALREADY CONNECT\r\n", linkId);
        }
        if (AEC_OK == ret) {
          at_dump("+IPS:%d,0\r\n", linkId);
        } else {
          at_dump("+IPS:%d,-1\r\n", linkId);
        }
      }

      closesocket(serversock_fd);
    } else if (server_arg->protocol == 1) { /* UDP */
                                            /* do nothing */
    }
  } while (0);
  

  FUN_DEBUG("%s() end\r\n", __func__);
  vTaskDelete(NULL);
}

#if 0
static AT_ERROR_CODE sockd(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    s16 port;
    s32 protocol;

    port = para->u.sockd.port;
    protocol = para->u.sockd.protocol;

    if (port > 0) {
        if (!g_server_enable) {
            g_server_arg.port = para->u.sockd.port;
            g_server_arg.protocol = para->u.sockd.protocol;
            memset(&socket_cache[MAX_SOCKET_NUM], 0,sizeof(socket_cache_t));

            if (protocol == 0) { /* TCP */
                server_mutex_lock();
                g_server_net.flag = 0;
                g_server_net.sock_fd = -1;
                g_server_net.conn_fd = -1;
                server_mutex_unlock();

                if (OS_SemaphoreCreate(&g_server_sem, 1, 1) != OS_OK) {
                    FUN_DEBUG("create semaphore failed\r\n");

                    return AEC_UNDEFINED;
                }

                if (OS_ThreadCreate(&g_server_thread,
                                    "",
                                    server_task,
                                    &g_server_arg,
                                    OS_PRIORITY_NORMAL,
                                    SERVER_THREAD_STACK_SIZE) != OS_OK) {
                    FUN_DEBUG("create server task failed\r\n");

                    return AEC_UNDEFINED;
                }

                memset(&g_server_ctrl, 0, sizeof(g_server_ctrl));
            } else if (protocol == 1) { /* UDP */
                struct sockaddr_in  address;
                int rc;
                int fd;

                fd = socket(AF_INET, SOCK_DGRAM, 0);
                if (fd < 0) {
                    return AEC_SOCKET_FAIL;
                }

                memset(&address, 0, sizeof(address));
                address.sin_family = AF_INET;
                address.sin_addr.s_addr =htonl(INADDR_ANY);
                address.sin_port = htons(port);
                /* for receive */
                rc = bind(fd, (struct sockaddr *)&address, sizeof(address));
                if (rc < 0) {
                    closesocket(fd);
                    return AEC_BIND_FAIL;
                }

                server_mutex_lock();
                g_server_net.flag = 1;
                g_server_net.sock_fd = -1;
                g_server_net.conn_fd = fd;
                server_mutex_unlock();
            }

            g_server_enable = 1;

            return AEC_OK;
        }
    } else if (g_server_enable) {
        u32 flag;
        s32 sock_fd,conn_fd;

        server_mutex_lock();
        flag = g_server_net.flag;
        sock_fd = g_server_net.sock_fd;
        conn_fd = g_server_net.conn_fd;
        server_mutex_unlock();

        if (g_server_arg.protocol == 0) { /* TCP */
            if (sock_fd != -1) {
                FUN_DEBUG("close fd = %d\r\n", sock_fd);
                closesocket(sock_fd);
            }

            if (flag) {
                FUN_DEBUG("close fd = %d\r\n", conn_fd);
                closesocket(conn_fd);
            }

            OS_SemaphoreDelete(&g_server_sem);
            OS_ThreadDelete(&g_server_thread);

        } else if (g_server_arg.protocol == 1) { /* UDP */
            if (flag) {
                FUN_DEBUG("close fd = %d\r\n", conn_fd);
                closesocket(conn_fd);
            }
        }

        g_server_enable = 0;

        return AEC_OK;
    }

    return AEC_UNDEFINED;
}

static AT_ERROR_CODE wifi(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    AT_ERROR_CODE aec = AEC_OK;

    switch (para->cfg->wifi_mode) {
    case 0: /* IDLE */
        aec = AEC_IMPROPER_OPERATION;
        break;

    case 1: /* STA */

        if (para->u.wifi.value == 0) {
            wlan_sta_disable();
        } else if (para->u.wifi.value == 1) {
            wlan_sta_enable();
        } else {
            aec = AEC_PARA_ERROR;
        }

        break;

    case 2: /* AP */

        if (para->u.wifi.value == 0) {
            wlan_ap_disable();
        } else if (para->u.wifi.value == 1) {
            wlan_ap_enable();
        } else {
            aec = AEC_PARA_ERROR;
        }

        break;

    case 3: /* IBSS */
        aec = AEC_IMPROPER_OPERATION;
        break;

    default:

        aec = AEC_PARA_ERROR;

        break;
    }

    return aec;
}

static AT_ERROR_CODE reassociate(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    wlan_sta_connect();

    return AEC_OK;
}

static AT_ERROR_CODE gpioc(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    return AEC_OK;
}

static AT_ERROR_CODE gpior(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    return AEC_OK;
}

static AT_ERROR_CODE gpiow(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    return AEC_OK;
}

static s32 freq_to_chan(s32 freq)
{
    s32 i;

    for (i = 0; i < TABLE_SIZE(channel_freq_tbl); ++i) {
        if(freq == channel_freq_tbl[i]) {
            break;
        }
    }

    if(i >= TABLE_SIZE(channel_freq_tbl)) {
        return -1;
    }

    return i+1;
}
#endif
static AT_ERROR_CODE scan(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
#if 0
    AT_ERROR_CODE aec = AEC_OK;
    int ret = -1;
    int size;
    char ssid[32+1];
    wlan_sta_scan_results_t results;

    if (para->cfg->wifi_mode != 1) { /* STA */
        return AEC_IMPROPER_OPERATION;
    }

    wlan_sta_scan_once();

    size = MAX_SCAN_RESULTS;

    results.ap = cmd_malloc(size * sizeof(wlan_sta_ap_t));
    if (results.ap == NULL) {
        aec = AEC_SCAN_FAIL;
    }

    if (aec == AEC_OK) {
        results.size = size;
        ret = wlan_sta_scan_result(&results);

        if (ret == 0) {
            /* cmd_wlan_sta_print_scan_results(&results); */
            int i;

            for (i = 0; i < results.num; i++) {
                memcpy(ssid, results.ap[i].ssid.ssid, results.ap[i].ssid.ssid_len);
                ssid[results.ap[i].ssid.ssid_len] = '\0';
                at_dump("%2d    BSS %02X:%02X:%02X:%02X:%02X:%02X    SSID: %-32.32s    "
                        "CHAN: %2d    RSSI: %d    flags: %08x    wpa_key_mgmt: %08x    "
                        "wpa_cipher: %08x    wpa2_key_mgmt: %08x    wpa2_cipher: %08x\n",
                        i + 1, (results.ap[i].bssid)[0], (results.ap[i].bssid)[1],
                        (results.ap[i].bssid)[2], (results.ap[i].bssid)[3],
                        (results.ap[i].bssid)[4], (results.ap[i].bssid)[5],
                        ssid, freq_to_chan(results.ap[i].freq),results.ap[i].level,
                        results.ap[i].wpa_flags, results.ap[i].wpa_key_mgmt,
                        results.ap[i].wpa_cipher,results.ap[i].wpa2_key_mgmt,
                        results.ap[i].wpa2_cipher);
            }
        }

        cmd_free(results.ap);
    }

    return aec;
    #else
    AT_ERROR_CODE aec = AEC_OK;
    uint32_t cnt;
    int ret, i;
    wifi_mgmr_ap_item_t *ap_ary = NULL;

extern char *wifi_mgmr_auth_to_str(uint8_t auth);

    ret = wifi_mgmr_all_ap_scan(&ap_ary, &cnt);
    if (ret != 0) {
        printf("wifi all ap scan error %d\r\n", ret);
    }
    else {
        printf("Scan done: %lu ap info\r\n", cnt);
        at_dump("+CWLAP:\r\n");
        for (i = 0; i < cnt; i++) {
            if (strlen((char *)ap_ary[i].ssid) > 0) {
                at_dump("%2d,%s,%02x:%02x:%02x:%02x:%02x:%02x,"
                        "%2d,%d,%s\r\n",
                        i,
                        ap_ary[i].ssid,
                        ap_ary[i].bssid[0],
                        ap_ary[i].bssid[1],
                        ap_ary[i].bssid[2],
                        ap_ary[i].bssid[3],
                        ap_ary[i].bssid[4],
                        ap_ary[i].bssid[5],
                        ap_ary[i].channel,
                        ap_ary[i].rssi,
                        wifi_mgmr_auth_to_str(ap_ary[i].auth));
                vTaskDelay(pdMS_TO_TICKS(5));
            }
        }
        if (ap_ary != NULL) {
            vPortFree(ap_ary);
        }
    }
    return aec;
    #endif
}

static AT_ERROR_CODE version(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    at_dump("+GMR:fw:\"%s-%s\"\r\n", BL_SDK_PHY_VER, BL_SDK_RF_VER);

    at_dump("+GMR:sdk:\""BL_SDK_VER"\"\r\n");

    at_dump("+GMR:tm:\"%s %s\"\r\n",__DATE__,__TIME__);
    return AEC_OK;
}

static AT_ERROR_CODE restory(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    FUN_DEBUG("----->\n");

    ef_env_set_default();

    return AEC_OK;
}

#if 0
// UART Config
static UART_CFG_Type uartCfg =
{
    160*1000*1000,                                        /* UART clock */
    115200,                                              /* UART Baudrate */
    UART_DATABITS_8,                                     /* UART data bits length */
    UART_STOPBITS_1,                                     /* UART data stop bits length */
    UART_PARITY_NONE,                                    /* UART no parity */
    DISABLE,                                             /* Disable auto flow control */
    DISABLE,                                             /* Disable rx input de-glitch function */
    DISABLE,                                             /* Disable RTS output SW control mode */
    UART_LSB_FIRST                                       /* UART each data byte is send out LSB-first */
};
static UART_FifoCfg_Type fifoCfg =
{
    .txFifoDmaThreshold     = 0x10,
    .rxFifoDmaThreshold     = 0x10,
    .txFifoDmaEnable        = DISABLE,
    .rxFifoDmaEnable        = DISABLE,
};
#endif

static AT_ERROR_CODE uart_get(at_callback_para_t * para, at_callback_rsp_t * rsp) {
//  para->u.uart.uartBaud = uartCfg.baudRate;
//  para->u.uart.dataBit = uartCfg.dataBits + 5;
//  para->u.uart.stopBit = uartCfg.stopBits + 1;
//  para->u.uart.parity = uartCfg.parity;
//
//  if (uartCfg.ctsFlowControl == ENABLE && uartCfg.rtsSoftwareControl == ENABLE) {
//    para->u.uart.hwfc = 3;
//  } else if (uartCfg.ctsFlowControl == DISABLE && uartCfg.rtsSoftwareControl == ENABLE) {
//    para->u.uart.hwfc = 1;
//  } else if (uartCfg.ctsFlowControl == ENABLE && uartCfg.rtsSoftwareControl == DISABLE) {
//    para->u.uart.hwfc = 2;
//  } else if (uartCfg.ctsFlowControl == DISABLE && uartCfg.rtsSoftwareControl == DISABLE) {
//    para->u.uart.hwfc = 0;
//  } else {
//    return AEC_CMD_ERROR;
//  }
  at_serial_baud_get((uint32_t *)&para->u.uart.uartBaud);
  return AEC_OK;
}

static AT_ERROR_CODE uart_set(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
//    const uint8_t uart_div = 3;
//    UART_CFG_Type cfg_tmp;

    printf("at_para.baudrate = %d\r\n", para->u.uart.uartBaud);
    at_serial_baud_set(para->u.uart.uartBaud);

    /* gpio init */
    // gpio_init(id, tx_pin, rx_pin, cts_pin, rts_pin);
//    memcpy(&cfg_tmp, &uartCfg, sizeof(UART_CFG_Type));
//
//    cfg_tmp.baudRate = para->u.uart.uartBaud;
//    cfg_tmp.uartClk = (160 * 1000 * 1000) / (uart_div + 1);
//
//    if (para->u.uart.dataBit >= 5 && para->u.uart.dataBit <= 8) {
//      cfg_tmp.dataBits = para->u.uart.dataBit - 5;
//    } else {
//      return AEC_PARA_ERROR;
//    }
//
//    if (para->u.uart.stopBit >= 1 && para->u.uart.stopBit <= 3) {
//      cfg_tmp.stopBits = para->u.uart.stopBit - 1;
//    } else {
//      return AEC_PARA_ERROR;
//    }
//
//    if (para->u.uart.parity >= 0 && para->u.uart.parity <= 2) {
//      cfg_tmp.parity = para->u.uart.parity;
//    } else {
//      return AEC_PARA_ERROR;
//    }
//
//    switch (para->u.uart.hwfc) {
//      case 0:
//        cfg_tmp.ctsFlowControl = DISABLE;
//        cfg_tmp.rtsSoftwareControl = DISABLE;
//        break;
//
//      case 1:
//        cfg_tmp.ctsFlowControl = DISABLE;
//        cfg_tmp.rtsSoftwareControl = ENABLE;
//        break;
//
//      case 2:
//        cfg_tmp.ctsFlowControl = ENABLE;
//        cfg_tmp.rtsSoftwareControl = DISABLE;
//        break;
//
//      case 3:
//        cfg_tmp.ctsFlowControl = ENABLE;
//        cfg_tmp.rtsSoftwareControl = ENABLE;
//        break;
//
//      default:
//        return AEC_PARA_ERROR;
//    }
//
//    /* Disable all interrupt */
//    UART_IntMask(UART1_ID, UART_INT_ALL, MASK);
//
//    /* Disable uart before config */
//    UART_Disable(UART1_ID, UART_TXRX);
//
//    /* UART init */
//    UART_Init(UART1_ID, &cfg_tmp);
//
//    /* Enable tx free run mode */
//    UART_TxFreeRun(UART1_ID, ENABLE);
//
//    /* FIFO Config*/
//    UART_FifoConfig(UART1_ID, &fifoCfg);
//
//    /* Enable uart */
//    UART_Enable(UART1_ID, UART_TXRX);
//
//    memcpy(&uartCfg, &cfg_tmp, sizeof(UART_CFG_Type));
//
    return AEC_OK;
}

static AT_ERROR_CODE deep_sleep(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    FUN_DEBUG("----->\r\n");
    int sleep_time = para->u.sleep.sleepMode;
    at_dump("OK\r\n");
    vTaskDelay(10);
    at_serial_close();
    vTaskDelay(pdMS_TO_TICKS(sleep_time) * 1000);
    at_serial_open();
    at_dump("+GSLP:WEAKUP\r\n");
    return AEC_NO_RESPONSE;
}

#if 0
/*
enum suspend_state_t {
    PM_MODE_ON              = 0,
    PM_MODE_SLEEP           = 1,
    PM_MODE_STANDBY         = 2,
    PM_MODE_HIBERNATION     = 3,
    PM_MODE_POWEROFF        = 4,
    PM_MODE_MAX             = 5,
};
*/
#include "pm/pm.h"

static AT_ERROR_CODE sleep(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    FUN_DEBUG("----->\r\n");

    if(para->u.sleep.sleepMode < 0 || para->u.sleep.sleepMode > 5) {
        printf("The sleep mode is not support \r\n");
        return AEC_CMD_ERROR;
    } else {
        at_dump("OK");

        at_wakeup_gpio_init(5,0);
        OS_MSleep(5);
        pm_enter_mode(para->u.sleep.sleepMode);

    }
    return AEC_BLANK_LINE;
}

static AT_ERROR_CODE wakeupgpio(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    FUN_DEBUG("-->%s\r\n",__func__);

    at_wakeup_gpio_init(para->u.wakeupgpio.gpioId,para->u.wakeupgpio.edge);

    return AEC_OK;
}
#endif

enum wlan_mode {
    WIFI_DISABLE = 0,
    WIFI_STATION_MODE,
    WIFI_SOFTAP_MODE,
    WIFI_AP_STA_MODE,
};

static char g_soft_ap_ssid[65] = {0};

static AT_ERROR_CODE __wifimode_set(int mode)
{
    memset(g_soft_ap_ssid, 0, sizeof(g_soft_ap_ssid));
    if (mode == WIFI_DISABLE) {
        wifi_mgmr_sta_disconnect();
        vTaskDelay(1000);
        wifi_mgmr_sta_disable(NULL);
        wifi_mgmr_ap_stop(NULL);
    } else if (mode == WIFI_STATION_MODE) {
        wifi_mgmr_sta_disable(NULL);
        wifi_mgmr_ap_stop(NULL);
        g_wifi_interface = wifi_mgmr_sta_enable();
    } else if (mode == WIFI_SOFTAP_MODE) {
        wifi_mgmr_sta_disconnect();
        vTaskDelay(1000);
        wifi_mgmr_sta_disable(NULL);
        wifi_mgmr_ap_stop(NULL);
        g_wifi_interface = wifi_mgmr_ap_enable();
    } else {
        printf("The mode is not support \r\n");
        return AEC_CMD_ERROR;
    }
    return AEC_OK;
}

static AT_ERROR_CODE cwmode_cur(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    int now_mode;
    FUN_DEBUG("----->\r\n");

    if(para->u.wifiMode.mode < 0 || para->u.wifiMode.mode >= WIFI_AP_STA_MODE) {
        printf("The mode is not support \r\n");
        return AEC_CMD_ERROR;
    }
    at_wifimode_get(&now_mode);
    if (now_mode == para->u.wifiMode.mode) {
        return AEC_OK;
    }
    at_wifimode_set(para->u.wifiMode.mode);
    return __wifimode_set(para->u.wifiMode.mode);
}

static AT_ERROR_CODE cwmode_cur_get(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    at_wifimode_get(&para->u.wifiMode.mode);
    FUN_DEBUG("----->\r\n");
    return AEC_OK;
}
static char cur_ssid[SYSINFO_SSID_LEN_MAX];
static char cur_psk[SYSINFO_PSK_LEN_MAX];
static AT_ERROR_CODE cwjap_cur(at_callback_para_t *para, at_callback_rsp_t *rsp) {
  // uint32_t wep_open_connect_timeout_ms = 15500;
  // uint32_t timeout = xTaskGetTickCount() +
  // pdMS_TO_TICKS(wep_open_connect_timeout_ms);
  int wifiMode;
  int auto_conn;
  at_wifimode_get(&wifiMode);

  if (wifiMode != WIFI_STATION_MODE && wifiMode != WIFI_AP_STA_MODE) {
      return AEC_CMD_FAIL;
  }
  __wifimode_set(wifiMode);

  memset(cur_ssid, 0, SYSINFO_SSID_LEN_MAX * sizeof(char));
  memset(cur_psk, 0, SYSINFO_PSK_LEN_MAX * sizeof(char));
  memcpy(cur_ssid, para->u.joinParam.ssid, strlen(para->u.joinParam.ssid));
  memcpy(cur_psk, para->u.joinParam.pwd, strlen(para->u.joinParam.pwd));
  FUN_DEBUG("----->\r\n");

  if (para->u.joinParam.ssid == NULL) {
    printf("The ssid is NULL");
    return AEC_CMD_ERROR;
  } else {
    // wlan_sta_disable();
    // OS_MSleep(50);
    // FIXME joinParam pwd field is less
    // wlan_sta_enable();
    wifi_mgmr_sta_connect(g_wifi_interface, (char *)para->u.joinParam.ssid,
                          (char *)para->u.joinParam.pwd, NULL, NULL, 0, 0);
    at_wifi_auto_get(&auto_conn);
    if (auto_conn) {
        wifi_mgmr_sta_autoconnect_enable();
    } else {
        wifi_mgmr_sta_autoconnect_disable();
    }
    at_wifi_ssid_set((char *)para->u.joinParam.ssid);
    at_wifi_pask_set((char *)para->u.joinParam.pwd);
    // enable wifi autoreconnect
    return AEC_OK;
  }

  return AEC_CMD_ERROR;
}

static AT_ERROR_CODE cwjap_info(at_callback_para_t *para, at_callback_rsp_t *rsp) {
    wifi_mgmr_sta_connect_ind_stat_info_t info = {0};
    int state;
    ip4_addr_t ip = {0}, gw = {0}, mask = {0};

    wifi_mgmr_state_get(&state);

    if (state == WIFI_STATE_CONNECTED_IP_GETTING || state == WIFI_STATE_CONNECTED_IP_GOT) {
        wifi_mgmr_sta_connect_ind_stat_get(&info);
        wifi_mgmr_sta_ip_get(&ip.addr, &gw.addr, &mask.addr);
    }
    printf("---------------state %d-------------\r\n", state);

    at_dump("+CWJAP:%s,"
            "%02x:%02x:%02x:%02x:%02x:%02x,"
            "%s\r\n",
            info.ssid,
            info.bssid[0],
            info.bssid[1],
            info.bssid[2],
            info.bssid[3],
            info.bssid[4],
            info.bssid[5],
            ip4addr_ntoa(&ip));
    return AEC_OK;
}

#if 0
static AT_ERROR_CODE cwlapopt(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    FUN_DEBUG("----->\r\n");
    return AEC_OK;
}


static AT_ERROR_CODE cwlap(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    FUN_DEBUG("----->\r\n");

    scan(para, rsp);

    return AEC_OK;
}
#endif

static AT_ERROR_CODE cwqap(at_callback_para_t *para, at_callback_rsp_t *rsp) {
  FUN_DEBUG("----->\r\n");

  wifi_mgmr_sta_disconnect();
  vTaskDelay(1000);
  wifi_mgmr_sta_disable(NULL);

  return AEC_OK;
}

#if 0
static AT_ERROR_CODE cwdhcp_cur(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    FUN_DEBUG("----->\r\n");

    save(para, rsp);

    return AEC_OK;
}

static AT_ERROR_CODE cipstamac_cur(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    FUN_DEBUG("----->\r\n");

    save(para, rsp);

    return AEC_OK;
}


static AT_ERROR_CODE cipsta_cur(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    FUN_DEBUG("----->\r\n");

    save(para, rsp);//ip_ipaddr

    return AEC_OK;
}


static AT_ERROR_CODE cwhostname(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    FUN_DEBUG("----->\r\n");

    save(para, rsp);

    return AEC_OK;
}

//add for xr808
static AT_ERROR_CODE cipstatus(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    uint16_t net_event;
    uint16_t net_event_index;

    FUN_DEBUG("----->\r\n");

    net_event = net_get_status();
    switch (net_event) {
    case NET_CTRL_MSG_NETWORK_UP:
        net_event_index = 2;
        if((networks.connect[0].flag)
            | (networks.connect[1].flag)
            | (networks.connect[2].flag)
            | (networks.connect[3].flag))
            net_event_index = 3;
        break;
    case NET_CTRL_MSG_NETWORK_DOWN:
        net_event_index = 5;
        break;
    case NET_CTRL_MSG_WLAN_DISCONNECTED:
        net_event_index = 4;
        break;
    default:
        net_event_index = 5;
        break;
    }

    sprintf(rsp->vptr, "STATUS:%d\r\n", net_event_index);


    if(net_event_index == 3)
    {
        sprintf(((char *)rsp->vptr + strlen((char *)rsp->vptr)), "+CIPSTATUS:");
        if(networks.connect[0].flag)
        {
            sprintf(((char *)rsp->vptr + strlen((char *)rsp->vptr)),
                "%d,\"%s\",\"%s\",%d    ",
                0,
                networks.connect[0].type,
                networks.connect[0].ip,
                networks.connect[0].port
                );
        }
        if(networks.connect[1].flag)
        {
            sprintf(((char *)rsp->vptr + strlen((char *)rsp->vptr)),
                "%d,\"%s\",\"%s\",%d    ",
                1,
                networks.connect[1].type,
                networks.connect[1].ip,
                networks.connect[1].port
                );
        }
        if(networks.connect[2].flag)
        {
            sprintf(((char *)rsp->vptr + strlen((char *)rsp->vptr)),
                "%d,\"%s\",\"%s\",%d    ",
                2,
                networks.connect[2].type,
                networks.connect[2].ip,
                networks.connect[2].port
                );
        }
        if(networks.connect[3].flag)
        {
            sprintf(((char *)rsp->vptr + strlen((char *)rsp->vptr)),
                "%d,\"%s\",\"%s\",%d    ",
                3,
                networks.connect[3].type,
                networks.connect[3].ip,
                networks.connect[3].port
                );
        }
    }
    rsp->status = 1;
    rsp->type  = 1;
    return AEC_OK;

}

static AT_ERROR_CODE cipdomain(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    FUN_DEBUG("----->\r\n");

    struct hostent *server;
    //struct sockaddr_in serv_addr;

    server = gethostbyname(para->u.dns_parse.hostname);
    if (server == NULL) {
        printf("not find the  host \r\n");
        return AEC_CMD_FAIL;
    }

    for(int i=0; server->h_addr_list[i]; i++) {
        printf("IP addr %d: %s\r\n", i+1, inet_ntoa( *(struct in_addr*)server->h_addr_list[i]));
    }

    at_dump("+IPDNS:\"%s\"\n",inet_ntoa( *(struct in_addr*)server->h_addr_list[0]));
    return AEC_OK;
}

#endif

static AT_ERROR_CODE ap_sta_get(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    uint8_t cnt;
    uint8_t connected = 0;
    struct wifi_sta_basic_info sta_info;
    ip4_addr_t ip = {0}, gw = {0}, mask = {0};
    uint8_t mac[6];

    wifi_mgmr_ap_sta_cnt_get(&connected);
    wifi_mgmr_ap_ip_get(&ip.addr, &gw.addr, &mask.addr);
    wifi_mgmr_ap_mac_get(mac);
    at_dump("+SOFTAP:"
            "%s,"
            "%s,"
            "%02x:%02x:%02x:%02x:%02x:%02x\r\n",
            g_soft_ap_ssid,
            ip4addr_ntoa(&ip),
            mac[0],
            mac[1],
            mac[2],
            mac[3],
            mac[4],
            mac[5]);

    for (cnt = 0; cnt < connected; cnt++) {
        wifi_mgmr_ap_sta_info_get(&sta_info, cnt);
        if (!sta_info.is_used) {
            continue;
        }
        at_dump("+STA:%d,"
                "%02x:%02x:%02x:%02x:%02x:%02x,"
                "%d\r\n",
                sta_info.sta_idx,
                sta_info.sta_mac[0],
                sta_info.sta_mac[1],
                sta_info.sta_mac[2],
                sta_info.sta_mac[3],
                sta_info.sta_mac[4],
                sta_info.sta_mac[5],
                sta_info.rssi);
    }
    return AEC_OK;
}
static AT_ERROR_CODE set_apcfg(at_callback_para_t * para, at_callback_rsp_t * rsp)
{
    int psk_len, wifiMode;

    FUN_DEBUG("----->\r\n");

    at_wifimode_get(&wifiMode);

    if (wifiMode != WIFI_SOFTAP_MODE && wifiMode != WIFI_AP_STA_MODE) {
        return AEC_CMD_FAIL;
    }
    __wifimode_set(wifiMode);

    psk_len = strlen(para->u.apcfgParam.psk);

    printf("para->u.apcfgParam.ssid=%s,para->u.apcfgParam.psk=%s\r\n",para->u.apcfgParam.ssid,para->u.apcfgParam.psk);

    if (psk_len > 0) {
        wifi_mgmr_ap_start(g_wifi_interface,
                           para->u.apcfgParam.ssid, 0,
                           para->u.apcfgParam.psk, 1);
    } else {
        wifi_mgmr_ap_start(g_wifi_interface,
                           para->u.apcfgParam.ssid, 0,
                           NULL, 1);
    }
    strcpy(g_soft_ap_ssid, para->u.apcfgParam.ssid);
    return AEC_OK;
}

typedef struct SocketSend_queueinf_def {
  int datalen;
  uint8_t *p_senddata;
} SocketSend_queueinf_t;

void socket0_task(void *pvParameters) {
  SocketSend_queueinf_t sendinf;
  int rc = -1;
  fd_set fdset;
  s32 timeout_ms = 100;

  fd_set frset;
  struct sockaddr_in address;
  socklen_t addr_len;

  struct timeval tv;

  uint8_t id = (u32)pvParameters;
  q_SocketSend[id] = xQueueCreate(QLEN_ATCMDSEND, sizeof(SocketSend_queueinf_t));
  if (q_SocketSend[id] == NULL) {
    printf("create queue %d failed\r\n", id);
    return;
  }

  while (1) {
    // 断开连接了，flag=0
    if (networks.connect[id].flag == 0) {
      xQueueReceive(q_SocketSend[id], &sendinf, pdMS_TO_TICKS(1));
      vTaskDelay(pdMS_TO_TICKS(100));
      continue;
    }
    if (xQueueReceive(q_SocketSend[id], &sendinf, pdMS_TO_TICKS(100)) == pdTRUE) {
      if (networks.connect[id].fd == -1) {
        at_dump("SOCKET %d ERROR\r\n", id);
        free(sendinf.p_senddata);
        continue;
      }

      if (networks.connect[id].protocol == 0) { /* TCP */

        FD_ZERO(&fdset);
        FD_SET(networks.connect[id].fd, &fdset);

        tv.tv_sec = timeout_ms / 1000;
        tv.tv_usec = (timeout_ms % 1000) * 1000;
        
        // XXX 既然用了select了，为什么还每个socket创建一个线程？
        rc = select(networks.connect[id].fd + 1, NULL, &fdset, NULL, &tv);
        if (rc > 0) {
          if ((rc = send(networks.connect[id].fd, sendinf.p_senddata, sendinf.datalen, 0)) > 0) {
            at_dump("+IPS:%d SEND OK\r\n", id);
          } else if (rc == 0) {
            disconnect(id);
          } else {
            disconnect(id);
          }
        } else if (rc == 0) {
          at_dump("+IPS:%d SEND TIMEOUT\r\n", id);
        } else {
          disconnect(id);
        }
      } else if (networks.connect[id].protocol == 1) { /* UDP */
        FD_ZERO(&fdset);
        FD_SET(networks.connect[id].fd, &fdset);

        tv.tv_sec = timeout_ms / 1000;
        tv.tv_usec = (timeout_ms % 1000) * 1000;

        address.sin_port = htons(networks.connect[id].port);
        address.sin_family = AF_INET;
        address.sin_addr.s_addr = inet_addr(networks.connect[id].ip);

        rc = select(networks.connect[id].fd + 1, NULL, &fdset, NULL, &tv);
        if (rc > 0) {
          if ((rc = sendto(networks.connect[id].fd, sendinf.p_senddata, sendinf.datalen, 0,
                           (struct sockaddr *)&address, sizeof(address))) > 0) {
            at_dump("+IPS:%d SEND OK\r\n", id);
          } else if (rc == 0) {
            disconnect(id);
          } else {
            disconnect(id);
          }
        } else if (rc == 0) {
          at_dump("+IPS:%d SEND TIMEOUT\n", id);
        } else {
          disconnect(id);
        }
      }
      free(sendinf.p_senddata);
    }

    tv.tv_sec = timeout_ms / 1000;
    tv.tv_usec = (timeout_ms % 1000) * 1000;

    FD_ZERO(&frset);
    FD_SET(networks.connect[id].fd, &frset);
    memset(socket_cache[id].buffer, 0, SOCKET_CACHE_BUFFER_SIZE);
    rc = select(networks.connect[id].fd + 1, &frset, NULL, NULL, &tv);
    if (rc > 0) {
      if (networks.connect[id].protocol == 0) { /* TCP */
        rc = recv(networks.connect[id].fd, socket_cache[id].buffer, SOCKET_CACHE_BUFFER_SIZE, 0);
      } else if (networks.connect[id].protocol == 1) { /* UDP */
        address.sin_port = htons(networks.connect[id].port);
        address.sin_family = AF_INET;
        address.sin_addr.s_addr = inet_addr(networks.connect[id].ip);

        addr_len = sizeof(address);

        rc = recvfrom(networks.connect[id].fd, socket_cache[id].buffer, SOCKET_CACHE_BUFFER_SIZE, 0,
                      (struct sockaddr *)&address, &addr_len);
      }

      if (rc > 0) {
        at_serial_lock();
        at_dump("+IPD:");
        if (is_disp_ipd == 1) at_dump("%d,%d\r\n", id, rc);
        at_data_output((char *)socket_cache[id].buffer, rc);
        at_serial_unlock();

      } else if (rc == 0) {
        disconnect(id);
      } else {
        disconnect(id);
      }
    } else if (rc == 0) {
    } else {
      disconnect(id);
    }
  }
}

AT_ERROR_CODE socket_task_create(int linkId) {
  char task_name[16] = {0};

  if (linkId >= MAX_SOCKET_NUM) {
    return AEC_SOCKET_FAIL;
  }

//  if (networks.connect[linkId].flag != 0) {
//    return AEC_SOCKET_EXISTING;
//  }

  sprintf(task_name, "socket%d_task", linkId);
  if (networks.connect[linkId].ThreadHd == 0) {
    if (xTaskCreate(socket0_task, task_name, SOCKET_TASK_STACK_SIZE, ((void *)linkId), 3,
                    &socket_task_handler[linkId]) != pdPASS) {
      FUN_DEBUG("socket task create error\r\n");
      return AEC_SOCKET_FAIL;
    }
    networks.connect[linkId].ThreadHd = 1;
  }

  return AEC_OK;
}

static AT_ERROR_CODE cipstart(at_callback_para_t *para, at_callback_rsp_t *rsp) {
  FUN_DEBUG("----->\r\n");
  static int is_sockon_task_create = 0;
  BaseType_t ret = pdPASS;

  memset(&sockontask_data, 0, sizeof(at_sockontask_para_t));
  memcpy(&sockontask_data.para, para, sizeof(at_callback_para_t));
  memcpy(&sockontask_data.rsp, rsp, sizeof(at_callback_rsp_t));

  if (0 == is_sockon_task_create) {
    is_sockon_task_create = 1;
    OS_queue_sockon_handler = xQueueCreate(10, sizeof(at_sockontask_para_t));
    if (OS_queue_sockon_handler == NULL) {
      FUN_DEBUG("queue create failed!\r\n");
      return AEC_SOCKET_FAIL;
    }

    ret = xTaskCreate(sockon_task, "sockon_task", 2048, NULL, 2, &OS_Thread_sockon_handler);
    vTaskDelay(pdMS_TO_TICKS(1));
    if (xQueueSend(OS_queue_sockon_handler, &sockontask_data, pdMS_TO_TICKS(200)) != pdPASS) {
      ret = pdFAIL;
    }
  } else {
    if (xQueueSend(OS_queue_sockon_handler, &sockontask_data, pdMS_TO_TICKS(200)) != pdPASS) {
      ret = pdFAIL;
    }
  }

  if (ret == pdPASS) {
    return AEC_OK;

  } else {
    FUN_DEBUG("sockon_task create error\r\n");
    return AEC_SOCKET_FAIL;
  }
}

static AT_ERROR_CODE cipsendbuf(at_callback_para_t *para, at_callback_rsp_t *rsp) {
  FUN_DEBUG("----->\r\n");

  return AEC_OK;
}

static AT_ERROR_CODE cipclose(at_callback_para_t *para, at_callback_rsp_t *rsp) {
  FUN_DEBUG("----->\r\n");

  if (para->u.close_id.id < MAX_SOCKET_NUM) {
      if (networks.connect[para->u.close_id.id].flag == 0) {
          return AEC_SOCKET_EXISTING;
      }
      disconnect(para->u.close_id.id);
      at_dump("+CIPCLOSE:%d\r\n", para->u.close_id.id);
  } else {
      return AEC_PARA_ERROR;
  }
  return AEC_OK;
}

#if 0
static AT_ERROR_CODE tcpservermaxconn(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    FUN_DEBUG("----->\r\n");

    return AEC_OK;
}
#endif

static AT_ERROR_CODE tcpserver(at_callback_para_t *para, at_callback_rsp_t *rsp) {
  FUN_DEBUG("----->\r\n");
  s16 port;
  s32 protocol;
  int enable;

  port = para->u.tcp_server.port;
  enable = para->u.tcp_server.enable;
  protocol = 0; //tcp

  if (enable) {
    if (!g_server_enable) {
      g_server_arg.port = para->u.tcp_server.port;
      g_server_arg.protocol = 0;
      memset(&socket_cache[MAX_SOCKET_NUM], 0, sizeof(socket_cache_t));

      g_server_enable = 1;

      if (protocol == 0) { /* TCP */

        g_server_sem = xSemaphoreCreateBinary();
        if (g_server_sem == NULL) {
          FUN_DEBUG("create semaphore failed\r\n");

          return AEC_UNDEFINED;
        }

        memset(&g_server_ctrl, 0, sizeof(g_server_ctrl));
        if (xTaskCreate(server_task, "server_task", SERVER_THREAD_STACK_SIZE, (void *)&g_server_arg, 5, &server_task_handle) != pdPASS) {
          FUN_DEBUG("create server task failed\r\n");
          return AEC_UNDEFINED;
        }

      } else if (protocol == 1) { /* UDP */
        struct sockaddr_in address;
        int rc;
        int fd;

        fd = socket(AF_INET, SOCK_DGRAM, 0);
        if (fd < 0) {
          return AEC_SOCKET_FAIL;
        }

        memset(&address, 0, sizeof(address));
        address.sin_family = AF_INET;
        address.sin_addr.s_addr = htonl(INADDR_ANY);
        address.sin_port = htons(port);
        /* for receive */
        rc = bind(fd, (struct sockaddr *)&address, sizeof(address));
        if (rc < 0) {
          closesocket(fd);
          return AEC_BIND_FAIL;
        }
      }

      return AEC_OK;
    }
  } else {
    if (g_server_enable) {
      g_server_enable = 0;

      if (g_server_arg.protocol == 0) { /* TCP */
        vSemaphoreDelete(g_server_sem);
        if (serversock_fd >= 0) {
            closesocket(serversock_fd);
            serversock_fd = -1;
        }
        if (server_task_handle) {
            vTaskDelete(server_task_handle);
            server_task_handle = NULL;
        }
      } else if (g_server_arg.protocol == 1) { /* UDP */
        /* Do nothing */
      }
    }
  }

  return AEC_SOCKET_FAIL;
}

#if 0
static AT_ERROR_CODE cipmux(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    FUN_DEBUG("----->\r\n");

    return AEC_OK;
}


static AT_ERROR_CODE cipmode(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    FUN_DEBUG("----->\r\n");

    return AEC_OK;
}
static AT_ERROR_CODE cipdns_cur(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    FUN_DEBUG("----->\r\n");
    ip_addr_t dnsip;

    memcpy((char *)(&dnsip), &para->u.set_dns.setdnsip, sizeof(at_ip_t));

    dns_setserver(0,&dnsip);
    return AEC_OK;

}

static AT_ERROR_CODE ciprecvdata(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    FUN_DEBUG("----->\r\n");

    return AEC_OK;
}
static AT_ERROR_CODE ciprecvmode(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    FUN_DEBUG("----->\r\n");

    return AEC_OK;
}
#endif

static AT_ERROR_CODE cipsend(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    s32 id;
    u8 *buffer;
    s32 len;
    FUN_DEBUG("------>%s\r\n",__func__);

    SocketSend_queueinf_t sendinf;

    id      = para->u.sockw.id;
    buffer  = para->u.sockw.buf;
    len     = para->u.sockw.len;

    if (id >= MAX_SOCKET_NUM) {
        return AEC_DISCONNECT;
    }

    printf("id:%d, len:%d, buffer:%s\r\n", id, len, buffer);
    sendinf.p_senddata = malloc(SOCKET_CACHE_BUFFER_SIZE);
    if(sendinf.p_senddata == NULL) {
        at_dump("malloc buffer for atcmdSend failed \r\n");
        return AEC_CMD_ERROR;
    }
    sendinf.datalen =  len;
    FUN_DEBUG("------>%s memcpy id = %d\r\n",__func__, id);
    memcpy(sendinf.p_senddata, buffer, len);
    printf("q_SocketSend[%d] = %p\r\n", id, q_SocketSend[id]);
    if (xQueueSend(q_SocketSend[id], &sendinf, pdMS_TO_TICKS(10)) != pdPASS) {
        at_dump("LinkId %d Send ERROR \r\n", id);
        FUN_DEBUG("LinkId %d Send ERROR \r\n", id);
        free(sendinf.p_senddata);
    }
    FUN_DEBUG("------>%s xQueueSend Success\r\n",__func__);
    return AEC_OK;
}

#if 0
int is_netconnet_ap(void)
{
    if((net_evevt_state == NET_CTRL_MSG_NETWORK_UP) || (net_evevt_state == NET_CTRL_MSG_WLAN_CONNECTED))
        return 1;

    return 0;
}

typedef struct {
    GPIO_Pin    GPIONum;
    GPIO_Port   GPIOPort;
    GPIO_InitParam  GPIOPara;
} GPIO_CFG;
GPIO_CFG BoardGPIO[3]=
{
    {GPIO_PIN_19,GPIO_PORT_A,{GPIOx_Pn_F0_INPUT,GPIO_DRIVING_LEVEL_1,GPIO_PULL_NONE}},
    {GPIO_PIN_19,GPIO_PORT_A,{GPIOx_Pn_F0_INPUT,GPIO_DRIVING_LEVEL_1,GPIO_PULL_NONE}},
    {GPIO_PIN_19,GPIO_PORT_A,{GPIOx_Pn_F0_INPUT,GPIO_DRIVING_LEVEL_1,GPIO_PULL_NONE}}
};

static AT_ERROR_CODE sysiosetcfg(at_callback_para_t *para, at_callback_rsp_t *rsp)
{

    if(para->u.setgpio_para.ID > 2)
        return AEC_PARA_ERROR;

    para->u.setgpio_para.ID -= para->u.setgpio_para.ID;

    BoardGPIO[para->u.setgpio_para.ID].GPIOPara.driving = GPIO_DRIVING_LEVEL_1;

    if(para->u.setgpio_para.mode <= 1)
        BoardGPIO[para->u.setgpio_para.ID].GPIOPara.mode = para->u.setgpio_para.mode;
    else
        return AEC_PARA_ERROR;

    if(para->u.setgpio_para.pull <= 2)
        BoardGPIO[para->u.setgpio_para.ID].GPIOPara.pull = para->u.setgpio_para.pull;
    else
        return AEC_PARA_ERROR;

    HAL_GPIO_Init(BoardGPIO[para->u.setgpio_para.ID].GPIOPort,  \
                    BoardGPIO[para->u.setgpio_para.ID].GPIONum, \
                    &BoardGPIO[para->u.setgpio_para.ID].GPIOPara);

    return AEC_OK;
}


static AT_ERROR_CODE sysiogetcfg(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    char *modestr[]={"Input","Output"};
    char *pullstr[]={"pull none","pull up","pull down"};
    at_dump("OI1 driver level is %d\r\n",BoardGPIO[0].GPIOPara.driving);
    at_dump("OI1 mode is %s\r\n",modestr[BoardGPIO[0].GPIOPara.mode]);
    at_dump("OI1 pull is %s\r\n",pullstr[BoardGPIO[0].GPIOPara.pull]);

    at_dump("OI2 driver level is %d\r\n",BoardGPIO[1].GPIOPara.driving);
    at_dump("OI2 mode is %s\r\n",modestr[BoardGPIO[1].GPIOPara.mode]);
    at_dump("OI2 pull is %s\r\n",pullstr[BoardGPIO[1].GPIOPara.pull]);

    at_dump("OI3 driver level is %d\r\n",BoardGPIO[2].GPIOPara.driving);
    at_dump("OI3 mode is %s\r\n",modestr[BoardGPIO[2].GPIOPara.mode]);
    at_dump("OI3 pull is %s\r\n",pullstr[BoardGPIO[2].GPIOPara.pull]);

    return AEC_OK;
}


static AT_ERROR_CODE syssetiodir(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    if(para->u.setiodir_para.ID > 2)
        return AEC_PARA_ERROR;

    if(para->u.setiodir_para.mode <= 1)
        BoardGPIO[para->u.setiodir_para.ID].GPIOPara.mode = para->u.setiodir_para.mode;
    else
        return AEC_PARA_ERROR;

    HAL_GPIO_Init(BoardGPIO[para->u.setiodir_para.ID].GPIOPort,     \
                    BoardGPIO[para->u.setiodir_para.ID].GPIONum,    \
                    &BoardGPIO[para->u.setiodir_para.ID].GPIOPara);

    return AEC_OK;
}

static AT_ERROR_CODE syssetgpio(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    if(para->u.writeiodata_para.ID > 2)
        return AEC_PARA_ERROR;

    if(para->u.writeiodata_para.data == 0)
    {
        HAL_GPIO_WritePin(BoardGPIO[para->u.writeiodata_para.ID].GPIOPort,  \
                        BoardGPIO[para->u.writeiodata_para.ID].GPIONum, \
                        GPIO_PIN_LOW);
    }
    else
    {
        HAL_GPIO_WritePin(BoardGPIO[para->u.writeiodata_para.ID].GPIOPort,  \
                        BoardGPIO[para->u.writeiodata_para.ID].GPIONum, \
                        GPIO_PIN_HIGH);
    }

    return AEC_OK;
}

static AT_ERROR_CODE sysreadgpio(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    if(para->u.readiodata_para.ID > 2)
        return AEC_PARA_ERROR;

    at_dump("Level is %d\r\n",HAL_GPIO_ReadPin(BoardGPIO[para->u.readiodata_para.ID].GPIOPort,  \
                        BoardGPIO[para->u.readiodata_para.ID].GPIONum));
    return AEC_OK;
}

#if 0
static AT_ERROR_CODE deleteap(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
    if(para->u.deleteap_para.apnum > SYSINFO_HISTORY_AP_MAX)
        return AEC_PARA_ERROR;

    if(delete_history_ap(para->u.deleteap_para.apnum) == -1)
    {
        return AEC_CMD_FAIL;
    }
    else
        return AEC_OK;
}
#endif

int OTA_start = 0;
void occur(uint32_t evt, uint32_t data, void *arg)
{
    int idx = EVENT_SUBTYPE(evt);
    switch (idx) {
    case NET_CTRL_MSG_WLAN_CONNECTED:
        net_evevt_state = NET_CTRL_MSG_WLAN_CONNECTED;
        if(OTA_start == 0)
            at_dump("+EVT:2\n");
        break;
    case NET_CTRL_MSG_WLAN_DISCONNECTED:
        net_evevt_state = NET_CTRL_MSG_WLAN_DISCONNECTED;
        if(OTA_start == 0)
            at_dump("+EVT:3\n");
        break;
    case NET_CTRL_MSG_WLAN_SCAN_SUCCESS:
        break;
    case NET_CTRL_MSG_WLAN_CONNECT_FAILED:
        break;
    case NET_CTRL_MSG_NETWORK_UP:
        if(net_evevt_state == NET_CTRL_MSG_NETWORK_UP)
            return;
        net_evevt_state = NET_CTRL_MSG_NETWORK_UP;
        if(OTA_start == 0)
            at_dump("+EVT:4\n");
        break;
    case NET_CTRL_MSG_NETWORK_DOWN:

        break;
    case NET_CTRL_MSG_WLAN_SCAN_FAILED:
    case NET_CTRL_MSG_WLAN_4WAY_HANDSHAKE_FAILED:
        break;
    default:
        break;
    }

    if(idx >= 0 && idx < TABLE_SIZE(event)) {
        if (at_event(idx)) {
            if(OTA_start == 0)
            at_dump("msg:%d\r\n%s\r\n", idx, event[idx]);
        }
    } else {
        FUN_DEBUG("Unsupported.\r\n");
    }

}

TaskHandle_t ap_task_ctrl_thread;
static int create_port;
void tcp_server_task(void *pvParameters)
{
    while (1) {
        ap_socket_task(create_port);
    }
}

void ap_server_task(int port)
{
    create_port = port;

    if (xTaskCreate(tcp_server_task,
                    "tcp_server_task",
                    1024,
                    NULL,
                    10,
                    &ap_task_ctrl_thread) != pdPASS) {
        printf("thread create error\n");
    }
}

void ap_task_delete(void)
{
    vTaskDelete(ap_task_ctrl_thread);
}
#endif
