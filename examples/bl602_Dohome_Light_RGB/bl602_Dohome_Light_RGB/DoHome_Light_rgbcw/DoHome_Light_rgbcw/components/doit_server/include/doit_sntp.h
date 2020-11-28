#ifndef _DOIT_SNTP_H_
#define _DOIT_SNTP_H_

#include <time.h>

#define LEAP_YEAR(Y)                ( ((1970+Y)>0) && !((1970+Y)%4) && ( ((1970+Y)%100) || !((1970+Y)%400) ) )
#define SECS_PER_MIN                ((long)(60UL))
#define SECS_PER_HOUR               ((long)(3600UL))
#define SECS_PER_DAY                ((long)(SECS_PER_HOUR * 24UL))

#define JAN_1970			        2208988676UL+28701		/* 1970 - 1900 in seconds */


long time_tm_to_sec(int year, int mon, int day, int hour, int min, int sec);

long time_get_curr_sec(void);
void time_get_curr_sec_tm(struct tm *t);
long time_set_curr_sec_tm(struct tm times);
long time_set_curr_sec(int year, int mon, int day, int hour, int min, int sec);
void time_sec_to_time(long t, int *y, int *mon, int *d, int *h, int *min, int *s);

void time_start_sync(void);
void doit_sntp_init(void);

#endif
