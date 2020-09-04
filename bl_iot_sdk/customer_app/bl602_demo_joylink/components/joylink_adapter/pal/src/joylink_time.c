#include <stdio.h>
#include <stddef.h>
#include <stdint.h>

#if 0 //CSRC
#include <time.h>
#include <sys/time.h>
#endif

#include <FreeRTOS.h>
#include <task.h>
#include <bl_timer.h>
#include <utils_time.h>

#include "joylink_time.h"

static int64_t jl_time_delta_ms;
/**
 * 初始化系统时间
 *
 * @return: 0 - success or -1 - fail
 *
 */
int32_t jl_set_UTCtime(jl_time_stamp_t time_stamp)
{
#if 0 //CSRC
    return 0;
#endif
    // TODO: REPLACE ME
    uint64_t timer_now_ms = bl_timer_now_us64() / 1000;
    jl_time_delta_ms = ((int64_t)time_stamp.second * 1000 + time_stamp.ms) - (int64_t)timer_now_ms;
    return 0;
}

/**
 * 获取系统时间
 *
 * @out param: time
 * @return: success or fail
 *
 */
int32_t jl_time_get_time(jl_time_t *jl_time)
{
#if 0 //CSRC
#ifdef __LINUX_PAL__
    time_t timep;
    struct tm *p;
    jl_time->timestamp = (uint32_t) time(&timep);
    p = gmtime(&timep);
    jl_time->year      = p->tm_year;
    jl_time->month     = p->tm_mon;
    jl_time->week      = p->tm_wday;
    jl_time->day       = p->tm_mday;
    jl_time->hour      = p->tm_hour;
    jl_time->minute    = p->tm_min;
    jl_time->second    = p->tm_sec;
#endif
    return 0;
#endif
    uint32_t ts = jl_time_get_timestamp(NULL);
    utils_time_date_t date;

    utils_time_date_from_epoch(ts, &date);
    jl_time->year = date.ntp_year - 1900;
    jl_time->month = date.ntp_month;
    jl_time->week = date.ntp_week_day;
    jl_time->day = date.ntp_date;
    jl_time->hour = date.ntp_hour;
    jl_time->minute = date.ntp_minute;
    jl_time->second = date.ntp_second;
    jl_time->timestamp = ts;

    return 0;
}

/**
* @brief 获取当前系统时间ms
* @param none
* @return time ms
*/
uint32_t jl_time_get_timestamp_ms(jl_time_stamp_t *time_stamp)
{
#if 0 //CSRC
#ifdef __LINUX_PAL__
    struct timeval now;
    gettimeofday(&now,NULL);
    if(time_stamp)
    {
        time_stamp->second = (uint32_t) now.tv_sec;
        time_stamp->ms = (uint32_t) (now.tv_usec/1000);
    }
    return (uint32_t)(now.tv_sec*1000 + now.tv_usec/1000);
#else
    return 0;
#endif
#endif
    uint64_t ts_ms = (int64_t)bl_timer_now_us64() / 1000 + jl_time_delta_ms;
    if (time_stamp) {
        time_stamp->second = ts_ms / 1000;
        time_stamp->ms = ts_ms % 1000;
    }
    return ts_ms;
}

/**
 * 获取系统UTC时间
 *
 * @return: UTC Second
 *
 */
uint32_t jl_time_get_timestamp(jl_time_t *jl_time)
{
#if 0 //CSRC
#ifdef __LINUX_PAL__
    return (uint32_t)time(NULL);
#else
    return 0;
#endif
#endif
    uint64_t ts_ms = (int64_t)bl_timer_now_us64() / 1000 + jl_time_delta_ms;

    return ts_ms / 1000;
}

/**
 * 获取系统时间
 *
 * @out param: "year-month-day hour:minute:second"
 * @return: success or fail
 *
 */
int32_t jl_get_time_str(char *out, int32_t len)
{
    jl_time_t jl_time;
    jl_time_get_time(&jl_time);
    snprintf(out, len, "%lu-%02u-%02u %02u:%02u:%02u", jl_time.year + 1900, jl_time.month, jl_time.day,
            jl_time.hour, jl_time.minute, jl_time.second);

    return 0;
}

/**
 * get os time
 *
 * @out param: none
 * @return: sys time ticks ms since sys start
*/
uint32_t jl_get_os_time(void)
{
#if 0 //CSRC
#ifdef __LINUX_PAL__
        return (uint32_t) jl_time_get_timestamp_ms(NULL); // FIXME do not recommand this method
        // return clock();
#else
        return 0;
#endif
#endif
    return xTaskGetTickCount();
}



