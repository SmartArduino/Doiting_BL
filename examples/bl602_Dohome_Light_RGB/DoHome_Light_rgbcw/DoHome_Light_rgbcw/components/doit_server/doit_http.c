
#include "doit_http.h"

#include "lwip/err.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include <lwip/netdb.h>

#include "doit_utils.h"
#include "doit_wifi.h"

#include "ulog.h"
#include "app_config.h"

#if LOG_HTTP_EN
#define TAG             "http"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif

#define LOG_TAG     TAG

static void* http_malloc(unsigned int size)
{
    return malloc(size);
}

static void http_free(void *buf)
{
    free(buf);
}

static char *http_itoa(int value)
{
    char *val_str;
    int tmp = value, len = 1;

    while ((tmp /= 10) > 0)
        len ++;

    val_str = (char *) http_malloc(len + 1);
    sprintf(val_str, "%d", value);

    return val_str;
}

static char *http_post_header(char *host, char *resource, char *type,
                              char *userheader, int data_len)
{
    char *len_str = http_itoa(data_len);

    char *header = (char *) http_malloc(strlen("POST ") + strlen(resource) +
                                        strlen(" HTTP/1.1\r\nHost: ") + strlen(host) +
                                        strlen("\r\nConnection:close") +
                                        strlen("\r\nContent-Type: ") + strlen(type) +
                                        strlen("\r\nContent-Length: ") + strlen(len_str) +
                                        strlen("\r\n\r\n") + 1);
    if (userheader == NULL) {
        sprintf(header, "POST %s HTTP/1.1\r\nHost: %s\r\nConnection:close\r\nContent-Type: %s\r\nContent-Length: %s\r\n\r\n", resource, host, type, len_str);
    } else {
        sprintf(header, "POST %s HTTP/1.1\r\nHost: %s\r\nConnection:close\r\nContent-Type: %s\r\n%s\r\nContent-Length: %s\r\n\r\n", resource, host, type, userheader, len_str);
    }
    http_free(len_str);

    return header;
}

static char *http_get_header(char *host, char *resource, char *userheader)
{
    char *header = (char *) http_malloc(strlen("GET ") + strlen(resource) + strlen(" HTTP/1.1\r\nHost: ") + strlen(host) + strlen("\r\nConnection:close") + strlen("\r\n\r\n") + 1);
    if (userheader == NULL) {
        sprintf(header, "GET %s HTTP/1.1\r\nHost: %s\r\nConnection:close\r\n\r\n", resource, host);
    } else {
        sprintf(header, "GET %s HTTP/1.1\r\nHost: %s\r\nConnection:close\r\n%s\r\n\r\n", resource, host, userheader);
    }

    return header;
}


void http_raw_request(request_args *request)
{
    struct hostent *server;
    struct sockaddr_in server_addr;
    int cnt = 0;
    int sockfd = -1;

    if(!wifi_get_connect_status()){
        return;
    }

    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) {
        LOGE(TAG, "[ERROR] Create socket failed");
        return;
    }

    LOGI(TAG, "sockfd: %d", sockfd);

    memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(request->port);

    while(1)
    {
        server = gethostbyname(request->hostname);
        if(server == NULL){
            LOGE(TAG, "gethostbyname cnt: %d", cnt+1);
            cnt++;
            if(cnt > 3){
                cnt = 0;   
                LOGI(TAG, "use default ip\r\n");
                char ip[4] = {115,28,78,23};
                if(str2ip(REMOTE_SERVER_IP, ip)){
                    memcpy(&server_addr.sin_addr.s_addr, ip, 4);
                    break;
                }else{
                    LOGE(TAG, "default ip error");
                    close(sockfd);
                    return;
                }
            }
        }else{
            cnt = 0;  
            memcpy(&server_addr.sin_addr.s_addr, server->h_addr, server->h_length);
            break;
        }
        vTaskDelay(1000 / portTICK_RATE_MS);
    }

    uint8_t sip[4];
    memcpy(sip, &server_addr.sin_addr.s_addr, 4);
    LOGI(TAG, "connectting server:%s(%d.%d.%d.%d)", request->hostname, sip[0], sip[1], sip[2], sip[3]);

    // set the socket in non-blocking
    unsigned long mode = 1;
    int result = ioctlsocket(sockfd, FIONBIO, &mode);
    if (result != 0) 
        LOGE(TAG, "ioctlsocket failed with error: %ld", result);

    // 超时时间  
    struct timeval tm;  
    tm.tv_sec  = 3;  
    tm.tv_usec = 0;  

    // 尝试去连接服务端  
    if (-1 != connect(sockfd, (struct sockaddr *)&server_addr, sizeof(server_addr)))  {  
        // 连接成功  
        LOGI(TAG, "connection is successful");
    }else  
    {  
        fd_set set;  
        FD_ZERO(&set);  
        FD_SET(sockfd, &set);  
  
        if (select(sockfd+1, NULL, &set, NULL, &tm) <= 0)  
        {  
            // 有错误(select错误或者超时)  
            LOGE(TAG, "select error or timeout");
            close(sockfd);
            return;

        }else  
        {  
            int error = -1;  
            socklen_t optLen = sizeof(int);  
            getsockopt(sockfd, SOL_SOCKET, SO_ERROR, (char*)&error, &optLen);   
              
            if (0 != error){  
                // 有错误  
                LOGE(TAG, "connection error");
                close(sockfd);
                return;
            }  
            else{  
                // 无错误  
                LOGI(TAG, "connection successful");
            }  
        }  
    }  

    // restart the socket mode
    mode = 0;
    result = ioctlsocket(sockfd, FIONBIO, &mode);
    if (result != 0){
        LOGI(TAG, "ioctlsocket failed with error: %ld", result);
    }


    if (request->method == NULL) {
        close(sockfd);
        return;
    }

    //Time out timer
    struct timeval timeout={3,0}; //3s
    setsockopt(sockfd,SOL_SOCKET,SO_SNDTIMEO,&timeout,sizeof(timeout));
    setsockopt(sockfd,SOL_SOCKET,SO_RCVTIMEO,&timeout,sizeof(timeout));

    // char *message = temp_buf;
    char *message = http_malloc(512);
    memset(message, 0, 512);

    int bytes = 0;
    char *http_header = NULL;
    if (strcmp(request->method, "GET") == 0) {
        // LOGI(TAG, "GET");

        http_header = http_get_header(request->hostname, request->path, NULL);
        sprintf( message, "%s", http_header);
        // LOGI(TAG, "Request:-----\n%s\n-----", message);

        int bytes = write(sockfd, message, strlen(message));
        if (bytes < 0){
            LOGE(TAG, "http get write message failed");
            http_free(message);
            http_free(http_header);
            close(sockfd);
            return;
        }

    } else if (strcmp(request->method, "POST") == 0) {
        // LOGI(TAG, "POST");
        http_header = http_post_header(request->hostname, request->path, request->content_type, NULL, request->buffer_size);
        sprintf( message, "%s", http_header);
        // LOGI(TAG, "Request:-----\n%s%s\n-----", message, request->buffer);

        bytes = write(sockfd, message, strlen(message));
        if (bytes < 0){
            LOGI(TAG, "http post write message failed");
            http_free(message);
            http_free(http_header);
            close(sockfd);
            return;
        }else{
            LOGI(TAG, "http post write message ok");
        }

        bytes = write(sockfd, request->buffer, request->buffer_size);
        if (bytes < 0){
            LOGI(TAG, "http post write buffer failed");
            http_free(message);
            http_free(http_header);
            close(sockfd);
            return;
        }else{
            LOGI(TAG, "http post write buffer ok");
        }

    }

    http_free(message);
    http_free(http_header);

    char *body = NULL;
    int http_status = -1;
    int body_size = 0;
    char *response = http_malloc(512);

    memset(response, 0, 512);
 
    if (strcmp(request->method, "GET") == 0) {

        bytes = read(sockfd, response, 512-1);
        close(sockfd);

        if (bytes <= 0) {
            LOGE(TAG, "receive data failed");
            http_free(response);
            return;
        }

        const char * version10 = "HTTP/1.0 ";
        const char * version11 = "HTTP/1.1 ";

        if (strncmp(response, version10, strlen(version10)) != 0
                && strncmp(response, version11, strlen(version11)) != 0) {
            LOGE(TAG, "Invalid version response: %s", response);
        }
        else {
            http_status = atoi(response + strlen(version10));
            /* find body and zero terminate headers */
            body = (char *)strstr(response, "\r\n\r\n") + 2;
            *body++ = '\0';
            *body++ = '\0';

            body_size = bytes - (body - response);
        }

    }else{
        close(sockfd);
        http_status = 200;
    }

    if (request->user_callback != NULL) { // Callback is optional.
        request->user_callback(body, http_status, response, body_size);
    }

    http_free(response);
}

void doit_http_request(request_args *request){
    http_raw_request(request);
}



