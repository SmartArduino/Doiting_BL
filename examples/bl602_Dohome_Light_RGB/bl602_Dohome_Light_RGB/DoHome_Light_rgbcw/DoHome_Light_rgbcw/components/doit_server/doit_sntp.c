#include "doit_sntp.h"

#include <FreeRTOS.h>
#include <task.h>
#include <hal_timer.h>

#include <time.h>
#include <sys/time.h>

#include <lwip/sockets.h>
#include <lwip/netdb.h>
#include <lwip/tcp.h>
#include <lwip/err.h>
#include <http_client.h>

#include "cJSON.h"
#include "doit_wifi.h"
#include "doit_flash.h"
#include "doit_http.h"

#include "ulog.h"
#include "app_config.h"

#if LOG_SNTP_EN
#define TAG             "sntp"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define ERROR(...)
#endif


static int64_t rtc_time_offset = 0;

static char time_first_sync_status = 0;

static const uint8_t monthDays[]={31,28,31,30,31,30,31,31,30,31,30,31}; // API starts months from 1, this array starts from 0

/**
 * @brief 设置 RTC 时间
 * 
 * @param[in]       write_time  写入的 RTC 时间值,单位s
 */
void rtc_set_time(const long time) 
{
    int64_t time_now;
    int64_t time_input = time;

    // get now ms
    time_now = hal_timer_now_ms();

    time_input = time_input * 1000;

    rtc_time_offset = time_input - time_now;

    log_info("update offset = %lld, new rtc time = %lld\r\n", rtc_time_offset, time_now + rtc_time_offset);
}

/**
 * @brief 获取 RTC 时间
 * 
 * @return  获取的 RTC 时间值
 */
long hal_rtc_get_time(void)
{
    int64_t time_now;

    time_now = hal_timer_now_ms();
    return (rtc_time_offset + time_now)/1000;
}


void breakTime(long timeInput, struct tm *tm){

	uint8_t year;
	uint8_t month, monthLength;
	uint32_t time;
	unsigned long days;

	time = (uint32_t)timeInput;
	tm->tm_sec = time % 60;
	time /= 60; // now it is minutes
	tm->tm_min = time % 60;
	time /= 60; // now it is hours
	tm->tm_hour = time % 24;
	time /= 24; // now it is days
	tm->tm_wday = ((time + 4) % 7) + 1;  // Sunday is day 1 
	
	year = 0;  
	days = 0;
	while((unsigned)(days += (LEAP_YEAR(year) ? 366 : 365)) <= time) {
		year++;
	}
	tm->tm_year = year; // year is offset from 1970 
	
	days -= LEAP_YEAR(year) ? 366 : 365;
	time  -= days; // now it is days in this year, starting at 0
	
	days=0;
	month=0;
	monthLength=0;
	for (month=0; month<12; month++) {
		if (month==1) { // february
		if (LEAP_YEAR(year)) {
			monthLength=29;
		} else {
			monthLength=28;
		}
		} else {
			monthLength = monthDays[month];
		}
		
		if (time >= monthLength) {
			time -= monthLength;
		} else {
			break;
		}
	}
	tm->tm_mon = month + 1;  // jan is month 1  
	tm->tm_mday = time + 1;     // day of month
}

long makeTime(struct tm *tms){   
  int i;
  uint32_t seconds;

  // seconds from 1970 till 1 jan 00:00:00 of the given year
  seconds= tms->tm_year*(SECS_PER_DAY * 365);
  for (i = 0; i < tms->tm_year; i++) {
    if (LEAP_YEAR(i)) {
      seconds +=  SECS_PER_DAY;   // add extra days for leap years
    }
  }
  
  // add days for this year, months start from 1
  for (i = 1; i < tms->tm_mon; i++) {
    if ( (i == 2) && LEAP_YEAR(tms->tm_year)) { 
      seconds += SECS_PER_DAY * 29;
    } else {
      seconds += SECS_PER_DAY * monthDays[i-1];  //monthDay array starts from 0
    }
  }
  seconds+= (tms->tm_mday-1) * SECS_PER_DAY;
  seconds+= tms->tm_hour * SECS_PER_HOUR;
  seconds+= tms->tm_min * SECS_PER_MIN;
  seconds+= tms->tm_sec;
  return (long)seconds; 
}


long time_tm_to_sec(int year, int mon, int day, int hour, int min, int sec)
{
	struct tm time;
	time.tm_year = year - 1970;
	time.tm_mon = mon;
	time.tm_mday = day;
	time.tm_hour = hour;
	time.tm_min = min;
	time.tm_sec = sec;
	return makeTime(&time);
}


static char find_time(char *pdata, int len, int *year, int *mon, int *day, int *hour, int *min, int *sec)
{
	if (pdata != NULL && len != 0) {
		char *pstart = &pdata[0];
		*year = (pstart[0] - '0') * 1000 + (pstart[1] - '0') * 100 + (pstart[2] - '0') * 10 + (pstart[3] - '0');
		*mon = (pstart[5] - '0') * 10 + (pstart[6] - '0');
		*day = (pstart[8] - '0') * 10 + (pstart[9] - '0');
		*hour = (pstart[11] - '0') * 10 + (pstart[12] - '0');
		*min = (pstart[14] - '0') * 10 + (pstart[15] - '0');
		*sec = (pstart[17] - '0') * 10 + (pstart[18] - '0');
		return 1;
	}
	return 0;
}

long time_get_curr_sec(void)
{
	long timestamp = hal_rtc_get_time();
	return timestamp;
}

void time_set_curr_timestamp(long timestamp)
{
	rtc_set_time(timestamp);
}

long time_set_curr_sec(int year, int mon, int day, int hour, int min, int sec)
{
	long timestamp = 0;
	timestamp = time_tm_to_sec(year, mon, day, hour, min, sec);
	time_set_curr_timestamp(timestamp);
	return timestamp;
}

long time_set_curr_sec_tm(struct tm times)
{
	return time_set_curr_sec(times.tm_year, times.tm_mon, times.tm_mday, times.tm_hour, times.tm_min, times.tm_sec);
}

void time_get_curr_sec_tm(struct tm *t)
{
	// t = localtime((const long *)&timestamp);
	long timestamp = time_get_curr_sec();
	breakTime(timestamp, t);
}

void time_sec_to_time(long t, int *y, int *mon, int *d, int *h, int *min, int *s)
{
	// struct tm *tmp = localtime((const long *)&t);
	
	struct tm times;
	struct tm *tmp = (struct tm *)&times;
	breakTime(t,tmp);

	*y = tmp->tm_year + 1970;
	*mon = tmp->tm_mon;
	*d = tmp->tm_mday;
	*h = tmp->tm_hour;
	*min = tmp->tm_min;
	*s = tmp->tm_sec;
}


static void sync_time_cb(char * response_body, int http_status, char * response_headers, int body_size)
{
	if (http_status == 200) {
		long timestamp = 0; 
		int year, mon, day, hour, min, sec;

		if (!find_time(response_body, body_size, &year, &mon, &day, &hour, &min, &sec)) {
			LOGI(TAG, "did not get time");
			return;
		}
		// LOGI(TAG, "%d-%d-%d %d:%d:%d", year, mon, day, hour, min, sec);

		if(time_first_sync_status == 0){
			time_first_sync_status = 1;
		}

		long t1 = time_tm_to_sec(year, mon, day, hour, min, sec);
		// LOGI(TAG, "t1  : %u", t1);

		user_config_t *pcfg = flash_get_user_config();

		LOGI(TAG, "timezone offset: %d", pcfg->timezone_offset);

		signed int offset = 0;
		if (pcfg->timezone_offset >= MIN_TIMEZONE_OFFSET && pcfg->timezone_offset <= MAX_TIMEZONE_OFFSET) {
			offset = (pcfg->timezone_offset - 19) * 60 * 60;
		}else{
			pcfg->timezone_offset = 19;
			flash_user_config_write();
		}

		// LOGI(TAG, "offset  : %d", offset);

		timestamp = t1 + offset;
		time_sec_to_time(timestamp, &year, &mon, &day, &hour, &min, &sec);
		LOGI(TAG, "timestamp: %u    %04d-%02d-%02d %02d:%02d:%02d", timestamp, year, mon, day, hour, min, sec);

		time_set_curr_timestamp(timestamp);	
	} else {
		LOGI(TAG, "sync time failed");
	}
}

void time_start_sync(void)
{
	LOGI(TAG, "time_start_sync");

	request_args request;
	request.method = "GET";
	request.hostname = NTP_SERVER_HOST;
	request.port = NTP_SERVER_PORT;
	request.path = "/iot_api/get_iot_time.php";
	request.user_callback = sync_time_cb;
	doit_http_request(&request);
}


static void update_time(void *arg)
{
	static long sync_count = SYNC_TIME_PERIOD;
	while (1)
	{
		if(wifi_get_connect_status()){
			if(time_first_sync_status == 0){
				sync_count = 0; 
				time_start_sync();
				vTaskDelay(10000 / portTICK_RATE_MS);
				continue;
			}else{
				if (++sync_count >= (SYNC_TIME_PERIOD)) {
					sync_count = 0;
					time_start_sync();
				}
			}
		}else{
			sync_count = SYNC_TIME_PERIOD;
		}
		vTaskDelay(1000 / portTICK_RATE_MS);
	}	
    vTaskDelete(NULL);
}

#define SNTP_TASK_SIZE 			1024
#define SNTP_TASK_PIO 			5
void doit_sntp_init(void)
{
	long init_time = 1577808000;
	rtc_set_time(init_time);


	if (xTaskCreate(update_time, "update_time_task", SNTP_TASK_SIZE, NULL, SNTP_TASK_PIO, NULL) == pdPASS) {
        LOGI(TAG, "xTaskCreate update_time_task successfully");
    } else {
        LOGI(TAG, "xTaskCreate(update_time_task) failed");
    }
}
