#include "doit_tcp_config.h"

#include <FreeRTOS.h>
#include <task.h>

#include "lwip/err.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include <lwip/netdb.h>
#include "cJSON.h"

#include "doit_system.h"
#include "doit_dohome_protocol.h"

#include "ulog.h"
#include "app_config.h"

#if LOG_TCP_CONFIG_EN
#define TAG             "tcp_server"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif

#define LOG_TAG     	TAG

TaskHandle_t config_task_handle = NULL;

#define MAX_SOCKETS     128
#define SELECT_TIMEOUT  10
#define SERVER_PORT     5555
#define LISTEN_QLEN     2


static void parse_tcp_recv_data(int connect_socket, char *data, int len)
{
	char ret_buf[256];
	int res = parse_dohome_protocol(data, len, ret_buf);
	if (res == 0) write(connect_socket, ret_buf, strlen(ret_buf));
}

// int listen_server(int port)
// {
//     //打开网卡文件，获得文件描述符
//     int sock = socket(AF_INET,SOCK_STREAM,0);
//     //文件描述符获取失败
//     if(sock < 0)
//     {
//         LOGE(TAG, "socket error");
//         exit(2);
//     }

//     int opt = 1;
//     setsockopt(sock,SOL_SOCKET,SO_REUSEADDR,&opt,sizeof(opt));
//     struct sockaddr_in local;
//     local.sin_family = AF_INET;
//     local.sin_addr.s_addr = INADDR_ANY;
//     local.sin_port = htons(port);
//     //sock_len_t = sizeof(local);
    
//     //对文件描述符绑定固定的IP地址和端口号
//     if(bind(sock,(struct sockaddr*)&local,sizeof(local)) < 0)
//     {
//         LOGE(TAG, "bind error");
//         exit(3);
//     }

//     //获得监听套接字
//     if(listen(sock, LISTEN_QLEN) < 0)
//     {
//         LOGE(TAG, "listen error");
//         exit(4);
//     }
//     //返回获取的监听套接字
//     return sock;
// }

// //初始化数组
// void InitArr(int arr[],int size)
// {
//     //因为文件描述符均是大于等于0的数字
//     //所以将数组全部初始化为-1
//     int index = 0;
//     for(;index < size;index++)
//     {
//         arr[index] = -1;
//     }
//     return;
// }

// //将关心的文件描述符集添加保存到数组中
// void AddArr(int arr[],int size,int fd)
// {
//     //遍历整个数组，遇到-1，就将该文件描述符添加在该处
//     int index = 0;
//     for(;index < size;index++)
//     {
//         if(arr[index] == -1)
//         {
//             arr[index] = fd;
//             return;
//         }
//     }
//     //如果循环结束还没有找到-1.此时说明数组全部被占满
//     //也就是说文件描述符集所能表示的文件描述符以达到上限
//     LOGI(TAG, "fd_set full\n");
//     return;
// }
// //根据数组向文件描述符集中添加文件描述符
// //同时得到文件描述集中的最大文件描述符
// int AddFd(int arr[],int size,fd_set* readfds)
// {
//     // LOGI(TAG, "care fd:");
//     //遍历数组，遇到一个不是-1的数组元素，将该元素表示的文件描述符添加进文件描述符集中
//     int index = 0;
//     int max = -1;
//     for(;index < size;index++)
//     {
//         if(arr[index] != -1)
//         {
//             LOGI(TAG, " %d ",arr[index]);
//             FD_SET(arr[index],readfds);
//             if(arr[index] > max)
//             {
//                 max = arr[index];
//             }
//         }
//     }
//     LOGI(TAG, "\n");
//     return max;
// }
// //此时提供接受连接服务
// void Accept_Server(int arr[],int size,int listen_fd)
// {
//     struct sockaddr_in client;
//     socklen_t len = sizeof(client);
//     int connfd = accept(listen_fd,(struct sockaddr*)&client,&len);
//     if(connfd < 0)
//     {
//         LOGE(TAG, "accept error");
//         //continue;
//     }
//     LOGI(TAG, "get a new connect,[%s:%d]\n",inet_ntoa(client.sin_addr),ntohs(client.sin_port));
//     //获得新的文件描述符之后，将该文件描述符添加进数组中，以供下一次关心该文件描述符
//     AddArr(arr,size,connfd);
// }
// //将文件描述符从数组中删除
// void DelFdInArr(int arr[],int size,int fd)
// {
//     //遍历整个数组，找到数组元素为要删除文件描述符的下标
//     //然后将该下标处的元素置为-1
//     int index = 0;
//     for(;index < size;index++)
//     {
//         if(arr[index] == fd)
//         {
//             arr[index] = -1;
//             return;
//         }
//     }
//     return;
// }
// //此时提供读取数据的服务
// void Read_Server(int arr[],int size,int fd)
// {
//     char buf[1024];

//     ssize_t s = read(fd,buf,sizeof(buf) - 1);
//     if(s > 0)
//     {
//         buf[s - 1] = 0;
//         LOGI(TAG, "client %d:%s\n",fd,buf);
// 		parse_tcp_recv_data(fd, buf, s);
//     }
//     else if(s == 0)
//     {
//         LOGI(TAG, "client %d quit\n",fd);
//         close(fd);
//         //将文件描述符从数组中删除
//         DelFdInArr(arr,size,fd);
//     }
//     else
//     {
//         LOGI(TAG, "read error");
//         close(fd);
//         DelFdInArr(arr,size,fd);
//     }
//     return;
// }
// //在该函数中根据数组中记录的所关心的文件描述符集先判断哪个文件描述符就绪
// //如果是监听文件描述符，则调用accept接受新连接
// //如果是普通文件描述符，则调用read读取数据
// void server_fd(int arr[],int size,fd_set* readfds)
// {
//     //首先遍历数组，找到不是-1的文件描述符
//     //然后在文件描述符集中判断该文件描述符是否存在
//     //因为监听套接字被最先设定，所以一定存放在数组下标为0的位置
//     //下标为0的数组元素出现在文件描述符集中，一定是监听套接字
//     int index = 0;
//     for(;index < size;index++)
//     {
//         //该文件描述符为所关心的文件描述符
//         if(arr[index] != -1 && FD_ISSET(arr[index],readfds))
//         {
//             //该文件描述符是监听套接字
//             if(index == 0)
//             {
//                 //如果监听套接字上读就绪
//                 //此时提供接受连接服务
//                 Accept_Server(arr,size,arr[index]);
//             }
//             else
//             {
//                 //此时关心的是普通文件描述符
//                 //此时提供读取数据的服务
//                 Read_Server(arr,size,arr[index]);
//             }
//         }
//     }
// }
// void tcp_server_task(void *pvParameters)
// {
   
//     //创建文件描述符，将该文件描述符绑定，监听，得到监听套接字
//     int listen_fd = listen_server(SERVER_PORT);
//     LOGI(TAG, "bind and listen success\n");

//     //定义只读文件描述符集
//     fd_set readfds;
    
//     //定义数组将关心的文件描述符集保存在数组中
//     int arr[MAX_SOCKETS];
//     //初始化数组
//     InitArr(arr,MAX_SOCKETS);

//     //将关心的文件描述符集添加保存到数组中
//     //首先将监听套接字添加进去
//     AddArr(arr,MAX_SOCKETS,listen_fd);

//     while(1)
//     {
//         //清空文件描述符集
//         FD_ZERO(&readfds);

//         //根据数组向文件描述符集中添加文件描述符
//         //同时得到文件描述集中的最大文件描述符
//         int max = AddFd(arr,MAX_SOCKETS,&readfds);

//         //设定时间
//         struct timeval timeout = {SELECT_TIMEOUT,0};

//         //开始调用select等待所关心的文件描述符集
//         int ret = select(max + 1,&readfds,NULL,NULL,&timeout);
        
//         //此时关心的文件描述符集中至少有一个文件描述符读就绪
//         if(ret > 0)
//         {
//             //在该函数中根据数组中记录的所关心的文件描述符集先判断哪个文件描述符就绪
//             //如果是监听文件描述符，则调用accept接受新连接
//             //如果是普通文件描述符，则调用read读取数据
//             server_fd(arr,MAX_SOCKETS,&readfds);
//         }
//         else if(ret == 0)
//         {
//             //此时表示超时返回，此时没有文件描述符发生读就绪
//             // LOGI(TAG, "timeout");
//         }
//         else
//         {
//             //此时，select调用失败
//             LOGE(TAG, "select error");
//             continue;
//         }
//     }
// 	vTaskDelay(10 / portTICK_RATE_MS);
// }


static void tcp_server_task(void *arg)
{
	int max_socket_fd = -1;

	struct sockaddr_in server_addr;
	int server_fd = -1;
	int socket_used[MAX_SOCKETS];

	LOGI(TAG, "server socket....,port=%d", SERVER_PORT);

	memset(socket_used, 0, sizeof(socket_used));

	if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) >= 0) {
		server_addr.sin_family = AF_INET;
		server_addr.sin_port = htons(TCP_SRV_PORT);
		server_addr.sin_addr.s_addr = INADDR_ANY;

		if (bind(server_fd, (struct sockaddr *) &server_addr, sizeof(server_addr)) != 0) {
			LOGE(TAG, "bind error");
			goto exit;
		}

		if (listen(server_fd, LISTEN_QLEN) != 0) {
			LOGE(TAG, "listen error");
			goto exit;
		}

		socket_used[server_fd] = 1;

		if (server_fd > max_socket_fd)
			max_socket_fd = server_fd;
	}
	else {
		LOGE(TAG, "socket error");
		goto exit;
	}

	while (1) {
		int socket_fd;
		char buf[256];
		fd_set read_fds;
		struct timeval timeout;

		FD_ZERO(&read_fds);
		timeout.tv_sec = SELECT_TIMEOUT;
		timeout.tv_usec = 0;

		for (socket_fd = 0; socket_fd < MAX_SOCKETS; socket_fd ++)
			if (socket_used[socket_fd])
				FD_SET(socket_fd, &read_fds);

		if (select(max_socket_fd + 1, &read_fds, NULL, NULL, &timeout)) {
			for (socket_fd = 0; socket_fd < MAX_SOCKETS; socket_fd ++) {
				if (socket_used[socket_fd] && FD_ISSET(socket_fd, &read_fds)) {
					if (socket_fd == server_fd) {
						struct sockaddr_in client_addr;
						unsigned int client_addr_size = sizeof(client_addr);
						int fd = accept(server_fd, (struct sockaddr *) &client_addr, (socklen_t *)&client_addr_size);

						if (fd >= 0) {
							LOGI(TAG, "accept socket fd(%d)", fd);
							socket_used[fd] = 1;

							if (fd > max_socket_fd)
								max_socket_fd = fd;
						}
						else {
							LOGE(TAG, "accept error");
						}
					}
					else {

						int read_size = read(socket_fd, buf, sizeof(buf));
						buf[read_size] = 0;
						
						if (read_size > 0) {
							parse_tcp_recv_data(socket_fd, buf, read_size);
						}
						else {
							LOGI(TAG, "socket fd(%d) disconnected", socket_fd);
							socket_used[socket_fd] = 0;
							close(socket_fd);
						}
					}
				}
			}
		}
		else {
			// LOGI(TAG, "TCP server: no data in %d seconds", SELECT_TIMEOUT);
		}
		vTaskDelay(10 / portTICK_RATE_MS);
	}

exit:
	if (server_fd >= 0)
		close(server_fd);
	vTaskDelete(NULL);
	config_task_handle = NULL;
}

#define    CONFIG_TASK_SIZE      1024
#define    CONFIG_TASK_PIO       5
void start_tcp_config(void)
{
	LOGI(TAG, "start_tcp_server.");
	if(!config_task_handle){
		xTaskCreate(tcp_server_task, "tcp_server_task", CONFIG_TASK_SIZE, NULL, CONFIG_TASK_PIO, &config_task_handle);
	}
}