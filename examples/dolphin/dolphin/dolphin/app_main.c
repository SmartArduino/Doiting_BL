#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <hal_timer.h>
#include <aos/kernel.h>
#include <aos/yloop.h>

#include "ulog.h"
#include "ukey.h"
#include "do_ble.h"
#include "product.h"
#include "doit_wifi.h"
#include "doit_ota.h"
#include "doit_flash.h"

#include"hal_adc.h"
#include"hal_hbn.h"
#include"bl_timer.h"

#if LOG_MIAN_EN
#define TAG            "app_main"
#define LOGI           LOG_I
#define LOGE           LOG_E
#else
#define TAG            ""
#define LOGI(...)
#define LOGE(...)
#endif

#define CDM_CMP(str1, str2)     (strcmp(str1, str2)==0)

 bool ble_connect=false;   //蓝牙连接状态标志
 bool light_flag=true;     //是否开启灯光提示，默认开启
 int light_grade=0;        //灯光闪烁等级
 static int Grade=0;       //离线模式灯光等级
 int vibrate=0;            //在线模式震动等级
 int ota_time=0;            //OTA更新时长记录，超时进入休眠
 bool ota_flag=false;      //ota进行状态标志
 bool discharge_flag=false;
 bool charge_flag=false;
int32_t data;              //电池读取的数值
uint8_t  key_weakup_pin = 7;

long map(const long x, const long in_min, const long in_max, const long out_min, const long out_max)
{
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

void sleep_start(){

    if(charge_status == DISCHARGE)
    {
    if ((key_weakup_pin!= 7) && (key_weakup_pin!= 8)) {
        return ;
    }
    hal_hbn_init(&key_weakup_pin, 1);
    //hal_hbn_init(&power_weakup_pin, 1);
    //hal_timer_init();
    
    int time= hal_timer_now_ms();
    while(hal_timer_now_ms()-time<200){bl_gpio_output_set(LED_POWER, 0);motor_g_set_vibrate(20);}   
    bl_gpio_output_set(LED_POWER, 1);motor_g_set_vibrate(0);
    time= hal_timer_now_ms();
    while(hal_timer_now_ms()-time<2000){Grade=0;vibrate=0;led_status_flash(0);bl_gpio_output_set(LED_STATUS, 1);} ; 
    LOGE(TAG, "sleep start");  
    hal_hbn_enter(0);
    }
}

static void ble_connect_cb(uint8_t status, char *addr){
    if(status == DO_BLE_DEVICE_CONNECT){
        LOGI(TAG, "ble_connect: %s", addr);
        Grade=0;
        vibrate=0;
        ble_connect=true;
        motor_g_set_vibrate(0);

    }else if(status == DO_BLE_DEVICE_DISCONNECT){   //蓝牙断开，开始广播
        LOGI(TAG, "ble_disconnect: %s", addr);
        ble_start_advertise();
        Grade=0;
        vibrate=0;
        ble_connect=false;
    }
}

void key_event_cb(uint8_t gpio_name, ukey_event event){                                        //离线模式档位
    //LOGI(TAG, "gpio_name %d, event: %d", gpio_name, event);  
    if(event == UKEY_EVEVT_SHORT_PRESS){
    Grade++;
    if(Grade==5) Grade=0;
     LOGI(TAG, "UKEY_EVEVT_SHORT_PRESS");
    }
    else if(event == UKEY_EVEVT_LONG_PRESS){
    LOGI(TAG, "UKEY_EVEVT_LONG_PRESS");

    sleep_start();

    
    }
}

void mada_mode(void){         //mada模式
    if(!ble_connect&&(charge_status == DISCHARGE)){
        if(Grade==0) motor_g_set_vibrate(0);
        if(Grade==1) motor_g_set_vibrate(8);
        if(Grade==2) motor_g_set_vibrate(12);
        if(Grade==3) motor_g_set_vibrate(16);
        if(Grade==4) motor_g_set_vibrate(20);
    }
    else if(ble_connect&&(charge_status == DISCHARGE)){
        motor_g_set_vibrate(vibrate);
    }
    else {motor_g_set_vibrate(0);Grade=0;vibrate=0;}

}

void ble_light_task(){    //蓝牙灯光任务
   if(light_flag&&(charge_status == DISCHARGE)){
   if(!ble_connect)  {
       led_status_flash(800);
   }else {
       led_status_flash(0);
       bl_gpio_output_set(LED_STATUS, 0);
   }
   }
}

void light_task(void *arg){              //灯光任务

    while(1){
if(charge_status == DISCHARGE)       //未充电
{
    if(charge_status == DISCHARGE)  {led_power_flash(0);bl_gpio_output_set(LED_POWER, 1);}
        if(ble_connect&&light_flag){                                                          //在线模式灯光
            if((0<light_grade&&light_grade<=4))  led_status_flash(100); 
            if((4<light_grade&&light_grade<=8))  led_status_flash(80); 
            if((8<light_grade&&light_grade<=12)) led_status_flash(60);  
            if((12<light_grade&&light_grade<=15))led_status_flash(40);
            if((16<light_grade&&light_grade<=20))led_status_flash(20);      
    }
        else if(!ble_connect&&light_flag)
    {                                                                                             //离线模式的灯光
    //if(Grade==0)led_status_flash(0); 
            if(Grade==1)led_status_flash(100);  
            if(Grade==2)led_status_flash(75);
            if(Grade==3)led_status_flash(50); 
            if(Grade==4)led_status_flash(25); 
    }
    else {bl_gpio_output_set(LED_STATUS, 1);}

}
else     //充电
{
    led_status_flash(0);
    bl_gpio_output_set(LED_STATUS, 1);
    if(charge_status == CHARGING)  {led_power_flash(500);}
    if(charge_status == CHARGEFULL){  led_power_flash(0);bl_gpio_output_set(LED_POWER, 0);}

}
    vTaskDelay(500 / portTICK_RATE_MS);
    }
}

void adc_init(){

    LOGE(TAG, "ADC init start PIN :%d",BATTERY);
    //hal_adc_init(150);
    //hal_adc_add_channel(12);
    hal_adc_init(0, 100, 512, 12);
}

int32_t get_battery()
{
    int32_t percent;
    data = hal_adc_get_data(12,1);
    percent=data-1100;
    percent=map(percent, 0, 200, 0, 100);
    if(data<1100) percent=1;
    if(data>1300) percent=100;
    LOGE(TAG,"gpio = %d data = %ld mv  %:%d \r\n", 12, data,percent);
    return percent;
}

void charge_detect(void)        //充电检测
    {
    //LOGI(TAG, "CHG_PIN:%d",bl_gpio_input_get_value(CHG_PIN));
    //LOGI(TAG, "CHG_STA_PIN:%d",bl_gpio_input_get_value(CHG_STA_PIN));
	if(bl_gpio_input_get_value(CHG_PIN))
	    {
		if(data>1300)
		    {
		    charge_status = CHARGEFULL;
            charge_flag=true;
            bl_gpio_output_set(CHG_STA_PIN, 0);                //拉低引脚不充电
            LOGE(TAG, "CHARGEFULL!!!!!");
		    }
		else
		    {
		    charge_status = CHARGING;
            discharge_flag =false;
            charge_flag=true;
            //LOGE(TAG, "CHARGING!!!!!");
		    }
	    }
	else
	    {
	    charge_status = DISCHARGE;
        discharge_flag=true;
        //LOGE(TAG, "DISCHARGE!!!!!");
	    }

    if(discharge_flag&&charge_flag){                        //充满了然后移除充电后进入休眠
        LOGE(TAG, "CHARGEFULL AND DISCHARGE !!!!!");
        hal_hbn_init(&key_weakup_pin, 1);
        hal_hbn_enter(0);
    }
    }


//###############################蓝牙处理函数################################

static void ble_reve_cb(struct bt_conn *conn, const char *buf, u16_t len){    
    
    // blog_info_hexdump("data", (uint8_t *)buf, len);
    char cmd[30] = "";
    char data[15] = "";
    char ret_str[20] = "OK";

    do_ble_notify(conn, ret_str, strlen(ret_str));
    char *dp = strchr(buf,';');
    if(dp == NULL){
        return;
    }else{
        *dp = '\0';
    }
    LOGI(TAG, "ble_reve_buf: %s", buf);
    char *p = strchr(buf,':');

    if(p != NULL){
        strncpy(cmd, buf, p-buf);
        strncpy(data, p+1, len-(int)(p-buf)-2);
    }else{
        strcpy(cmd, buf);
        cmd[len-1] = '\0';
    }
    LOGI(TAG, "cmd: %s  data: %s", cmd, data);

    if(CDM_CMP(cmd, "Status")){
        LOGI(TAG, "get Status");
        do_ble_notify(conn, ret_str, strlen(ret_str));
    }else if(CDM_CMP(cmd, "Vibrate")){
        LOGI(TAG, "set Vibrate");
        vibrate = atoi(data);
        light_grade=vibrate;
       // motor_g_set_vibrate(vibrate);
    }else if(CDM_CMP(cmd, "Battery")){

        int32_t percent=get_battery();           //电池百分比=
        if(percent==100) {ret_str[0]='1';ret_str[1]='0';ret_str[2]='0';}
        else{
        int8_t shiwei= percent/10; int8_t gewei= percent%10;
        ret_str[0]='0';
        ret_str[1]=shiwei+'0';
        ret_str[2]=gewei+'0';
    }
        ret_str[3]=';';
        do_ble_notify(conn, ret_str, strlen(ret_str));

    }else if(CDM_CMP(cmd,"Light")){
        if(data[0]=='o'&&data[1]=='n'){ 
        light_flag=true;
        if(ble_connect) bl_gpio_output_set(LED_STATUS, 0);
        }
        if(data[0]=='o'&&data[1]=='f'&&data[2]=='f'){
        light_flag=false;
        }
    }else if(CDM_CMP(cmd,"PowerOff")){
        sleep_start();   
    }
    else if(CDM_CMP(cmd,"OTA")){         //蓝牙发送  OTA;   进入OTA
    LOGI(TAG, "OTA");
    ota_flag=true;
    flash_storage_init();
    wifi_init(wifi_event_handler);
    vTaskDelay(500 / portTICK_RATE_MS);
    wifi_setup_sta();
    ota_time= hal_timer_now_s();          //记录OTA开始的时间
    char ota_ret[20]="OTA_START";
    do_ble_notify(conn, ota_ret, strlen(ota_ret));
    }
     else if(CDM_CMP(cmd,"WIFI")){          //蓝牙配网指令： "WIFI:账号，密码;"
    LOGI(TAG, "SET WIFI ");
    user_ssid_t *wifi_info = flash_get_user_ssid_config();
    memset(wifi_info->ssid, 0, sizeof(wifi_info->ssid));
    memset(wifi_info->password, 0, sizeof(wifi_info->password));
    flash_ssid_config_write();
    char *p = strchr(data,',');
      if(p != NULL){
        strncpy(wifi_info->ssid, data, p-data);
        strncpy(wifi_info->password, p+1, len-(int)(p-data)-2);
        flash_ssid_config_write();
        char ret[20]="SET_WIFI";
        do_ble_notify(conn, ret, strlen(ret));
        do_ble_notify(conn, wifi_info->ssid, strlen(wifi_info->ssid));
        do_ble_notify(conn, wifi_info->password, strlen(wifi_info->password));
        
    LOGI(TAG,"saved SSID: %s, passwd: %s", wifi_info->ssid, wifi_info->password);
    }
    }
    vTaskDelay(100 / portTICK_RATE_MS);
    do_ble_notify(conn, ret_str, strlen(ret_str));
}


void sleep_task(void *arg){           //大于120S无震动，进入休眠模式
static int times=0;
while(1){
//LOGI(TAG, "start sleep");
if(Grade==0&&vibrate==0&&(charge_status == DISCHARGE)) times++;
else times=0;
if(ota_flag) times =0;
//LOGI(TAG, "times:%d",times);

while(times>120) {        
hal_hbn_init(&key_weakup_pin, 1);
hal_hbn_enter(0);}
while(ota_flag&&(hal_timer_now_s()-ota_time>300)){
hal_hbn_init(&key_weakup_pin, 1);
hal_hbn_enter(0);
}
vTaskDelay(1000 / portTICK_RATE_MS);
}

}

void main_task(void *arg){ 

LOGE(TAG, "main_task start");

    //wifi_init(wifi_event_handler);  //初始化
    //wifi_setup_sta();               //建立连接

    while(1){
        
        charge_detect();
        ble_light_task();//蓝牙灯光任务
        mada_mode();
        //get_battery();
        vTaskDelay(1000 / portTICK_RATE_MS);

    }
    vTaskDelete(NULL);
}

void user_main(void){

    ukey_init();
    ukey_add(KEY_POWER, key_event_cb);
    product_init();
    led_status_flash(800);
    int time= hal_timer_now_ms();
    while(hal_timer_now_ms()-time<200){bl_gpio_output_set(LED_POWER, 0);motor_g_set_vibrate(20);}   //开机0.2秒提醒操作
    bl_gpio_output_set(LED_POWER, 1);motor_g_set_vibrate(0);


    LOGI(TAG, "user_main_start");


    do_ble_init();

    do_ble_set_reve_cb(ble_reve_cb);
    do_ble_set_connect_cb(ble_connect_cb);

    adc_init();

    
    if (xTaskCreate(main_task, "main_task", 512, NULL, 6, NULL) != pdPASS) {
        LOGI(TAG, "xTaskCreate(main_task) failed");
    }
    if (xTaskCreate(light_task, "light_task", 512, NULL, 5, NULL) != pdPASS) {
        LOGI(TAG, "xTaskCreate(light_task) failed");
    }
    if (xTaskCreate(sleep_task, "sleep_task", 512, NULL, 4, NULL) != pdPASS) {
        LOGI(TAG, "xTaskCreate(sleep_task) failed");
    }

}