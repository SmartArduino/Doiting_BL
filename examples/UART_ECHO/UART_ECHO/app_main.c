#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <vfs.h>
#include <utils_log.h>

#include "ulog.h"          //串口打印相关定义
#include "bl_gpio.h"    

#if 1
#define TAG            "app_main"
#define LOGI           LOG_I
#define LOGE           LOG_E
#else
#define TAG            ""
#define LOGI(...)
#define LOGE(...)
#endif
#define CDM_CMP(str1, str2)     (strcmp(str1, str2)==0)
#define LED 1
static void uart_echo_task(void *arg)
{
    int length = 0, total = 0;
    uint8_t buf_recv[128];
    uint8_t *pbuf = buf_recv;
    const char *name = arg;
    const char *send_recv_log = "hello doit";

    int fd = aos_open(name, 0);
    printf("%s-> fd = %d\r\n", name, fd);
    if (fd < 0) {
        return;
    }
    memset(buf_recv, 0, sizeof(buf_recv));

   aos_write(fd, send_recv_log, strlen(send_recv_log));


    vTaskDelay(1000);
    length = 0;

    while (1) {

        length = aos_read(fd, pbuf , strlen(send_recv_log));
        
        if (length==0) {
            continue;
        }

            
            printf("recvbuff:%s\r\n", send_recv_log);

            aos_write(fd, send_recv_log, strlen(send_recv_log));


            if(CDM_CMP(send_recv_log,"on")) bl_gpio_output_set(LED, 1);
            if(CDM_CMP(send_recv_log,"off")) bl_gpio_output_set(LED, 0);
            break;

        
        vTaskDelay(10);
    }
    aos_close(fd);
}
void user_main(void){

bl_gpio_enable_output(LED, 0, 0);                                           //初始化GPIO
aos_task_new("uart_echo", uart_echo_task, "/dev/ttyS1", 2048);

}