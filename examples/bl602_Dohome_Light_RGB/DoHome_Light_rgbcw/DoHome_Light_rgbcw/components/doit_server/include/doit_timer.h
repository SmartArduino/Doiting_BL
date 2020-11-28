#ifndef _DOIT_TIMER_H_
#define _DOIT_TIMER_H_

#include <stdint.h>

#define TEMP_BUFF_SIZE		256

typedef enum {
	TIMER_SHUTDOWN = 0,
	TIMER_CONSTANT,
	TIMER_PRESET_MODE,
	TIMER_CUSTOM_MODE,
	TIMER_DELAY_SHUTDOWN,
} timer_op_type;

typedef struct {
	char valid;
	char repeat;
	char reserved[2];	// alignment
	unsigned long end_tick;
	int type;
	long ts;
	//color_seq_t op;
} user_timer_t;

typedef void (*timer_cb_t)(void);

char timer_cancel(int index);
int timer_compute_info_size(void);
char timer_cancel_with_ts(uint32_t ts);
char timer_setup_shutdown(uint32_t ts, int year, int mon, int day, int hour, int min, int sec, char repeat);
char timer_setup_shutdown_with_deley(uint32_t ts, int minute);
void timer_get_delay_shutdown_info(char *buff);
char timer_modify(int index, int year, int mon, int day, int hour, int min, int sec, char repeat);

user_timer_t *timer_get_list(void);

user_timer_t *timer_setup_powerup(uint32_t ts, int year, int mon, int day, int hour, int min, int sec, char repeat);

void reg_shutdown_callback(timer_cb_t user_shutdown_cb);
void reg_boot_callback(timer_cb_t user_boot_cb);

void doit_timer_init(void);

#endif
