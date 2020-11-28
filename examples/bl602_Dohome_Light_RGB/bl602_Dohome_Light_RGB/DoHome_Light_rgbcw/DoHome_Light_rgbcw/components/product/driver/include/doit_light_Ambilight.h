#ifndef _LED_AMBILIGHT_H_
#define _LED_AMBILIGHT_H_

#include <stdio.h>
#include <string.h>


typedef enum {
	STRIP_MODE_INIT_MODE 			= 0,						// 0 无效模式
	STRIP_MODE_SEVEN_GRADIENT 		= 1,						// 1 七彩渐变
	STRIP_MODE_RED_GRADIENT 		= 2,						// 2 红色渐变
	STRIP_MODE_GREEN_GRADIENT		= 3,						// 3 绿色渐变
	STRIP_MODE_BLUE_GRADIENT		= 4,						// 4 蓝色渐变
	STRIP_MODE_YELLOW_GRADIENT		= 5,						// 5 黄色渐变
	STRIP_MODE_CYAN_GRADIENT		= 6,						// 6 青色渐变
	STRIP_MODE_PURPLE_GRADIENT		= 7,						// 7 紫色渐变
	STRIP_MODE_WHITE_GRADIENT		= 8,						// 8 白色渐变
	STRIP_MODE_RED_STROBE			= 9,						// 9 红色频闪
	STRIP_MODE_GREEN_STROBE			= 10,						// 10 绿色频闪
	STRIP_MODE_BLUE_STROBE			= 11,						// 11 蓝色频闪
	STRIP_MODE_YELLOW_STROBE		= 12,						// 12 黄色频闪
	STRIP_MODE_RG_GRADIENT 			= 13,						// 13 红绿渐变
	STRIP_MODE_RB_GRADIENT 			= 14,						// 14 红蓝渐变
	STRIP_MODE_GB_GRADIENT 			= 15,						// 15 绿蓝渐变
	STRIP_MODE_RG_JUMP 				= 16,						// 16 红绿跳变
	STRIP_MODE_RB_JUMP 				= 17,						// 17 红蓝跳变
	STRIP_MODE_GB_JUMP 				= 18,						// 18 绿蓝跳变
	STRIP_MODE_RG_STROBE 			= 19,						// 19 红绿频闪
	STRIP_MODE_RB_STROBE 			= 20,						// 20 红蓝频闪
	STRIP_MODE_GB_STROBE 			= 21,						// 21 绿蓝频闪
	STRIP_MODE_SEVEN_JUMP 			= 22,						// 22 七彩跳变
	STRIP_MODE_SEVEN_STROBE 		= 23,						// 23七彩频闪
	STRIP_MODE_WHITE_STROBE 		= 24,						// 24 白色频闪
	STRIP_MODE_RGB_GRADIENT 		= 25,						// 25 红绿蓝三色渐变
	STRIP_MODE_RGB_JUMP 			= 26,						// 26 红绿蓝三色跳变
	STRIP_MODE_RGB_STROBE 			= 27,						// 27 红绿蓝三色频闪
	
	STRIP_MODE_UNKNOWN_CMD,
} led_effect_command;

void ambilight_init(void);
void ambilight_task(void);
void set_ambilight_mode(char mode);

#endif