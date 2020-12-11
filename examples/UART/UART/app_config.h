#ifndef _APP_CONFIG_H_
#define _APP_CONFIG_H_

#include <string.h>

/*
 * Log config
*/
#define USE_UART_LOG	    1
#define LOG_COLOR_ENABLE    0
#define USE_UDP_LOG         0

#if USE_UART_LOG
#define LOG_MIAN_EN       1
#define LOG_DO_EN         1
#define LOG_KEY_EN        1
#define LOG_PRODUCT_EN    1
#endif



#endif /*_APP_CONFIG_H_*/