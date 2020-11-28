/*
 * ----------------------------------------------------------------------------
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Martin d'Allens <martin.dallens@gmail.com> wrote this file. As long as you retain
 * this notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return.
 * ----------------------------------------------------------------------------
 */

#ifndef _DOIT_HTTP_H_
#define _DOIT_HTTP_H_

#define HTTP_STATUS_GENERIC_ERROR  -1   // In case of TCP or DNS error the callback is called with this status.
#define BUFFER_SIZE_MAX            5000 // Size of http responses that will cause an error.

typedef void (* http_callback)(char * response_body, int http_status, char * response_headers, int body_size);

typedef struct {
	char * method;
    char * hostname;
    char * path;
    // char * post_data;
    char * headers;
    char * content_type;
    char * buffer;
    int port;
    int buffer_size;
    // char secure;
    http_callback user_callback;
} request_args;

void doit_http_request(request_args *request);

#endif
