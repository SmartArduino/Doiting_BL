#ifndef _DOIT_LOG_H_
#define _DOIT_LOG_H_

#include <blog.h>
#include "app_config.h"

#define ULOG_INFO(tag, format, ... ) do {\
    bl_printk("\x1b[32m[%10u][%s] " format "\x1b[0m\r\n", \
        (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), \
        tag, \
        ##__VA_ARGS__); \
} while(0)

#define ULOG_ERROR(tag, format, ... ) do {\
    bl_printk("\x1b[31m[%10u][%s %s:%4d] " format "\x1b[0m\r\n", \
        (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()),\
        tag,  __FILENAME__, __LINE__, \
        ##__VA_ARGS__); \
} while(0)


#if USE_UART_LOG
#define LOG_I( tag, format, ... ) ULOG_INFO(tag, format, ##__VA_ARGS__)
#define LOG_E( tag, format, ... ) ULOG_ERROR(tag, format, ##__VA_ARGS__)
#define LOG_UDP_I(...)
#define LOG_UDP_E(...) 
#else
#define LOG_I(...)
#define LOG_E(...) 
#define LOG_UDP_I(... ) 
#define LOG_UDP_E(... )
#endif

#endif