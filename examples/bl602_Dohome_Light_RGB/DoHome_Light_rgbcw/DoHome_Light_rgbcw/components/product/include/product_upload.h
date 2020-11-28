#ifndef _APP_PRODUCT_UPLOAD_H_
#define _APP_PRODUCT_UPLOAD_H_

#include <stdbool.h>

#define PRODUCT_UPLOAD_DOHOME				(1<<0)

void product_upload_status(int server);
void product_delay_upload_status(int server);

void product_status_upload_init(void);

#endif