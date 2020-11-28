#include "doit_system.h"

#include <FreeRTOS.h>
#include <task.h>

#include <hal_sys.h>

#include "app_config.h"


#if LOG_SYSTEM_EN
#define TAG             "system"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif

#define LOG_TAG     TAG

static void system_reset_task(void *pvParameters)
{
	vTaskDelay(2000 / portTICK_RATE_MS);
	LOGI(TAG, "system restart...");
    hal_sys_reset();
}

/*
    启动延时重启任务
 */
#define    RESET_TASK_SIZE      256
#define    RESET_TASK_PIO       5
void system_delay_reset(void)
{
    
    LOGI(TAG, "system_delay_reset.");
	xTaskCreate(system_reset_task, "reset_task", RESET_TASK_SIZE, NULL, RESET_TASK_PIO, NULL);
	
}


static void system_reboot_task(void *pvParameters)
{
	vTaskDelay(2000 / portTICK_RATE_MS);
	LOGI(TAG, "system restart...");
    hal_reboot();
}

void system_delay_reboot(void)
{
    LOGI(TAG, "system_reboot_task.");
	xTaskCreate(system_reboot_task, "reboot_task", RESET_TASK_SIZE, NULL, RESET_TASK_PIO, NULL);
	
}