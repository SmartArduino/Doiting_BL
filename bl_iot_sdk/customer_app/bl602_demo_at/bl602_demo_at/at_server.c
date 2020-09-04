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
#include <semphr.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <task.h>
#include <timers.h>

#include <aos/kernel.h>
#include <aos/yloop.h>
#include <atcmd/at_command.h>
#include <blog.h>
#include <vfs.h>
#include <device/vfs_uart.h>
#include <hal/soc/soc.h>
#include <vfs_file.h>
#include "at_server.h"
#include <easyflash.h>

static at_sever_t g_at_server;

AT_ERROR_CODE callback(AT_CALLBACK_CMD cmd, at_callback_para_t *para, at_callback_rsp_t *rsp);

static uint32_t __at_serial_baud(void)
{
    char *val = NULL;

    if ((val = ef_get_env(SAVE_KEY_UART_BAUD)) == NULL) {
        return 115200;
    }
    return atoi(val);
}

static uint32_t __at_wifi_mode(void)
{
    char *val = NULL;

    if ((val = ef_get_env(SAVE_KEY_WIFI_MODE)) == NULL) {
        return 0;
    }
    return atoi(val);
}

static int at_serial_read(unsigned char *buf, int size) {
  if (g_at_server.at_serial_fd < 0) {
    printf("[ERROR][AT] AT serial not init\r\n");
    return 0;
  }
  return aos_read(g_at_server.at_serial_fd, buf, size);
}

static int at_serial_write(unsigned char *buf, int len) {
  int ret;
  if (g_at_server.at_serial_fd < 0) {
    printf("[ERROR][AT] AT serial not init\r\n");
    return 0;
  }
  ret = aos_write(g_at_server.at_serial_fd, buf, len);
  return ret;
}

int at_serial_open(void)
{
    g_at_server.at_serial_fd = aos_open("/dev/ttyS1", 0);
    return 0;
}
int at_serial_close(void)
{
    aos_close(g_at_server.at_serial_fd);
    g_at_server.at_serial_fd = -1;
    return 0;
}

int at_serial_lock(void) {
  if (xSemaphoreTakeRecursive(g_at_server.at_serial_mtx, portMAX_DELAY) != pdPASS) {
    printf("get send buf mutex failed!\r\n");
    return -1;
  }
  return 0;
}

int at_serial_unlock(void) {
  if (xSemaphoreGiveRecursive(g_at_server.at_serial_mtx) != pdPASS) {
    printf("give send buf mutex failed!\r\n");
    return -1;
  }
  return 0;
}

int at_data_output(char *buf, int size) {
  int len;

  if (xSemaphoreTakeRecursive(g_at_server.at_serial_mtx, portMAX_DELAY) != pdPASS) {
    printf("get send buf mutex failed!\r\n");
    return -1;
  }

  len = at_callback.dump_cb((uint8_t *)buf, size);
  xSemaphoreGiveRecursive(g_at_server.at_serial_mtx);

  return len;
}

int at_wifimode_set(int mode)
{
    char buf[10] = {0};

    g_at_server.wifi_mode = mode;
    sprintf(buf, "%d", mode);
    ef_set_env(SAVE_KEY_WIFI_MODE, buf);

    return 0;
}

int at_wifimode_get(int *p_mode)
{
    char *val = NULL;

    if (p_mode == NULL) {
        return -1;
    }
    if ((val = ef_get_env(SAVE_KEY_WIFI_MODE)) == NULL) {
        *p_mode = g_at_server.wifi_mode;
    } else {
        *p_mode = atoi(val);
    }
    return 0;
}

int at_wifi_ssid_set(char *ssid)
{
    char buf[33] = {0};

    sprintf(buf, "%s", ssid);
    ef_set_env(SAVE_KEY_WIFI_SSID, buf);

    return 0;
}

int at_wifi_ssid_get(char *ssid)
{
    char *val = NULL;

    if (ssid == NULL) {
        return -1;
    }
    if ((val = ef_get_env(SAVE_KEY_WIFI_SSID)) == NULL) {
        strcpy(ssid, val);
    } else {
        ssid[0] = '\0';
    }
    return 0;
}

int at_wifi_pask_set(char *pask)
{
    char buf[65] = {0};

    sprintf(buf, "%s", pask);
    ef_set_env(SAVE_KEY_WIFI_pask, buf);

    return 0;
}

int at_wifi_pask_get(char *pask)
{
    char *val = NULL;

    if (pask == NULL) {
        return -1;
    }
    if ((val = ef_get_env(SAVE_KEY_WIFI_pask)) == NULL) {
        strcpy(pask, val);
    } else {
        pask[0] = '\0';
    }
    return 0;
}

int at_wifi_auto_set(int is_auto)
{
extern int wifi_mgmr_sta_autoconnect_enable(void);
extern int wifi_mgmr_sta_autoconnect_disable(void);

    char buf[10] = {0};

    sprintf(buf, "%d", is_auto);
    ef_set_env(SAVE_KEY_WIFI_AUTO, buf);

    if (is_auto) {
        wifi_mgmr_sta_autoconnect_enable();
    } else {
        wifi_mgmr_sta_autoconnect_disable();
    }

    return 0;
}

int at_wifi_auto_get(int *p_auto)
{
    char *val = NULL;

    if (p_auto == NULL) {
        return -1;
    }
    if ((val = ef_get_env(SAVE_KEY_WIFI_AUTO)) == NULL) {
        *p_auto = 0;
    } else {
        *p_auto = atoi(val);
    }
    return 0;
}

int at_serial_baud_set(uint32_t baud)
{
    char buf[20] = {0};

    g_at_server.uart_baud = baud;
    sprintf(buf, "%d", (int)baud);
    ef_set_env(SAVE_KEY_UART_BAUD, buf);

    return aos_ioctl(g_at_server.at_serial_fd, IOCTL_UART_IOC_BAUD_MODE, baud);
}

int at_serial_baud_get(uint32_t *p_baud)
{
    char *val = NULL;

    if (p_baud == NULL) {
        return -1;
    }

    if ((val = ef_get_env(SAVE_KEY_UART_BAUD)) == NULL) {
        *p_baud = g_at_server.uart_baud;
    } else {
        *p_baud = atoi(val);
    }

    return 0;
}

s32 at_dump(char *format, ...) {
  int len;
  va_list vp;
  uint8_t *p_buf = NULL;

  if (xSemaphoreTakeRecursive(g_at_server.at_serial_mtx, portMAX_DELAY) != pdPASS) {
    printf("get send buf mutex failed!\r\n");
    return -1;
  }
  p_buf = pvPortMalloc(ATCMDSEND_MAX_BUFF_SIZE);
  if (p_buf == NULL) {
      printf("mem not enought\r\n");
      return -1;
  }

  va_start(vp, format);
  len = vsnprintf((char *)p_buf, ATCMDSEND_MAX_BUFF_SIZE, format, vp);
  va_end(vp);
  if (len >= ATCMDSEND_MAX_BUFF_SIZE) {
    printf("AT Response line too long\r\n");
    xSemaphoreGiveRecursive(g_at_server.at_serial_mtx);
    vPortFree(p_buf);
    return -1;
  }

  len = at_callback.dump_cb(p_buf, strlen((char *)p_buf));
  printf("%s,%d\r\n", p_buf, strlen((char *)p_buf));
  xSemaphoreGiveRecursive(g_at_server.at_serial_mtx);
  vPortFree(p_buf);

  return len;
}

void at_async_event(void *param) {

  EventBits_t event;
  extern int wifi_mgmr_sta_autoconnect_disable(void);

  while (1) {
    event = xEventGroupWaitBits(g_at_server.at_notify_eg, (EventBits_t)0xFF, pdTRUE, pdFALSE, portMAX_DELAY);
    if (event & AT_ASYNC_WIFI_CONNECTED) {
      at_dump("\r\n+EVT:0:wifi connected\r\n");
    } else if (event & AT_ASYNC_DATA_IN) {
      at_dump("\r\n+EVT:1:data in\r\n");
    } else if (event & AT_ASYNC_PASK_ERROR) {
      at_dump("\r\n+EVT:2:wifi pask error\r\n");
    } else if (event & AT_ASYNC_NO_AP_FOUND) {
      at_dump("\r\n+EVT:3:wifi no ap found\r\n");
    } else {
      printf("[AT]:Unknow event!\r\n");
    }
  }
}

void at_cmd_init(void) {
  at_callback_t at_cb;

  // at_wakeup_gpio_init(5,0);
  at_queue_init(g_at_server.queue_buf, sizeof(g_at_server.queue_buf), at_serial_read);

  at_cb.handle_cb = callback;
  at_cb.dump_cb = at_serial_write;

  at_init(&at_cb);
}

// AT execute thread
static void at_cmd_exec(void *param) {
  at_parse();

  printf("return form at_parse!\r\n");
  while (1);
}

int at_server_init(void) {
  BaseType_t ret;
  TaskHandle_t async_handle;

  memset(&g_at_server, 0, sizeof(g_at_server));

  // init ttyS1
  at_serial_open();
  if (g_at_server.at_serial_fd < 0) {
    printf("open ttyS1 failed!\r\n");
    return -1;
  }
  g_at_server.wifi_mode = __at_wifi_mode();
  g_at_server.uart_baud = __at_serial_baud();
  aos_ioctl(g_at_server.at_serial_fd, IOCTL_UART_IOC_BAUD_MODE, g_at_server.uart_baud);

  // create send mutex
  g_at_server.at_serial_mtx = xSemaphoreCreateRecursiveMutex();
  if (g_at_server.at_serial_mtx == NULL) {
    printf("create send buf mutex failed!\r\n");
    aos_close(g_at_server.at_serial_fd);
    return -1;
  }

  g_at_server.at_notify_eg = xEventGroupCreate();
  if (g_at_server.at_notify_eg == NULL) {
    printf("create async notify failed\r\n");

    vSemaphoreDelete(g_at_server.at_serial_mtx);
    aos_close(g_at_server.at_serial_fd);

    return -1;
  }

  // init AT server
  at_cmd_init();

  ret = xTaskCreate(at_async_event, "at async", 256, NULL, 3, &async_handle);
  if (ret != pdPASS) {
    printf("create AT notify thread failed!\r\n");
    vEventGroupDelete(g_at_server.at_notify_eg);
    vSemaphoreDelete(g_at_server.at_serial_mtx);
    aos_close(g_at_server.at_serial_fd);

    return -1;
  }

  ret = xTaskCreate(at_cmd_exec, "at_server", 1024, NULL, 0, NULL);
  if (ret != pdPASS) {
    printf("create at server task failed!\r\n");

    vTaskDelete(async_handle);
    vEventGroupDelete(g_at_server.at_notify_eg);
    vSemaphoreDelete(g_at_server.at_serial_mtx);
    aos_close(g_at_server.at_serial_fd);

    return -1;
  }

  printf("at_server start success!\r\n");
  return 0;
}

int at_server_notify(int event) {
    // notify AT server
    xEventGroupSetBits(g_at_server.at_notify_eg, event);
    return 0;
}

void at_uart_reinit(at_serial_para_t *at_para)
{
//    at_para.baudrate = para->u.uart.uartBaud;
//    at_para.dataBit = para->u.uart.dataBit;
//    at_para.parity = para->u.uart.parity;
//    at_para.stopBit = para->u.uart.stopBit;
//    at_para.hwfc = para->u.uart.hwfc;
  aos_ioctl(g_at_server.at_serial_fd, IOCTL_UART_IOC_BAUD_MODE, at_para->baudrate);
}
