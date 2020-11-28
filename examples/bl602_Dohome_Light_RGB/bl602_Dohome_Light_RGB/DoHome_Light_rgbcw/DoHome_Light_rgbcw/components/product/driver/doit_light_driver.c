
#include "doit_light_driver.h"

#include <stdio.h>
#include <FreeRTOS.h>
#include <timers.h>
#include <semphr.h>
#include <task.h>

#include <hal_pwm.h>

#include "ulog.h"
#include "app_config.h"

#include "doit_flash.h"
#include "doit_timer.h"
#include "doit_upload.h"
#include "doit_utils.h"

#include "doit_light_Ambilight.h"
#include "doit_light_effect.h"

#include "product.h"

#if defined(IS_WY) || defined(IS_WYRGB)
// #include "driver/ledc.h"
#endif


#if LOG_LED_DRIVE_EN
#define TAG             "led_drive"
#define LOGI             LOG_I
#define LOGE             LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif

#define LOG_TAG     TAG

static char led_cfg_mode = false;

static TimerHandle_t LightTimer_Handle;


//smooth
rgb_pixel_t prev_color = { .red = 0, .green = 0, .blue = 0, .white = 0, .yellow = 0};
rgb_pixel_t next_color = { .red = 0, .green = 0, .blue = 0, .white = 0, .yellow = 0};
rgb_pixel_t curr_color = { .red = 9999, .green = 0, .blue = 0, .white = 0, .yellow = 0};
rgb_pixel_t step_color = { .red = 0, .green = 0, .blue = 0, .white = 0, .yellow = 0};

static int led_smooth_count = 0;
static uint8_t smooth_stat = 0;

#define LED_SMOOTH_STEP_MAX 	COLOR_MAX

#define IS_SMOOTH_STR 0
#define IS_SMOOTH_ING 1
#define IS_SMOOTH_END 2


//是否上传标记，节约内存，只远程需要实时上传,1代表实时

static char led_smoothing_loop();

//任务同步
SemaphoreHandle_t task_sem;
//同步锁
SemaphoreHandle_t  hanler_mutex;
//PWM同步锁
SemaphoreHandle_t  pwm_mutex;

//标识一次新的平滑，1代表是新的平滑开始,andy
static int step_color_flag = 0;


doit_post_cb_t _delay_post_cb = NULL;
doit_post_cb_t _post_cb = NULL;

/*
	保存颜色数据，并上传到远程服务器
 */
int update_config_upload()
{
	if(_post_cb){
		_post_cb();
	}
	return 0;
}

/*
	延时保存颜色数据，并上传到远程服务器
 */
int delay_update_config_upload()
{
	if(_delay_post_cb){
		_delay_post_cb();
	}
	return 0;
}

/*
	通过rgb值计算出亮度
 */
int get_brightness(int r, int g, int b, int w)
{
	int max, brightness;
	max = r;
	if (g > max) { max = g;}
	if (b > max) { max = b;}
	if (w > max) { max = w;}
	brightness = (int)(max * 100 / 255);
	return brightness;
}

/*
	获取最大值
 */
static int get_max_value(int a, int b, int c, int d, int e)
{
	int x = a > b ? a : b; //1次比较，1次赋值
	int y = c > d ? c : d; //1次比较，1次赋值
	int z = x > y ? x : y;
	return z > e ? z : e;  //1次比较
}


/*
	获取当前灯光模式
 */
char get_led_cfg_mode()
{
	return led_cfg_mode;
}

/*
	设置当前灯光模式
	参数：
		IS_DEFAULT_CFG_MODE 0
		IS_DOHOME_CFG_MODE  2
		IS_SMOOTH_CFG_MODE  3
		IS_AMBILIGHT_CFG_MODE  4
 */
void set_light_work_mode(char mode)
{
	set_led_cfg_dohome_effect_cnt(0);
	led_cfg_mode = mode;
	//此处释放信号量会不会有问题
	LOGI(TAG, "set_light_work_mode give task sem");
	xSemaphoreGive(task_sem);
	LOGI(TAG, "set_light_work_mode set led_cfg mode %d", led_cfg_mode);
}


#if 1
/*
	定时刷新平滑效果信号量
 */
void hw_test_timer_cb(TimerHandle_t timer)
{
	xSemaphoreGive(task_sem);
}

/*
	初始化定时器
 */
static void hw_timer_init() {

	LightTimer_Handle = xTimerCreate(((const char*)"light_timer_task"), 6 / portTICK_RATE_MS, pdTRUE, 0, hw_test_timer_cb);
	if( LightTimer_Handle == NULL ) {
        LOGE(TAG, "create light_timer_task fa");
    }
}

/*
	设置定时器时间
 */
static inline void hw_timer_arm(uint32_t ms) {

	if(xTimerChangePeriod(LightTimer_Handle, ms / portTICK_PERIOD_MS, 1000) != pdPASS )
	{
		LOGE(TAG, "LightTimer ChangePeriod Failure");
	}
}

/*
	关闭定时器
 */
static inline void hw_timer_disable() {

	if( xTimerStop(LightTimer_Handle, 100) != pdPASS ){
		LOGE(TAG, "LightTimer xTimerStop Failure");
	}
}

/*
	打开定时器
 */
static inline void hw_timer_enable() {
	
	if( xTimerStart(LightTimer_Handle, 100) != pdPASS ){
		LOGE(TAG, "LightTimer xTimerStop Failure");
	}
}

#else

/*
	定时刷新平滑效果信号量
 */
void hw_test_timer_cb(void * arg)
{
	xSemaphoreGive(task_sem);
}

/*
	初始化定时器
 */
static void hw_timer_init() {

	
}

/*
	设置定时器时间
 */
static inline void hw_timer_arm(uint32_t ms) {

	
}

/*
	关闭定时器
 */
static inline void hw_timer_disable() {

	
}

/*
	打开定时器
 */
static inline void hw_timer_enable() {
	
	
}
#endif
/*
	灯光变化任务，静态默认模式，配网模式，平滑，流光
 */
static void light_change_task(void *arg)
{
	while (1) {
		//延长等待时间，利于内存回收
		xSemaphoreTake(task_sem, 10000 / portTICK_RATE_MS);

		if (led_cfg_mode == IS_DEFAULT_CFG_MODE) {
		} else if (led_cfg_mode == IS_DOHOME_CFG_MODE) {
			led_cfg_dohome_effect();
			xSemaphoreGive(task_sem);
		} else if (led_cfg_mode == IS_FACTORY_TEST_MODE) {
			led_cfg_dohome_effect3();
			xSemaphoreGive(task_sem);
		}else if (led_cfg_mode == IS_SMOOTH_CFG_MODE) {
			//增加同步与互斥
			xSemaphoreTake(hanler_mutex, 50000 / portTICK_RATE_MS);
			smooth_stat = led_smoothing_loop();
			xSemaphoreGive(hanler_mutex);
		}
		else if (led_cfg_mode == IS_AMBILIGHT_CFG_MODE) {
			ambilight_task();
			xSemaphoreGive(task_sem);
		}
	}
	// vTaskDelete(NULL);
}


#define    LIGHT_TASK_SIZE      6*1024
/*
	初始化灯光模式
 */
void init_led_cfg_mode()
{
	
	//任务同步信号量
	task_sem = xSemaphoreCreateBinary();
	hanler_mutex = xSemaphoreCreateBinary();
	pwm_mutex = xSemaphoreCreateBinary();

	xSemaphoreGive(task_sem);
	xSemaphoreGive(hanler_mutex);
	xSemaphoreGive(pwm_mutex);

	hw_timer_init();

	xTaskCreate(light_change_task, "light_change_task", LIGHT_TASK_SIZE, NULL, 3, NULL);
}


/*
	从flash 加载灯光效果，如果灯光值都为0，亮白光
 */
void led_load_saved_color()
{
	product_mode_t *product_status = product_get_status();

	LOGI(TAG, "led_load_saved_color 1");
	product_status->color.on = 1;

	curr_color.red = 0;
	curr_color.green = 0;
	curr_color.blue = 0;
	curr_color.white = 0;
	curr_color.yellow = 0;
	curr_color.on = 1;
	start_led_change(product_status->color, 0);
}


void led_load_saved_color2()
{
	product_mode_t *product_status = product_get_status();

	char reset_reason = flash_get_reset_reason();

	//软件重启
	if(reset_reason != RESTART_REASON_RESET_NULL){

		LOGI(TAG, "led_load_saved_color 1");
		product_status->color.on = 1;
		next_color = product_status->color;
		curr_color = product_status->color;
		send_light_data_pwm(product_status->color);
	}else{
		LOGI(TAG, "led_load_saved_color 2");
		product_status->color.on = 1;

		curr_color.red = 0;
		curr_color.green = 0;
		curr_color.blue = 0;
		curr_color.white = 0;
		curr_color.yellow = 0;
		curr_color.on = 1;
		start_led_change(product_status->color, 0);
	}
}

/*
	初始化平滑参数，开始平滑
 */
void start_led_change(rgb_pixel_t rgb, int t)
{
	product_mode_t *product_status = product_get_status();
	if (curr_color.red == 9999) {
		next_color = product_status->color;
		curr_color = product_status->color;
	}

	LOGI(TAG, "start_led_change debug 3 begin ca");
	LOGI(TAG, "start_led_change curr color r=%d,g=%d,b=%d,w=%d,y=%d =>", curr_color.red, curr_color.green, curr_color.blue, curr_color.white, curr_color.yellow);

	LOGI(TAG, "start_led_change next color r=%d,g=%d,b=%d,w=%d,y=%d =>", next_color.red, next_color.green, next_color.blue, next_color.white, next_color.yellow);
	LOGI(TAG, "start_led_change new color r=%d,g=%d,b=%d,w=%d,y=%d",  rgb.red, rgb.green, rgb.blue, rgb.white, rgb.yellow);
	LOGI(TAG, "start_led_change debug 4 set mode");

	//如果新的目标值和现在目标值相等，直接返回
	if (next_color.red == rgb.red &&  next_color.green == rgb.green && next_color.blue == rgb.blue && next_color.white == rgb.white && next_color.yellow == rgb.yellow )
	{
		LOGI(TAG, "debug end  same next and new");
		return ;

	}

	//平滑每次执行，第一次计算标记，同步锁
	//增加同步与互斥
	xSemaphoreTake(hanler_mutex, 5000 / portTICK_RATE_MS);

	step_color_flag = 1;
	next_color = rgb;
	led_smooth_count = 0;
	set_light_work_mode(IS_SMOOTH_CFG_MODE);

	if (t == 0) { //使用系统默认平滑周期
		if (rgb.on == 1) {
			if(rgb.white == 0 && rgb.yellow == 0){
				hw_timer_arm(8);
			}else{
				//由彩色转白色
				int max = get_max_value(curr_color.red, curr_color.green, curr_color.blue, curr_color.white, curr_color.yellow);
				if(curr_color.white == 0 && curr_color.yellow == 0 && max != 0){
					max = rgb.white>rgb.yellow?rgb.white:rgb.yellow;
					if(max > COLOR_MAX / 3){
						hw_timer_arm(16);
					}else{
						max = get_max_value(curr_color.red, curr_color.green, curr_color.blue, 0, 0);
						if(max > COLOR_MAX / 2){
							hw_timer_arm(4);
						}else{
							hw_timer_arm(10);
						}
					}
				}else{
					hw_timer_arm(18);
				}
			}
		} else {
			hw_timer_arm(4);
		}

	} else {
		//由APP指令平滑周期,单位毫秒
		hw_timer_arm(t);
	}


	LOGI(TAG, "start_led_change debug 5 enable timer");
	hw_timer_enable();

	xSemaphoreGive(hanler_mutex);
}

//涂鸦平滑算法移植
static int ABS(int  value)
{
	if (value < 0) {
		return 0 - value;
	} else {
		return value;
	}
}

/*
	计算平滑步数
 */
int cal_step()
{
	signed int delata_red = 0;
	signed int delata_green = 0;
	signed int delata_blue = 0;
	signed int delata_white = 0;
	signed int delata_warm = 0;
	unsigned int  MAX_VALUE;


	static float r_scale;
	static float g_scale;
	static float b_scale;
	static float w_scale;
	static float ww_scale;
	unsigned int RED_GRA_STEP = LIGHT_GRA_STEP;
	unsigned int GREEN_GRA_STEP = LIGHT_GRA_STEP;
	unsigned int BLUE_GRA_STEP = LIGHT_GRA_STEP;
	unsigned int WHITE_GRA_STEP = LIGHT_GRA_STEP;
	unsigned int WARM_GRA_STEP = LIGHT_GRA_STEP;

	delata_red = next_color.red - curr_color.red;
	delata_green = next_color.green - curr_color.green;
	delata_blue = next_color.blue - curr_color.blue;
	delata_white = next_color.white - curr_color.white;
	delata_warm = next_color.yellow - curr_color.yellow;
	MAX_VALUE = get_max_value(ABS(delata_red), ABS(delata_green), ABS(delata_blue), ABS(delata_white), ABS(delata_warm));
	if (MAX_VALUE == 0) {
		return 0;
	}
	//PR_DEBUG("MAX: %d", MAX_VALUE);
	if (step_color_flag == 1) {
		r_scale = ABS(delata_red) / 1.0 / MAX_VALUE;
		g_scale = ABS(delata_green) / 1.0 / MAX_VALUE;
		b_scale = ABS(delata_blue) / 1.0 / MAX_VALUE;
		w_scale = ABS(delata_white) / 1.0 / MAX_VALUE;
		ww_scale = ABS(delata_warm) / 1.0 / MAX_VALUE;
		step_color_flag = 0;
		LOGI(TAG, "cal_step first cal scale %d %d %d %d  %d", (int)(r_scale * 100), (int)(g_scale * 100), (int)(b_scale * 100), (int)(w_scale * 100), (int)(ww_scale * 100));
	}
	if (MAX_VALUE == ABS(delata_red)) {
		RED_GRA_STEP = LIGHT_GRA_STEP;
	} else {
		RED_GRA_STEP =  ABS(ABS(delata_red) - MAX_VALUE * r_scale);
	}

	if (MAX_VALUE == ABS(delata_green)) {
		GREEN_GRA_STEP = LIGHT_GRA_STEP;
	} else {
		GREEN_GRA_STEP =  ABS(ABS(delata_green) - MAX_VALUE * g_scale);
	}

	if (MAX_VALUE == ABS(delata_blue)) {
		BLUE_GRA_STEP = LIGHT_GRA_STEP;
	} else {
		BLUE_GRA_STEP =  ABS(ABS(delata_blue) - MAX_VALUE * b_scale);
	}

	if (MAX_VALUE == ABS(delata_white)) {
		WHITE_GRA_STEP = LIGHT_GRA_STEP;
	} else {
		WHITE_GRA_STEP =  ABS(ABS(delata_white) - MAX_VALUE * w_scale);
	}

	if (MAX_VALUE == ABS(delata_warm)) {
		WARM_GRA_STEP = LIGHT_GRA_STEP;
	} else {
		WARM_GRA_STEP =  ABS(ABS(delata_warm) - MAX_VALUE * ww_scale);
	}


	step_color.red = RED_GRA_STEP;
	step_color.green = GREEN_GRA_STEP;
	step_color.blue = BLUE_GRA_STEP;
	step_color.white = WHITE_GRA_STEP;
	step_color.yellow = WARM_GRA_STEP;
	// LOGI(TAG, "cal_step step test max=%d r:%d,g:%d,b:%d,w:%d,y:%d\n",MAX_VALUE, step_color.red, step_color.green, step_color.blue, step_color.white, step_color.yellow);

	// LOGI(TAG, "cal_step next color r=%d,g=%d,b=%d,w=%d,y=%d =>", curr_color.red, curr_color.green, curr_color.blue, curr_color.white, curr_color.yellow);
	// LOGI(TAG, "cal_step curr color r=%d,g=%d,b=%d,w=%d,y=%d",  next_color.red, next_color.green, next_color.blue, next_color.white, next_color.yellow);
	// LOGI(TAG,"cal_step curr flag =%d scale %d %d %d %d ",step_color_flag,(int)(r_scale*100),(int)(g_scale*100),(int)(b_scale*100),(int)(w_scale*100),(int)(ww_scale*100));
	return 1;
}

/*
	循环平滑，步进
 */
static char led_smoothing_loop()
{
	bool changed = false;
	char res = IS_SMOOTH_END;
	//每次更新步长 andy
	//同步锁

	cal_step();

	if (next_color.red != curr_color.red) {
		if (curr_color.red < next_color.red) {
			curr_color.red += step_color.red;
			if (curr_color.red > next_color.red) { curr_color.red = next_color.red; }
		} else {
			curr_color.red -= step_color.red;
			if (curr_color.red < next_color.red) { curr_color.red = next_color.red; }
		}
		changed = true;
	} else {
		prev_color.red = next_color.red;
	}

	if (next_color.green != curr_color.green) {
		if (curr_color.green < next_color.green) {
			curr_color.green += step_color.green;
			if (curr_color.green > next_color.green) { curr_color.green = next_color.green; }
		} else {
			curr_color.green -= step_color.green;
			if (curr_color.green < next_color.green) { curr_color.green = next_color.green; }
		}
		changed = true;
	} else {
		prev_color.green = next_color.green;
	}

	if (next_color.blue != curr_color.blue) {
		if (curr_color.blue < next_color.blue) {
			curr_color.blue += step_color.blue;
			if (curr_color.blue > next_color.blue) { curr_color.blue = next_color.blue; }
		} else {
			curr_color.blue -= step_color.blue;
			if (curr_color.blue < next_color.blue) { curr_color.blue = next_color.blue; }
		}
		changed = true;
	} else {
		prev_color.blue = next_color.blue;
	}

	if (next_color.white != curr_color.white) {
		if (curr_color.white < next_color.white) {
			curr_color.white += step_color.white;
			if (curr_color.white > next_color.white) { curr_color.white = next_color.white; }
		} else {
			curr_color.white -= step_color.white;
			if (curr_color.white < next_color.white) { curr_color.white = next_color.white; }
		}
		changed = true;
	} else {
		prev_color.white = next_color.white;
	}

#if defined(IS_WYRGB) || defined(IS_WY) 
	if (next_color.yellow != curr_color.yellow) {
		if (curr_color.yellow < next_color.yellow) {
			curr_color.yellow += step_color.yellow;
			if (curr_color.yellow > next_color.yellow) { curr_color.yellow = next_color.yellow; }
		} else {
			curr_color.yellow -= step_color.yellow;
			if (curr_color.yellow < next_color.yellow) { curr_color.yellow = next_color.yellow; }
		}
		changed = true;
	} else {
		prev_color.yellow = next_color.yellow;
	}
#endif

	if (changed) {
		send_light_data_pwm(curr_color);
		res = IS_SMOOTH_ING;
	} else {
		LOGI(TAG, "led_smoothing_loop debug end smoothing ende");

		LOGI(TAG, "led_smoothing_loop step test r:%d,g:%d,b:%d,w:%d,y:%d", step_color.red, step_color.green, step_color.blue, step_color.white, step_color.yellow);

		LOGI(TAG, "led_smoothing_loop next color r=%d,g=%d,b=%d,w=%d,y=%d =>", curr_color.red, curr_color.green, curr_color.blue, curr_color.white, curr_color.yellow);
		LOGI(TAG, "led_smoothing_loop curr color r=%d,g=%d,b=%d,w=%d,y=%d",  next_color.red, next_color.green, next_color.blue, next_color.white, next_color.yellow);

		// send_light_data_pwm(next_color);
		res = IS_SMOOTH_END;

		hw_timer_disable();

		set_light_work_mode(IS_DEFAULT_CFG_MODE);
		// load_color_from_queue();
	}

	led_smooth_count++;
	if (led_smooth_count >= LED_SMOOTH_STEP_MAX) {
		LOGI(TAG, "led_smoothing_loop Forced to smoothing end");
		led_smooth_count = 0;
		prev_color = next_color;
		curr_color = next_color;
		send_light_data_pwm(next_color);
		res = IS_SMOOTH_END;

		hw_timer_disable();

		set_light_work_mode(IS_DEFAULT_CFG_MODE);
		// load_color_from_queue();
	}
	return res;
}


/*
	设置灯光颜色，开启平滑效果
 */
void send_light_data(int r, int g, int b, int w, int y, int t)
{
	rgb_pixel_t color = {0, 0, 0, 0, 0, 0};
	color.on = 1;

	float sum = r + g + b + w + y;
	if (sum>0 && sum < 20) {
		color.red    = (r == 0) ? 0 : 20 * r / sum;
		color.green  = (g == 0) ? 0 : 20 * g / sum;
		color.blue   = (b == 0) ? 0 : 20 * b / sum;
		color.white  = (w == 0) ? 0 : 20 * w / sum;
		color.yellow = (y == 0) ? 0 : 20 * y / sum;
	} else {
		color.red = r;
		color.green = g;
		color.blue = b;
		color.white = w;
		//此处是是否要去除
//#if defined(IS_WYRGB)
		color.yellow = y;
//#endif
	}

#if defined(IS_STRIP_RGB)
	if (w != 0) {
		color.red = w;
		color.green = w;
		color.blue = w;
		color.white = 0;
	}
	color.white = 0;
	color.yellow = 0;
#endif

	LOGI(TAG, "send_light_data debug 2 set led smoothing");
	start_led_change(color, t);

	product_mode_t *product_status = product_get_status();
	product_status->color = color;
	delay_update_config_upload();
}

/*
	led开关控制，启用平滑效果
 */
int send_light_onoff(char on)
{
	product_mode_t *product_status = product_get_status();
	if (product_status->color.on != on) {
		if (on) {
			led_load_saved_color();
			product_status->color.on = 1;
		} else {
			led_rgb_set_off();
			product_status->color.on = 0;
		}
		update_config_upload();
		return 1;
	}
	return 0;
}


/*
	关灯，启用平滑效果
 */
void led_rgb_set_off() {
	rgb_pixel_t color = {.red = 0, .green = 0, .blue = 0, .white = 0, .yellow = 0, .on = 0};
	start_led_change(color, 0);
}

/*
	把颜色255映射到当前颜色范围，用于兼容homekit和流光
 */
void send_light_data_pwm_map(rgb_pixel_t rgb, char save)
{
	rgb_pixel_t color = rgb;

	if (rgb.red == 0) { color.red = 0; }
	else {color.red = map(rgb.red, 0, 255, 0, COLOR_MAX);}

	if (rgb.green == 0) { color.green = 0; }
	else {color.green = map(rgb.green, 0, 255, 0, COLOR_MAX);}

	if (rgb.blue == 0) { color.blue = 0; }
	else {color.blue = map(rgb.blue, 0, 255, 0, COLOR_MAX);}

	if (rgb.white == 0) { color.white = 0; }
	else {color.white = map(rgb.white, 0, 255, 0, COLOR_MAX);}

	if (rgb.yellow == 0) { color.yellow = 0; }
	else {color.yellow = map(rgb.yellow, 0, 255, 0, COLOR_MAX);}

	send_light_data_pwm(color);
}

void light_shutdown_cb(void){

	send_light_onoff(0);
}

void light_boot_cb(void){

	send_light_onoff(1);
}

#if defined(IS_WYRGB) \
   || defined(IS_WY) \

#define MULTIPWM_MAX_PERIOD    (10000)
/*
	设置pwm，把颜色值映射到pwm占空比
 */
void send_light_data_pwm(rgb_pixel_t rgb)
{
	// int sum = rgb.blue + rgb.red + rgb.green + rgb.white + rgb.yellow;
	//printf( "%d,%d,%d,%d,%d,", rgb.blue, rgb.red, rgb.green, rgb.white, rgb.yellow, sum);

	// static bool pwm_run_status[5];

	int rr = 0, gg = 0, bb = 0, ww = 0, yy = 0;

#if defined(IS_WYRGB)
	if (rgb.red == 0) { rr = 0; }
	else {rr = map(rgb.red, 0, COLOR_MAX, 0, MULTIPWM_MAX_PERIOD);}

	if (rgb.green == 0) { gg = 0; }
	else {gg = map(rgb.green, 0, COLOR_MAX, 0, MULTIPWM_MAX_PERIOD);}

	if (rgb.blue == 0) { bb = 0; }
	else {bb = map(rgb.blue, 0, COLOR_MAX, 0, MULTIPWM_MAX_PERIOD);}
#endif
	if (rgb.white == 0) { ww = 0; }
	else {ww = map(rgb.white, 0, COLOR_MAX, 0, MULTIPWM_MAX_PERIOD);}

	if (rgb.yellow == 0) { yy = 0; }
	else {yy = map(rgb.yellow, 0, COLOR_MAX, 0, MULTIPWM_MAX_PERIOD);}

	// LOGI(TAG, "set pwm r=%d,g=%d,b=%d,w=%d y=%d>", rr, gg, bb, ww, yy);
	// static int cnt = 0;
	// if(cnt++ > 100){
	// 	LOGI(TAG, "set pwm r=%d,g=%d,b=%d,w=%d y=%d>", rr, gg, bb, ww, yy);
	// 	cnt = 0;
	// }

	xSemaphoreTake(pwm_mutex, 1000 / portTICK_RATE_MS);

#if defined(IS_WYRGB)
	hal_pwm_duty_set(0, rr, 0);
	hal_pwm_duty_set(1, gg, 0);
	hal_pwm_duty_set(2, bb, 0);
	hal_pwm_duty_set(3, ww, 0);
	hal_pwm_duty_set(4, yy, 0);
#elif defined(IS_WY)

#endif	
	xSemaphoreGive(pwm_mutex);
}

void dohome_reg_delay_post_cb(doit_post_cb_t user_delay_post_cb){
	_delay_post_cb = user_delay_post_cb;
}

void dohome_reg_post_cb(doit_post_cb_t user_post_cb){
	_post_cb = user_post_cb;
}


/*
	初始化灯光管脚，并初始化灯光模式和流光
 */
void light_init()
{
    int i;
	char pin, ch;
	char pinbuf[] = {5, 1, 2, 3, 4};
#if defined(IS_WYRGB)
	for (i = 0; i < sizeof(pinbuf); i++) {
        pin = pinbuf[i];
        ch = pin%5;
        log_info("pwm init ch = %d, pin = %d\r\n", ch, pin);
        hal_pwm_init(ch, pin);
		hal_pwm_freq_update(ch, 5000);
		hal_pwm_duty_set(ch, 0, 0);
		hal_pwm_start(ch);
    }
#elif defined(IS_WY)

#endif

	init_led_cfg_mode();
	ambilight_init();

	reg_shutdown_callback(light_shutdown_cb);
	reg_boot_callback(light_boot_cb);
}
#endif