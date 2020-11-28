#ifndef _DOIT_UPLOAD_H_
#define _DOIT_UPLOAD_H_

#include "stdbool.h"

void upload_reset_ext(void);
void upload_delay_ext(void);

bool dohome_http_post(char *msg);

void doit_status_upload_init(void);

#endif