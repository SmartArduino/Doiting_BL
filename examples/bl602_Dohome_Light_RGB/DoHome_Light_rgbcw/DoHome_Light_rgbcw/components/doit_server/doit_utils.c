#include "ulog.h"

#include "lwip/sockets.h"

#include "app_config.h"
#include "ulog.h"


#if LOG_UTILS_EN
#define TAG             "utils"
#define LOGI            LOG_I
#define LOGE            LOG_E
#else
#define TAG ""
#define LOGI(...)
#define LOGE(...)
#endif

long map(const long x, const long in_min, const long in_max, const long out_min, const long out_max)
{
	return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

char *doit_strchr(char *str,char ch)//在str 字符串中找到 ch 字符第一次出现的位置并且返回出现位置的地址
{

	if(NULL == str){   //判断 str 字符串是否为空
		return NULL; 
	}

	while('\0'!=*str)
	{
	   if(ch==*str)
	   {
		return str;//因为参数str 为const类型所以必须返回值也是const
	   }
	   str++;
	}
   return NULL; 
}//找到字符就返回该字符地址，没找到返回零


char *doit_strrchr(char *str,char ch)
{
	if(NULL==str){   //判断 str 字符串是否为空
		return NULL; 
	}
	char *last = NULL;//定义一个字符指针赋值为空
	char *cur = doit_strchr(str,ch);//先调用doit_strchr()找一次
	while(cur != NULL)
	{
		last = cur;//存放第一次查找到的字符ch
		cur = doit_strchr(cur+1,ch);//从ch 之后一个字符开始向后查找直到最后一个
	 
	}
	return last;//最后一个找到就返回该字符地址，如果没找到就返回第一次doit_strchr()找到的，否则就是第一次也没找到就返回NULL
}

char *doit_strcat(char *dst, const char *src)
{
	char *p = dst;
	while (*p != '\0')p++;
	while (*src != '\0')*p++ = *src++;
	*p = '\0';
	return p;
}

unsigned long long doit_strtoul(const  char *ptr, char **end, int base)
{
	unsigned long long ret = 0;
	if (base > 36)
		goto out;
	while (*ptr) {
		int digit;
		if (*ptr >= '0' && *ptr <= '9' && *ptr < '0'  + base)
			digit = *ptr - '0';
		else if (*ptr >= 'A' && *ptr < 'A' + base - 10)
			digit = *ptr - 'A' + 10;
		else if (*ptr >= 'a' && *ptr < 'a' + base - 10)
			digit = *ptr - 'a' + 10;
		else
			break;
		ret *= base;
		ret += digit;
		ptr++;
	}
out:
	if (end)
		*end = (char *)ptr;
	return ret;
}

char mac_str_to_bin( char *str, uint8_t *mac)
{
	int i;
	char *s, *e = NULL;
	if ((mac == NULL) || (str == NULL)) {
		return 0;
	}
	// if (!check_macAddr(str)) {
	// 	return 0;
	// }
	s = (char *) str;
	for (i = 0; i < 6; ++i) {
		mac[i] = s ? doit_strtoul (s, &e, 16) : 0;
		if (s)
			s = (*e) ? e + 1 : e;
	}
	return 1;
}


char *mac_bin_to_str(uint8_t *mac, char *str)
{
	sprintf(str, "%02X:%02X:%02X:%02X:%02X:%02X", mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
	return str;
}

uint8_t str2ip(const char* str, void *ip)
{
    int i;
    const char * start;

    start = str;
    for (i = 0; i < 4; i++) {
        char c;
        int n = 0;
        while (1) {
            c = * start;
            start++;
            if (c >= '0' && c <= '9') {
                n *= 10;
                n += c - '0';
            }
            else if ((i < 3 && c == '.') || i == 3) {
                break;
            }
            else {
                return 0;
            }
        }
        if (n >= 256) {
            return 0;
        }
        ((uint8_t*)ip)[i] = n;
    }
    return 1;
}