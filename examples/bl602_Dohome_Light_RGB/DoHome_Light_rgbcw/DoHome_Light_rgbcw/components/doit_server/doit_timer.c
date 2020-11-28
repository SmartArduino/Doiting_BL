#include "doit_timer.h"

#include <FreeRTOS.h>
#include <task.h>
#include <time.h>

#include "cJSON.h"
#include "doit_wifi.h"
#include "doit_flash.h"
#include "doit_sntp.h"
#include "doit_upload.h"

#include "ulog.h"
#include "app_config.h"

#if LOG_TIMER_EN
#define TAG             "timer"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif

#define LOG_TAG     TAG

static timer_cb_t shutdown_cb;
static timer_cb_t boot_cb;

static user_timer_t timer_list[TIMER_NUM] = {0};

user_timer_t *timer_get_list(void){
	return timer_list;
}

/*
	从备份中恢复有效定时器
 */
static char should_recover_timers(void)
{
	int i = 0;
	user_config_t *pcfg = flash_get_user_config();
	user_config_t *pcfg_bak = flash_get_user_config_bak();
	for (i = 0; i < TIMER_NUM; i++) {
		if ((pcfg->saved_timers[i]).valid != (pcfg_bak->saved_timers[i]).valid) {		//已经设置的定时器才检查是否恢复数据，无效定时器无需检查
			LOGI(TAG, "i=%d valid=%d saved=%d", i, (pcfg->saved_timers[i]).valid, (pcfg_bak->saved_timers[i]).valid);
			return 1;
		} else {
			if ((pcfg->saved_timers[i]).repeat != (pcfg_bak->saved_timers[i]).repeat) { LOGI(TAG, "i=%d repeat=%d saved=%d", i, (pcfg->saved_timers[i]).repeat, (pcfg_bak->saved_timers[i]).repeat); return 1; }
			if ((pcfg->saved_timers[i]).end_tick != (pcfg_bak->saved_timers[i]).end_tick) { LOGI(TAG, "i=%d end_tick=%ld saved=%ld", i, (pcfg->saved_timers[i]).end_tick, (pcfg_bak->saved_timers[i]).end_tick); return 1; }
			if ((pcfg->saved_timers[i]).on_off != (pcfg_bak->saved_timers[i]).on_off) { LOGI(TAG, "i=%d on_off=%d saved=%d", i, (pcfg->saved_timers[i]).on_off , (pcfg_bak->saved_timers[i]).on_off); return 1; }
			if ((pcfg->saved_timers[i]).ts != (pcfg_bak->saved_timers[i]).ts) { LOGI(TAG, "i=%d ts=%ld saved=%ld", i, timer_list[i].ts, (pcfg_bak->saved_timers[i]).ts); return 1; }
		}
	}
	return 0;
}

/*
	获取当前定时器数量
 */
int timer_compute_info_size(void)
{
	int i = 0, count = 0;
	for (i = 0; i < TIMER_NUM; i++) {
		if (timer_list[i].valid && timer_list[i].type == TIMER_CUSTOM_MODE) { count++; }
	}
	return (count == 0 ? 1 : count);
}

/*
	从定时器空间中寻找一个空闲序号
 */
static user_timer_t * get_available_timer(int *pidx, uint32_t ts)
{
	int i;
	for (i = 0; i < TIMER_NUM; i++) {					// ts是唯一的，如果定时器列表里面有ts相同的，说明之前发过这条命令
		if (timer_list[i].valid && timer_list[i].ts == ts) {
			LOGI(TAG, "ts conflict!!");
			return NULL;
		}
	}
	for (i = 0; i < TIMER_NUM; i++) {
		if (!timer_list[i].valid) {						// find free timer
			*pidx = i;
			return &timer_list[i];
		}
	}
	return NULL;
}

/*
	添加一个定时
 */
static char timer_config(uint32_t ts, time_t sec, int type, char repeat)
{
	int idx = 0;
	user_timer_t *u_timer = get_available_timer(&idx, ts);
	if (u_timer == NULL) {
		LOGI(TAG, "malloc for shutdown timer failed");
		return 0;
	}
	u_timer->end_tick = sec;
	u_timer->valid = 1;
	u_timer->type = type;
	u_timer->repeat = repeat;
	u_timer->ts = ts;

	// save to flash
	user_config_t *pcfg = flash_get_user_config();
	pcfg->saved_timers[idx].end_tick = sec;
	pcfg->saved_timers[idx].ts = ts;
	pcfg->saved_timers[idx].valid = 1;
	if (type == TIMER_DELAY_SHUTDOWN) {
		pcfg->saved_timers[idx].on_off = 2;
	} else {
		pcfg->saved_timers[idx].on_off = 0;
	}
	pcfg->saved_timers[idx].repeat = repeat;
	flash_user_config_write();
	flash_user_config_to_bak_write();
	upload_reset_ext();
	LOGI(TAG, "backup LED data for setup new timer");
	return 1;
}

/*
	添加一个定时关
 */
char timer_setup_shutdown(uint32_t ts, int year, int mon, int day, int hour, int min, int sec, char repeat)
{
	time_t s = time_tm_to_sec(year, mon, day, hour, min, sec);
	return timer_config(ts, s, TIMER_SHUTDOWN, repeat);
}

/*
	设置一个延时关
 */
char  timer_setup_shutdown_with_deley(uint32_t ts, int minute)
{
	int i;
	for (i = 0; i < TIMER_NUM; i++) {
		if (timer_list[i].valid && timer_list[i].type == TIMER_DELAY_SHUTDOWN) {
			timer_list[i].valid = 0;	// cancel previous delay shutdown timer
		}
	}


	time_t s = minute * 60 + time_get_curr_sec();
	return timer_config(ts, s, TIMER_DELAY_SHUTDOWN, 0);
}

/*
	添加一个定时开
 */
user_timer_t * timer_setup_powerup(uint32_t ts, int year, int mon, int day, int hour, int min, int sec, char repeat)
{
	time_t s = time_tm_to_sec(year, mon, day, hour, min, sec);
	int idx = 0;
	user_timer_t *u_timer = get_available_timer(&idx, ts);
	if (u_timer == NULL) {
		return NULL;
	}
	u_timer->end_tick = s;
	u_timer->ts = ts;
	u_timer->valid = 1;
	u_timer->repeat = repeat;

	// save to flash
	user_config_t *pcfg = flash_get_user_config();
	pcfg->saved_timers[idx].end_tick = s;
	pcfg->saved_timers[idx].ts = ts;
	pcfg->saved_timers[idx].valid = 1;
	pcfg->saved_timers[idx].on_off = 1;
	pcfg->saved_timers[idx].repeat = repeat;
	flash_user_config_write();
	flash_user_config_to_bak_write();
	upload_reset_ext();
	LOGI(TAG, "backup LED data for setup new powerup timer");
	return u_timer;
}

/*
	通过索引清除定时器
 */
char timer_cancel(int index)
{
	timer_list[index].valid = 0;
	timer_list[index].end_tick = 0;
	timer_list[index].ts = 0;

	// save to flash
	user_config_t *pcfg = flash_get_user_config();
	pcfg->saved_timers[index].valid = 0;
	flash_user_config_write();
	flash_user_config_to_bak_write();
	upload_reset_ext();
	LOGI(TAG, "backup data for removing timer");
	return 1;
}

/*
	通过时间清除定时器
 */
char timer_cancel_with_ts(uint32_t ts)
{
	LOGI(TAG, "cancel timer with ts: %u", ts);
	int i = 0;
	for (i = 0; i < TIMER_NUM; i++) {
		if (timer_list[i].valid && timer_list[i].ts == ts) {
			return timer_cancel(i);
		}
	}
	LOGI(TAG, "warning: no timer found");
	return 0;
}

/*
	修改定时器
 */
char timer_modify(int index, int year, int mon, int day, int hour, int min, int sec, char repeat)
{
	if (!timer_list[index].valid) {
		LOGI(TAG, "this timer is invalid");
		return 0;
	}
	time_t new_end_tick = time_tm_to_sec(year, mon, day, hour, min, sec);
	timer_list[index].end_tick = new_end_tick;
	timer_list[index].repeat = repeat;

	// save to flash
	user_config_t *pcfg = flash_get_user_config();
	pcfg->saved_timers[index].end_tick = new_end_tick;
	pcfg->saved_timers[index].repeat = repeat;
	flash_user_config_write();
	flash_user_config_to_bak_write();
	upload_reset_ext();
	LOGI(TAG, "backup LED data for timer edit");
	return 1;
}

/*
	定时器任务
 */
void timer_handler(void* arg)
{
	while (1)
	{
		unsigned long curr_tick = time_get_curr_sec();

		int i;
		for (i = 0; i < TIMER_NUM; i++) {
			if (timer_list[i].valid) {
				if (curr_tick == timer_list[i].end_tick) {	// trigger timer
					LOGI(TAG, "======> time up <======");

					if (timer_list[i].type == TIMER_SHUTDOWN || timer_list[i].type == TIMER_DELAY_SHUTDOWN) {
						LOGI(TAG, "start_boot_cb");
						//定时到时，关机
						if(shutdown_cb != NULL){
							shutdown_cb();
						}

					} else if (timer_list[i].type == TIMER_CONSTANT) {
						LOGI(TAG, "set previous constant power up");
						//定时到时，开机
						if(boot_cb != NULL){
							boot_cb();
						}
					} 
					if (timer_list[i].repeat) {
						timer_list[i].end_tick = 24 * 60 * 60 + timer_list[i].end_tick;
						// save to flash
						user_config_t *pcfg = flash_get_user_config();
						pcfg->saved_timers[i].end_tick = timer_list[i].end_tick;
						flash_user_config_write();
						flash_user_config_to_bak_write();
						upload_reset_ext();
						LOGI(TAG, "repeat timer tomorrow");
					} else {
						timer_cancel(i);
						upload_reset_ext();
					}
				} else if (curr_tick > timer_list[i].end_tick) {
					LOGI(TAG, "------> timer timeout <------");
					if (timer_list[i].repeat) {
						timer_list[i].end_tick = 24 * 60 * 60 + timer_list[i].end_tick;
						// save to flash
						user_config_t *pcfg = flash_get_user_config();
						pcfg->saved_timers[i].end_tick = timer_list[i].end_tick;
						flash_user_config_write();
						flash_user_config_to_bak_write();
						LOGI(TAG, "timeout, repeat tomorrow");
					} else {
						timer_cancel(i);
					}
				} else {
					// timer continue, do nothing
				}
			}
		}
		vTaskDelay(500 / portTICK_RATE_MS);
		
	}
}

void reg_shutdown_callback(timer_cb_t user_shutdown_cb){
	shutdown_cb = user_shutdown_cb;
}

void reg_boot_callback(timer_cb_t user_boot_cb){
	boot_cb = user_boot_cb;
}

#define    TIMER_TASK_SIZE      2*1024
/*
	初始化定时器配置
 */
void doit_timer_init(void)
{
	user_config_t *pcfg = flash_get_user_config();
	user_config_t *pcfg_bak = flash_get_user_config_bak();
	LOGI(TAG, "timer init, sizeof(long)=%d, sizeof(char)=%d", sizeof(unsigned long), sizeof(char));
	int i;
	if (should_recover_timers()) {
		memcpy((void *)pcfg, (void *)pcfg_bak, sizeof(user_config_t));
		flash_user_config_write();
		LOGI(TAG, ">>> recover timers here");
	} else {
		LOGI(TAG, "no need to recover timers");
	}

	LOGI(TAG, ">>>");
	for (i = 0; i < TIMER_NUM; i++) {
		if (pcfg->saved_timers[i].valid == 1) {
			timer_list[i].valid = 1;
			timer_list[i].ts = pcfg->saved_timers[i].ts;
			timer_list[i].end_tick = pcfg->saved_timers[i].end_tick;
			timer_list[i].repeat = pcfg->saved_timers[i].repeat;
			if (pcfg->saved_timers[i].on_off == 0) {
				timer_list[i].type = TIMER_SHUTDOWN;
			} else if (pcfg->saved_timers[i].on_off == 1) {		// timer powerup
				timer_list[i].type = TIMER_CONSTANT;
			} else if (pcfg->saved_timers[i].on_off == 2) {
				timer_list[i].type = TIMER_DELAY_SHUTDOWN;
			} else {
				LOGE(TAG, "error timer type=%d!", pcfg->saved_timers[i].on_off);
				timer_list[i].valid = 0;
			}
			LOGI(TAG, ">>> got a timer, index=%d, ts=%ld, type=%d", i, timer_list[i].ts, timer_list[i].type);
		} else {
			timer_list[i].valid = 0;
		}
	}
	LOGI(TAG, "<<<");

	if (xTaskCreate(timer_handler, "timer_handler", TIMER_TASK_SIZE, NULL, 2, NULL) != pdPASS) {
        LOGI(TAG, "xTaskCreate(timer_handler) failed");
    }
}