#ifndef _DOIT_UTILS_H_
#define _DOIT_UTILS_H_

#include <string.h>
#include <stdint.h>

long map(const long x, const long in_min, const long in_max, const long out_min, const long out_max);

char *doit_strchr(char *str,char ch);

char *doit_strrchr(char *str,char ch);

char *doit_strcat(char *dst, const char *src);

unsigned long long doit_strtoul(const  char *ptr, char **end, int base);

char mac_str_to_bin( char *str, uint8_t *mac);

char *mac_bin_to_str(uint8_t *mac, char *str);

uint8_t str2ip(const char* str, void *ip);

#endif

