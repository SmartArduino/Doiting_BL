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
#ifndef BLE_LIB_API_H_
#define BLE_LIB_API_H_

#include <stdbool.h>

void ble_controller_init(uint8_t task_priority);
void ble_controller_deinit(void);

#if defined(CONFIG_BLE_MFG)
int le_rx_test_cmd_handler(uint16_t src_id, uint8_t rx_channel, bool from_hci);
int le_tx_test_cmd_handler(uint16_t src_id, uint8_t tx_channel, uint8_t data_len, uint8_t payload_type, bool from_hci);
int le_test_end_cmd_handler(bool from_hci);
int le_set_tx_pwr_handler(uint8_t power);
#endif

// return sleep duration, in unit of 1/32768s
// if 0, means not allow sleep
// if -1, means allow sleep, but there is no end of sleep interrupt (ble core deep sleep is not enabled)
int32_t ble_controller_sleep(void);

void ble_controller_wakeup(void);
//#if (SLEEP_TEST_DEBUG)
int32_t rwip_get_sw_wakup_cnt(void);
int32_t rwip_get_sleep_dur_cnt(void);
int32_t rwip_get_sleep_stat_cnt(void);
//#endif

uint8_t ble_get_deep_sleep_stat(void);

//#if(LE_PDS_ENABLE)
bool ble_controller_sleep_is_ongoing(void);
//#endif

#endif
