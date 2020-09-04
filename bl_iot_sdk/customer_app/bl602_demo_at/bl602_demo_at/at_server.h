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
#ifndef _AT_SERVER_H_
#define _AT_SERVER_H_

#include <FreeRTOS.h>
#include <event_groups.h>

#define SAVE_KEY_UART_BAUD    "uart_baud"
#define SAVE_KEY_WIFI_MODE    "wifi_mode"
#define SAVE_KEY_WIFI_AUTO    "wifi_auto"
#define SAVE_KEY_WIFI_SSID    "wifi_ssid"
#define SAVE_KEY_WIFI_pask    "wifi_pask"

#define AT_ASYNC_WIFI_CONNECTED (0x1 << 0)
#define AT_ASYNC_DATA_IN        (0x1 << 1)
#define AT_ASYNC_PASK_ERROR     (0x1 << 2)
#define AT_ASYNC_NO_AP_FOUND    (0x1 << 3)
#define ATCMDSEND_MAX_BUFF_SIZE (1024)

typedef struct at_sever {
    int wifi_mode;
    uint32_t uart_baud;
    int at_serial_fd;
    SemaphoreHandle_t at_serial_mtx;
    uint8_t queue_buf[ATCMDSEND_MAX_BUFF_SIZE];
    EventGroupHandle_t at_notify_eg;
} at_sever_t;

int at_server_init(void);
int at_server_notify(int event);

int at_serial_open(void);
int at_serial_close(void);
int at_serial_baud_set(uint32_t baud);
int at_serial_baud_get(uint32_t *p_baud);
int at_wifimode_get(int *p_mode);
int at_wifimode_set(int mode);
int at_wifi_auto_set(int is_auto);
int at_wifi_auto_get(int *p_auto);

int at_wifi_pask_get(char *pask);
int at_wifi_pask_set(char *pask);
int at_wifi_ssid_get(char *ssid);
int at_wifi_ssid_set(char *ssid);

#endif

