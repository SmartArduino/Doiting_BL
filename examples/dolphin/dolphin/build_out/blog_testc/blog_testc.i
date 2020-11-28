# 1 "/b-l/bl_iot_sdk_new/components/stage/blog_testc/blog_testc.c"
# 1 "/b-l/dolphin/build_out/blog_testc//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/b-l/bl_iot_sdk_new/components/stage/blog_testc/blog_testc.c"
# 30 "/b-l/bl_iot_sdk_new/components/stage/blog_testc/blog_testc.c"
# 1 "/b-l/bl_iot_sdk_new/components/stage/blog_testc/blog_testc.h" 1
# 33 "/b-l/bl_iot_sdk_new/components/stage/blog_testc/blog_testc.h"
int blog_testc_init(void);

int blog_testc1_init(void);
int blog_testc2_init(void);
int blog_testc3_init(void);
int blog_testc4_init(void);
# 31 "/b-l/bl_iot_sdk_new/components/stage/blog_testc/blog_testc.c" 2

int blog_testc_init(void)
{
    blog_testc1_init();
    blog_testc2_init();
    blog_testc3_init();
    blog_testc4_init();

    return 0;
}
