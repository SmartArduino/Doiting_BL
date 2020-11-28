# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
# 1 "/b-l/DoHome_Light_rgbcw/build_out/product//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"

# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_driver.h" 1







# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 1 3 4
# 11 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 3 4
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 1 3 4
# 34 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 3 4

# 34 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 2 3 4
# 9 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_driver.h" 2


# 10 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_driver.h"
typedef struct {
 int16_t blue;
 int16_t green;
 int16_t red;
 int16_t white;
 int16_t yellow;
 uint8_t on;
} rgb_pixel_t;

typedef void (*doit_post_cb_t)(void);







int update_config_upload();
int get_brightness(int r, int g, int b, int w);

char get_led_cfg_mode();
void set_light_work_mode(char mode);
void init_led_cfg_mode();

char is_color_zero(rgb_pixel_t color);

void led_load_saved_color();
void led_load_saved_color2();

void set_led_smoothing(rgb_pixel_t rgb);

void send_light_data(int r, int g, int b, int w, int y,int t);

int send_light_onoff(char on);
void led_rgb_set_off();

void start_led_change(rgb_pixel_t rgb, int t);

void send_light_data_pwm(rgb_pixel_t rgb);
void send_light_data_pwm_off(rgb_pixel_t rgb, char save);
void send_light_data_pwm_map(rgb_pixel_t rgb, char save);

void dohome_reg_delay_post_cb(doit_post_cb_t user_delay_post_cb);
void dohome_reg_post_cb(doit_post_cb_t user_post_cb);

int delay_update_config_upload(void);

void light_init();
# 3 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2

# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 29 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 10 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 1 3
# 14 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_newlib_version.h" 1 3
# 15 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 2 3
# 11 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 1 3



# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 5 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/features.h" 1 3
# 6 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 12 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 30 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 45 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 1 3
# 41 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3

# 41 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 46 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3

# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 216 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 48 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 36 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 149 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 328 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int wchar_t;
# 37 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3



# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 1 3 4
# 40 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 60 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 13 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 14 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 15 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 24 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 357 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 1 3
# 28 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 16 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 1 3
# 11 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
typedef _LOCK_RECURSIVE_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 98 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  _ssize_t (*_read) (struct _reent *, void *,
        char *, int);
  _ssize_t (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 292 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};
# 819 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 61 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 1 3
# 28 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;






# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 1 3
# 20 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 3
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 47 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3


# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 1 3





# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_endian.h" 1 3
# 7 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 2 3
# 50 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 1 3
# 14 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 1 3
# 41 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 15 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 1 3
# 35 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef __int_least64_t time_t;
# 52 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 1 3
# 38 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 1 3
# 45 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 2 3
# 58 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 34 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef unsigned long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 60 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3


int select (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 51 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3




typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;



typedef __uintptr_t u_register_t;






typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;







typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;
# 119 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 157 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;
# 220 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __int64_t sbintime_t;


# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 1 3
# 23 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 1 3
# 48 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
struct sched_param {
  int sched_priority;
# 61 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
};
# 24 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 2 3
# 32 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_t;
# 61 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;





  int detachstate;
} pthread_attr_t;
# 154 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 168 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
  int recursive;
} pthread_mutexattr_t;






typedef __uint32_t pthread_cond_t;



typedef struct {
  int is_initialized;
  clock_t clock;



} pthread_condattr_t;



typedef __uint32_t pthread_key_t;

typedef struct {
  int is_initialized;
  int init_executed;
} pthread_once_t;
# 224 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/types.h" 1 3
# 225 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 62 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stdio.h" 1 3
# 80 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 181 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
char * ctermid (char *);




FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 257 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int fseeko (FILE *, off_t, int);
off_t ftello (FILE *);







int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
# 284 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int asiprintf (char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
char * asniprintf (char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));

int diprintf (int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

int fiprintf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fiscanf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int iprintf (const char *, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int iscanf (const char *, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int siprintf (char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int siscanf (const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int sniprintf (char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vasiprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vdiprintf (int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiprintf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiscanf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int viprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int viscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsiprintf (char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vsiscanf (const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vsniprintf (char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
# 339 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 374 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 396 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void *restrict , size_t _size, size_t _n, FILE *);
# 577 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 601 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE *funopen (const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
FILE *_funopen_r (struct _reent *, const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
# 687 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 797 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3

# 5 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 35 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 56 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 74 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/platform.h" 1
# 127 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/platform.h"

# 127 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/platform.h"
unsigned long get_cpu_freq(void);
unsigned long get_timer_freq(void);
uint64_t get_timer_value(void);
# 75 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 2
# 149 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
void vAssertCalled( void );
# 57 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/projdefs.h" 1
# 35 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 60 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h" 1
# 45 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/deprecated_definitions.h" 1
# 46 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h" 2






# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h" 1
# 62 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
typedef uint32_t StackType_t;
typedef int32_t BaseType_t;
typedef uint32_t UBaseType_t;
typedef uint32_t TickType_t;
# 84 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern BaseType_t TrapNetCounter;
extern void vTaskSwitchContext( void );
# 94 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskEnterCritical( void );
extern void vTaskExitCritical( void );
# 149 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
inline __attribute__(( always_inline)) static BaseType_t xPortIsInsideInterrupt( void )
{
    return TrapNetCounter ? 1 : 0;
}
# 53 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h" 2
# 99 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/mpu_wrappers.h" 1
# 100 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h" 2
# 117 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
  StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;




typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 139 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 63 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 1044 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 4 ];



};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{



 UBaseType_t uxDummy2;
 void *pvDummy3;
 StaticMiniListItem_t xDummy4;



} StaticList_t;
# 1095 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;



 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 16 ) ];




  UBaseType_t uxDummy9;


  UBaseType_t uxDummy10[ 2 ];


  UBaseType_t uxDummy12[ 2 ];
# 1130 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;


  uint8_t uxDummy20;
# 1143 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
} StaticTask_t;
# 1159 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];
 uint8_t ucDummy5[ 2 ];


  uint8_t ucDummy6;







  UBaseType_t uxDummy8;
  uint8_t ucDummy9;


} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1203 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;


  UBaseType_t uxDummy3;



   uint8_t ucDummy4;


} StaticEventGroup_t;
# 1232 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 void *pvDummy5;
 TaskFunction_t pvDummy6;

  UBaseType_t uxDummy7;

 uint8_t ucDummy8;

} StaticTimer_t;
# 1260 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;

  UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 6 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h" 1
# 38 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h" 1
# 36 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h" 1
# 139 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
struct xLIST;
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 struct xLIST * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;

struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;




typedef struct xLIST
{

 volatile UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;
# 345 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h" 2
# 69 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
struct tskTaskControlBlock;
typedef struct tskTaskControlBlock* TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted,
 eInvalid
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint16_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;



typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint16_t usStackHighWaterMark;
} TaskStatus_t;


typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;
# 330 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 446 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
 TaskHandle_t xTaskCreateStatic( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         StackType_t * const puxStackBuffer,
         StaticTask_t * const pxTaskBuffer ) ;
# 665 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 706 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 758 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 817 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 842 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 889 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 915 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 971 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1013 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1064 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1113 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1142 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1175 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskStartScheduler( void ) ;
# 1231 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskEndScheduler( void ) ;
# 1282 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspendAll( void ) ;
# 1336 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1351 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCount( void ) ;
BaseType_t xTaskGetTickCount2( TickType_t *ticks, BaseType_t *overflow ) ;
# 1368 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1382 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1395 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1411 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1438 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1465 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;
# 1529 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1538 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1637 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
# 1684 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1738 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1768 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetIdleRunTimeCounter( void ) ;
# 1849 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1940 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2017 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2118 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2187 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2203 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2224 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2257 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2271 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2297 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2308 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2364 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2385 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
void vTaskStepTickSafe( const TickType_t xTicksToJump ) ;
# 2402 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 39 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h" 2
# 76 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
struct tmrTimerControl;
typedef struct tmrTimerControl * TimerHandle_t;




typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );





typedef void (*PendedFunction_t)( void *, uint32_t );
# 228 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
 TimerHandle_t xTimerCreate( const char * const pcTimerName,
        const TickType_t xTimerPeriodInTicks,
        const UBaseType_t uxAutoReload,
        void * const pvTimerID,
        TimerCallbackFunction_t pxCallbackFunction ) ;
# 358 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
 TimerHandle_t xTimerCreateStatic( const char * const pcTimerName,
          const TickType_t xTimerPeriodInTicks,
          const UBaseType_t uxAutoReload,
          void * const pvTimerID,
          TimerCallbackFunction_t pxCallbackFunction,
          StaticTimer_t *pxTimerBuffer ) ;
# 386 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
void *pvTimerGetTimerID( const TimerHandle_t xTimer ) ;
# 407 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID ) ;
# 444 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;







TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;
# 1187 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 1221 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait ) ;
# 1232 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
const char * pcTimerGetName( TimerHandle_t xTimer ) ;
# 1249 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
void vTimerSetReloadMode( TimerHandle_t xTimer, const UBaseType_t uxAutoReload ) ;
# 1260 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;
# 1275 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;





BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) ;


 void vTimerSetTimerNumber( TimerHandle_t xTimer, UBaseType_t uxTimerNumber ) ;
 UBaseType_t uxTimerGetTimerNumber( TimerHandle_t xTimer ) ;
# 7 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/semphr.h" 1
# 35 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/semphr.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h" 1
# 47 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
struct QueueDefinition;
typedef struct QueueDefinition * QueueHandle_t;






typedef struct QueueDefinition * QueueSetHandle_t;






typedef struct QueueDefinition * QueueSetMemberHandle_t;
# 650 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 744 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 777 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 868 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 883 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 900 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 914 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1295 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1385 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;





BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1404 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
TaskHandle_t xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
TaskHandle_t xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t xMutex ) ;
# 1458 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
 void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcQueueName ) ;
# 1472 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
 void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;
# 1487 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
 const char *pcQueueGetName( QueueHandle_t xQueue ) ;
# 1496 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1505 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
 QueueHandle_t xQueueGenericCreateStatic( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, StaticQueue_t *pxStaticQueue, const uint8_t ucQueueType ) ;
# 1556 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1580 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1599 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1635 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;


void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 36 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 8 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h" 1
# 9 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2

# 1 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h" 1
# 34 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
# 1 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h" 1
# 36 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 37 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h" 2

struct utils_list_hdr
{
    struct utils_list_hdr *next;
};

struct utils_list
{

    struct utils_list_hdr *first;

    struct utils_list_hdr *last;
};
# 62 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_init(struct utils_list *list);
# 75 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_pool_init(struct utils_list *list, void *pool, size_t elmt_size, unsigned int elmt_cnt, void *default_value);
# 85 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_push_back(struct utils_list *list,
                       struct utils_list_hdr *list_hdr);
# 96 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_push_front(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 106 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
struct utils_list_hdr *utils_list_pop_front(struct utils_list *list);
# 119 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_extract(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 131 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
int utils_list_find(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 148 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_insert(struct utils_list * const list, struct utils_list_hdr * const element,
        int (*cmp)(struct utils_list_hdr const *elementA,
        struct utils_list_hdr const *elementB));
# 166 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_insert_after(struct utils_list * const list, struct utils_list_hdr * const prev_element, struct utils_list_hdr * const element);
# 182 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_insert_before(struct utils_list * const list, struct utils_list_hdr * const next_element, struct utils_list_hdr * const element);
# 194 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_concat(struct utils_list *list1, struct utils_list *list2);
# 210 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_remove(struct utils_list *list, struct utils_list_hdr *prev_element, struct utils_list_hdr *element);
# 220 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
static inline int utils_list_is_empty(const struct utils_list *const list)
{
    return (
# 222 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h" 3 4
           ((void *)0) 
# 222 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
                == list->first);
}
# 234 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
unsigned int utils_list_cnt(const struct utils_list *const list);
# 245 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
static inline struct utils_list_hdr *utils_list_pick(const struct utils_list *const list)
{
    return list->first;
}

static inline struct utils_list_hdr *utils_list_pick_last(const struct utils_list *const list)
{
    return list->last;
}

static inline struct utils_list_hdr *utils_list_next(const struct utils_list_hdr *const list_hdr)
{
    return list_hdr->next;
}
# 280 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
typedef struct utils_dlist_s {
    struct utils_dlist_s *prev;
    struct utils_dlist_s *next;
} utils_dlist_t;

static inline void __utils_dlist_add(utils_dlist_t *node, utils_dlist_t *prev, utils_dlist_t *next)
{
    node->next = next;
    node->prev = prev;

    prev->next = node;
    next->prev = node;
}
# 305 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
static inline void utils_dlist_add(utils_dlist_t *node, utils_dlist_t *queue)
{
    __utils_dlist_add(node, queue, queue->next);
}

static inline void utils_dlist_add_tail(utils_dlist_t *node, utils_dlist_t *queue)
{
    __utils_dlist_add(node, queue->prev, queue);
}

static inline void utils_dlist_del(utils_dlist_t *node)
{
    utils_dlist_t *prev = node->prev;
    utils_dlist_t *next = node->next;

    prev->next = next;
    next->prev = prev;
}

static inline void utils_dlist_init(utils_dlist_t *node)
{
    node->next = node->prev = node;
}

static inline void INIT_UTILS_DLIST_HEAD(utils_dlist_t *list)
{
    list->next = list;
    list->prev = list;
}

static inline int utils_dlist_empty(const utils_dlist_t *head)
{
    return head->next == head;
}
# 434 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
static inline int utils_dlist_entry_number(utils_dlist_t *queue)
{
 int num;
 utils_dlist_t *cur = queue;
 for (num=0;cur->next != queue;cur=cur->next, num++)
  ;

 return num;
}
# 462 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
typedef struct utils_slist_s {
    struct utils_slist_s *next;
} utils_slist_t;

static inline void utils_slist_add(utils_slist_t *node, utils_slist_t *head)
{
    node->next = head->next;
    head->next = node;
}

static inline void utils_slist_add_tail(utils_slist_t *node, utils_slist_t *head)
{
    while (head->next) {
        head = head->next;
    }

    utils_slist_add(node, head);
}

static inline void utils_slist_del(utils_slist_t *node, utils_slist_t *head)
{
    while (head->next) {
        if (head->next == node) {
            head->next = node->next;
            break;
        }

        head = head->next;
    }
}

static inline int utils_slist_empty(const utils_slist_t *head)
{
    return !head->next;
}

static inline void utils_slist_init(utils_slist_t *head)
{
    head->next = 0;
}
# 571 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
static inline int utils_slist_entry_number(utils_slist_t *queue)
{
 int num;
    utils_slist_t *cur = queue;
    for (num=0;cur->next;cur=cur->next, num++)
  ;

    return num;
}
# 35 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h" 2





typedef void (*hal_pwm_cb_t) (void *p_arg);

typedef struct {
    struct utils_list_hdr item;
    float duty;
    float adjust_duty;
    uint32_t remain_ms;
    hal_pwm_cb_t cb;
    void *p_arg;
} hal_pwm_ev_t;

typedef struct {
    struct utils_list list_head;
    uint8_t active;
    uint32_t freq;
    float now_duty;
    hal_pwm_ev_t *p_now_ev;
} hal_pwm_dev_t;
# 67 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_init(uint8_t id, int pin);
# 77 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_freq_update(uint8_t id, uint32_t freq);
# 87 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_freq_get(uint8_t id, uint32_t *p_freq);
# 98 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_duty_set(uint8_t id, uint32_t duty, uint32_t duration_ms);
# 108 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_duty_get(uint8_t id, uint32_t *p_duty);
# 117 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_stop(uint8_t id);
# 126 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_start(uint8_t id);

int32_t vfs_pwm_init(uint32_t fdt, uint32_t dtb_uart_offset);
# 11 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2

# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/include/ulog.h" 1



# 1 "/b-l/bl_iot_sdk/components/stage/blog/blog.h" 1
# 35 "/b-l/bl_iot_sdk/components/stage/blog/blog.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdbool.h" 1 3 4
# 36 "/b-l/bl_iot_sdk/components/stage/blog/blog.h" 2
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 17 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 18 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3

# 9 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3



# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 1 3
# 44 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);
# 76 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);






char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);
# 100 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 175 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 1 3
# 15 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 37 "/b-l/bl_iot_sdk/components/stage/blog/blog.h" 2




# 1 "/b-l/bl_iot_sdk/components/utils/include/utils_log.h" 1
# 85 "/b-l/bl_iot_sdk/components/utils/include/utils_log.h"

# 85 "/b-l/bl_iot_sdk/components/utils/include/utils_log.h"
typedef enum LOG_BUF_OUT_DATA_TYPE {
    LOG_BUF_OUT_DATA_TYPE_HEX,
    LOG_BUF_OUT_DATA_TYPE_INT8,
    LOG_BUF_OUT_DATA_TYPE_UNT8,
} LOG_BUF_OUT_DATA_TYPE_T;
# 156 "/b-l/bl_iot_sdk/components/utils/include/utils_log.h"
int log_buf_out(const char *file, int line, void *inbuf, int len, LOG_BUF_OUT_DATA_TYPE_T type);

void bl_printk(const char *format, ...);
# 42 "/b-l/bl_iot_sdk/components/stage/blog/blog.h" 2

# 1 "/b-l/bl_iot_sdk/components/stage/blog/blog_type.h" 1
# 33 "/b-l/bl_iot_sdk/components/stage/blog/blog_type.h"
typedef enum _blog_leve {
    BLOG_LEVEL_ALL = 0,
    BLOG_LEVEL_DEBUG,
    BLOG_LEVEL_INFO,
    BLOG_LEVEL_WARN,
    BLOG_LEVEL_ERROR,
    BLOG_LEVEL_ASSERT,
    BLOG_LEVEL_NEVER,
} blog_level_t;

typedef struct _blog_info {
    blog_level_t *level;
    char *name;
} blog_info_t;
# 44 "/b-l/bl_iot_sdk/components/stage/blog/blog.h" 2
# 1 "/b-l/bl_iot_sdk/components/stage/blog/blog_cfg.h" 1
# 45 "/b-l/bl_iot_sdk/components/stage/blog/blog.h" 2
# 200 "/b-l/bl_iot_sdk/components/stage/blog/blog.h"
void blog_init(void);

void blog_hexdump_out(const char *name, uint8_t width, uint8_t *buf, uint16_t size);
# 5 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/include/ulog.h" 2
# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/include/app_config.h" 1
# 6 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/include/ulog.h" 2
# 13 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2
# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/include/app_config.h" 1
# 14 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2

# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_flash.h" 1
# 9 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_flash.h"
typedef struct {
 char valid;
 char on_off;
 char repeat;
 char reserved2;
 unsigned long ts;
 unsigned long end_tick;
} saved_timer_t;


typedef struct {

 char restart_loc;

 saved_timer_t saved_timers[7];

 char remote_ctrl;
 char timezone_offset;

} user_config_t;

typedef struct {
 char ssid[32];
 char password[64];
 char reset_count;
} user_ssid_t;


typedef void (*manytimes_restart_cb_t)(uint8_t rst_cnt);
typedef void (*not_manytimes_cb_t)(void);

user_config_t *flash_get_user_config(void);
user_config_t *flash_get_user_config_bak(void);

user_ssid_t *flash_get_user_ssid_config(void);
user_ssid_t *flash_get_user_ssid_config_bak(void);

char falsh_is_area_empty(uint8_t *buff, int len);

char flash_should_backup(void);
void flash_disable_backup(void);

void flash_user_config_read(void);
void flash_user_config_write(void);

void flash_ssid_config_read(void);
void flash_ssid_config_write(void);
void flash_ssid_config_bak_write(void);

void flash_user_config_to_bak_write(void);
void flash_ssid_config_to_bak_write(void);
void flash_updeta_all_backup(void);

void flash_reset_user_config(void);

char flash_get_reset_count(void);
void flash_set_reset_count_bak(uint8_t rst_count);

void flash_reset_rst_count(void);
void flash_write_reset_count(void);

char flash_get_reset_reason(void);


void flash_storage_init(void);

void flash_reg_manytimes_restart_cb(not_manytimes_cb_t user_not_manytimes_cb,manytimes_restart_cb_t user_manytimes_restart_cb);
# 16 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2
# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_timer.h" 1







typedef enum {
 TIMER_SHUTDOWN = 0,
 TIMER_CONSTANT,
 TIMER_PRESET_MODE,
 TIMER_CUSTOM_MODE,
 TIMER_DELAY_SHUTDOWN,
} timer_op_type;

typedef struct {
 char valid;
 char repeat;
 char reserved[2];
 unsigned long end_tick;
 int type;
 long ts;

} user_timer_t;

typedef void (*timer_cb_t)(void);

char timer_cancel(int index);
int timer_compute_info_size(void);
char timer_cancel_with_ts(uint32_t ts);
char timer_setup_shutdown(uint32_t ts, int year, int mon, int day, int hour, int min, int sec, char repeat);
char timer_setup_shutdown_with_deley(uint32_t ts, int minute);
void timer_get_delay_shutdown_info(char *buff);
char timer_modify(int index, int year, int mon, int day, int hour, int min, int sec, char repeat);

user_timer_t *timer_get_list(void);

user_timer_t *timer_setup_powerup(uint32_t ts, int year, int mon, int day, int hour, int min, int sec, char repeat);

void reg_shutdown_callback(timer_cb_t user_shutdown_cb);
void reg_boot_callback(timer_cb_t user_boot_cb);

void doit_timer_init(void);
# 17 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2
# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_upload.h" 1





void upload_reset_ext(void);
void upload_delay_ext(void);


# 9 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_upload.h" 3 4
_Bool 
# 9 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_upload.h"
    dohome_http_post(char *msg);

void doit_status_upload_init(void);
# 18 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2
# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_utils.h" 1






long map(const long x, const long in_min, const long in_max, const long out_min, const long out_max);

char *doit_strchr(char *str,char ch);

char *doit_strrchr(char *str,char ch);

char *doit_strcat(char *dst, const char *src);

unsigned long long doit_strtoul(const char *ptr, char **end, int base);

char mac_str_to_bin( char *str, uint8_t *mac);

char *mac_bin_to_str(uint8_t *mac, char *str);

uint8_t str2ip(const char* str, void *ip);
# 19 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2

# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_Ambilight.h" 1







typedef enum {
 STRIP_MODE_INIT_MODE = 0,
 STRIP_MODE_SEVEN_GRADIENT = 1,
 STRIP_MODE_RED_GRADIENT = 2,
 STRIP_MODE_GREEN_GRADIENT = 3,
 STRIP_MODE_BLUE_GRADIENT = 4,
 STRIP_MODE_YELLOW_GRADIENT = 5,
 STRIP_MODE_CYAN_GRADIENT = 6,
 STRIP_MODE_PURPLE_GRADIENT = 7,
 STRIP_MODE_WHITE_GRADIENT = 8,
 STRIP_MODE_RED_STROBE = 9,
 STRIP_MODE_GREEN_STROBE = 10,
 STRIP_MODE_BLUE_STROBE = 11,
 STRIP_MODE_YELLOW_STROBE = 12,
 STRIP_MODE_RG_GRADIENT = 13,
 STRIP_MODE_RB_GRADIENT = 14,
 STRIP_MODE_GB_GRADIENT = 15,
 STRIP_MODE_RG_JUMP = 16,
 STRIP_MODE_RB_JUMP = 17,
 STRIP_MODE_GB_JUMP = 18,
 STRIP_MODE_RG_STROBE = 19,
 STRIP_MODE_RB_STROBE = 20,
 STRIP_MODE_GB_STROBE = 21,
 STRIP_MODE_SEVEN_JUMP = 22,
 STRIP_MODE_SEVEN_STROBE = 23,
 STRIP_MODE_WHITE_STROBE = 24,
 STRIP_MODE_RGB_GRADIENT = 25,
 STRIP_MODE_RGB_JUMP = 26,
 STRIP_MODE_RGB_STROBE = 27,

 STRIP_MODE_UNKNOWN_CMD,
} led_effect_command;

void ambilight_init(void);
void ambilight_task(void);
void set_ambilight_mode(char mode);
# 21 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2
# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_effect.h" 1







# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_driver.h" 1
# 9 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_effect.h" 2

void led_cfg_def_effect();
void led_cfg_homekit_effect();
void led_cfg_dohome_effect();
void led_cfg_dohome_effect2();
void led_cfg_dohome_effect3();
void set_led_cfg_dohome_effect_cnt(char cnt);
# 22 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2

# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/include/product.h" 1







# 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/cjson/include/cJSON.h" 1
# 26 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/cjson/include/cJSON.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 27 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/cjson/include/cJSON.h" 2
# 46 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/cjson/include/cJSON.h"
typedef struct cJSON {
 struct cJSON *next,*prev;
 struct cJSON *child;

 int type;

 char *valuestring;
 int valueint;
 double valuedouble;

 char *string;
} cJSON;

typedef struct cJSON_Hooks {
      void *(*malloc_fn)(size_t sz);
      void (*free_fn)(void *ptr);
} cJSON_Hooks;


extern void cJSON_InitHooks(cJSON_Hooks* hooks);



extern cJSON *cJSON_Parse(const char *value);

extern char *cJSON_Print(cJSON *item);

extern char *cJSON_PrintUnformatted(cJSON *item);

extern char *cJSON_PrintBuffered(cJSON *item,int prebuffer,int fmt);

extern void cJSON_Delete(cJSON *c);


extern int cJSON_GetArraySize(cJSON *array);

extern cJSON *cJSON_GetArrayItem(cJSON *array,int item);

extern cJSON *cJSON_GetObjectItem(cJSON *object,const char *string);


extern const char *cJSON_GetErrorPtr(void);


extern cJSON *cJSON_CreateNull(void);
extern cJSON *cJSON_CreateTrue(void);
extern cJSON *cJSON_CreateFalse(void);
extern cJSON *cJSON_CreateBool(int b);
extern cJSON *cJSON_CreateNumber(double num);
extern cJSON *cJSON_CreateString(const char *string);
extern cJSON *cJSON_CreateArray(void);
extern cJSON *cJSON_CreateObject(void);


extern cJSON *cJSON_CreateIntArray(const int *numbers,int count);
extern cJSON *cJSON_CreateFloatArray(const float *numbers,int count);
extern cJSON *cJSON_CreateDoubleArray(const double *numbers,int count);
extern cJSON *cJSON_CreateStringArray(const char **strings,int count);


extern void cJSON_AddItemToArray(cJSON *array, cJSON *item);
extern void cJSON_AddItemToObject(cJSON *object,const char *string,cJSON *item);
extern void cJSON_AddItemToObjectCS(cJSON *object,const char *string,cJSON *item);

extern void cJSON_AddItemReferenceToArray(cJSON *array, cJSON *item);
extern void cJSON_AddItemReferenceToObject(cJSON *object,const char *string,cJSON *item);


extern cJSON *cJSON_DetachItemFromArray(cJSON *array,int which);
extern void cJSON_DeleteItemFromArray(cJSON *array,int which);
extern cJSON *cJSON_DetachItemFromObject(cJSON *object,const char *string);
extern void cJSON_DeleteItemFromObject(cJSON *object,const char *string);


extern void cJSON_InsertItemInArray(cJSON *array,int which,cJSON *newitem);
extern void cJSON_ReplaceItemInArray(cJSON *array,int which,cJSON *newitem);
extern void cJSON_ReplaceItemInObject(cJSON *object,const char *string,cJSON *newitem);


extern cJSON *cJSON_Duplicate(cJSON *item,int recurse);





extern cJSON *cJSON_ParseWithOpts(const char *value,const char **return_parse_end,int require_null_terminated);

extern void cJSON_Minify(char *json);
# 9 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/include/product.h" 2




typedef enum {
 PRODUCT_CONTROL_DOHOME = 0,
}product_control_t;

typedef enum {

 PRODUCT_CMD_SET_STATUS = 6,
 PRODUCT_CMD_GET_STATUS = 25,
 PRODUCT_CMD_SET_STATIC_MODE = 7,
}product_cmd_t;

typedef struct {
 rgb_pixel_t color;
 char led_effect_set;
 char led_effect_type;
 char control_way;
} product_mode_t;

void product_set_control_way(product_control_t way);
product_control_t product_get_control_way(void);

void product_read_status(product_mode_t *status);
void product_write_status(product_mode_t status);

int product_doit_set_status(cJSON *root);
void product_doit_get_status_str(char *data_str);
void product_status_factory(product_mode_t *status);

int product_run_doit_cmd(int cmd, cJSON *root, char* ret_buf);

product_mode_t* product_get_status(void);
void product_save_status(void);


# 46 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/include/product.h" 3 4
_Bool 
# 46 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/include/product.h"
    product_dohomoe_update_status(void);

void product_init(void);
# 24 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 2
# 42 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
static char led_cfg_mode = 
# 42 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
                          0
# 42 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
                               ;

static TimerHandle_t LightTimer_Handle;



rgb_pixel_t prev_color = { .red = 0, .green = 0, .blue = 0, .white = 0, .yellow = 0};
rgb_pixel_t next_color = { .red = 0, .green = 0, .blue = 0, .white = 0, .yellow = 0};
rgb_pixel_t curr_color = { .red = 9999, .green = 0, .blue = 0, .white = 0, .yellow = 0};
rgb_pixel_t step_color = { .red = 0, .green = 0, .blue = 0, .white = 0, .yellow = 0};

static int led_smooth_count = 0;
static uint8_t smooth_stat = 0;
# 65 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
static char led_smoothing_loop();


SemaphoreHandle_t task_sem;

SemaphoreHandle_t hanler_mutex;

SemaphoreHandle_t pwm_mutex;


static int step_color_flag = 0;


doit_post_cb_t _delay_post_cb = 
# 78 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
                               ((void *)0)
# 78 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
                                   ;
doit_post_cb_t _post_cb = 
# 79 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
                         ((void *)0)
# 79 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
                             ;




int update_config_upload()
{
 if(_post_cb){
  _post_cb();
 }
 return 0;
}




int delay_update_config_upload()
{
 if(_delay_post_cb){
  _delay_post_cb();
 }
 return 0;
}




int get_brightness(int r, int g, int b, int w)
{
 int max, brightness;
 max = r;
 if (g > max) { max = g;}
 if (b > max) { max = b;}
 if (w > max) { max = w;}
 brightness = (int)(max * 100 / 255);
 return brightness;
}




static int get_max_value(int a, int b, int c, int d, int e)
{
 int x = a > b ? a : b;
 int y = c > d ? c : d;
 int z = x > y ? x : y;
 return z > e ? z : e;
}





char get_led_cfg_mode()
{
 return led_cfg_mode;
}
# 145 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
void set_light_work_mode(char mode)
{
 set_led_cfg_dohome_effect_cnt(0);
 led_cfg_mode = mode;

 ;
 xQueueGenericSend( ( QueueHandle_t ) ( task_sem ), 
# 151 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
((void *)0)
# 151 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
 ;
}






void hw_test_timer_cb(TimerHandle_t timer)
{
 xQueueGenericSend( ( QueueHandle_t ) ( task_sem ), 
# 162 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
((void *)0)
# 162 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
}




static void hw_timer_init() {

 LightTimer_Handle = xTimerCreate(((const char*)"light_timer_task"), 6 / ( ( TickType_t ) 1000 / ( ( TickType_t ) 1000 ) ), ( ( BaseType_t ) 1 ), 0, hw_test_timer_cb);
 if( LightTimer_Handle == 
# 171 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
                         ((void *)0) 
# 171 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
                              ) {
        ;
    }
}




static inline void hw_timer_arm(uint32_t ms) {

 if(xTimerGenericCommand( ( LightTimer_Handle ), ( ( BaseType_t ) 4 ), ( ms / ( ( TickType_t ) 1000 / ( ( TickType_t ) 1000 ) ) ), 
# 181 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
   ((void *)0)
# 181 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
   , ( 1000 ) ) != ( ( ( BaseType_t ) 1 ) ) )
 {
  ;
 }
}




static inline void hw_timer_disable() {

 if( xTimerGenericCommand( ( LightTimer_Handle ), ( ( BaseType_t ) 3 ), 0U, 
# 192 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
    ((void *)0)
# 192 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
    , ( 100 ) ) != ( ( ( BaseType_t ) 1 ) ) ){
  ;
 }
}




static inline void hw_timer_enable() {

 if( xTimerGenericCommand( ( LightTimer_Handle ), ( ( BaseType_t ) 1 ), ( xTaskGetTickCount() ), 
# 202 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
    ((void *)0)
# 202 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
    , ( 100 ) ) != ( ( ( BaseType_t ) 1 ) ) ){
  ;
 }
}
# 252 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
static void light_change_task(void *arg)
{
 while (1) {

  xQueueSemaphoreTake( ( task_sem ), ( 10000 / ( ( TickType_t ) 1000 / ( ( TickType_t ) 1000 ) ) ) );

  if (led_cfg_mode == 0) {
  } else if (led_cfg_mode == 1) {
   led_cfg_dohome_effect();
   xQueueGenericSend( ( QueueHandle_t ) ( task_sem ), 
# 261 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
  ((void *)0)
# 261 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
  , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
  } else if (led_cfg_mode == 4) {
   led_cfg_dohome_effect3();
   xQueueGenericSend( ( QueueHandle_t ) ( task_sem ), 
# 264 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
  ((void *)0)
# 264 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
  , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
  }else if (led_cfg_mode == 2) {

   xQueueSemaphoreTake( ( hanler_mutex ), ( 50000 / ( ( TickType_t ) 1000 / ( ( TickType_t ) 1000 ) ) ) );
   smooth_stat = led_smoothing_loop();
   xQueueGenericSend( ( QueueHandle_t ) ( hanler_mutex ), 
# 269 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
  ((void *)0)
# 269 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
  , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
  }
  else if (led_cfg_mode == 3) {
   ambilight_task();
   xQueueGenericSend( ( QueueHandle_t ) ( task_sem ), 
# 273 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
  ((void *)0)
# 273 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
  , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
  }
 }

}






void init_led_cfg_mode()
{


 task_sem = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
 hanler_mutex = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
 pwm_mutex = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );

 xQueueGenericSend( ( QueueHandle_t ) ( task_sem ), 
# 292 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
((void *)0)
# 292 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
 xQueueGenericSend( ( QueueHandle_t ) ( hanler_mutex ), 
# 293 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
((void *)0)
# 293 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
 xQueueGenericSend( ( QueueHandle_t ) ( pwm_mutex ), 
# 294 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
((void *)0)
# 294 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

 hw_timer_init();

 xTaskCreate(light_change_task, "light_change_task", 6*1024, 
# 298 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
                                                                     ((void *)0)
# 298 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
                                                                         , 3, 
# 298 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
                                                                              ((void *)0)
# 298 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
                                                                                  );
}





void led_load_saved_color()
{
 product_mode_t *product_status = product_get_status();

 ;
 product_status->color.on = 1;

 curr_color.red = 0;
 curr_color.green = 0;
 curr_color.blue = 0;
 curr_color.white = 0;
 curr_color.yellow = 0;
 curr_color.on = 1;
 start_led_change(product_status->color, 0);
}


void led_load_saved_color2()
{
 product_mode_t *product_status = product_get_status();

 char reset_reason = flash_get_reset_reason();


 if(reset_reason != 0){

  ;
  product_status->color.on = 1;
  next_color = product_status->color;
  curr_color = product_status->color;
  send_light_data_pwm(product_status->color);
 }else{
  ;
  product_status->color.on = 1;

  curr_color.red = 0;
  curr_color.green = 0;
  curr_color.blue = 0;
  curr_color.white = 0;
  curr_color.yellow = 0;
  curr_color.on = 1;
  start_led_change(product_status->color, 0);
 }
}




void start_led_change(rgb_pixel_t rgb, int t)
{
 product_mode_t *product_status = product_get_status();
 if (curr_color.red == 9999) {
  next_color = product_status->color;
  curr_color = product_status->color;
 }

 ;
 ;

 ;
 ;
 ;


 if (next_color.red == rgb.red && next_color.green == rgb.green && next_color.blue == rgb.blue && next_color.white == rgb.white && next_color.yellow == rgb.yellow )
 {
  ;
  return ;

 }



 xQueueSemaphoreTake( ( hanler_mutex ), ( 5000 / ( ( TickType_t ) 1000 / ( ( TickType_t ) 1000 ) ) ) );

 step_color_flag = 1;
 next_color = rgb;
 led_smooth_count = 0;
 set_light_work_mode(2);

 if (t == 0) {
  if (rgb.on == 1) {
   if(rgb.white == 0 && rgb.yellow == 0){
    hw_timer_arm(8);
   }else{

    int max = get_max_value(curr_color.red, curr_color.green, curr_color.blue, curr_color.white, curr_color.yellow);
    if(curr_color.white == 0 && curr_color.yellow == 0 && max != 0){
     max = rgb.white>rgb.yellow?rgb.white:rgb.yellow;
     if(max > 1000 / 3){
      hw_timer_arm(16);
     }else{
      max = get_max_value(curr_color.red, curr_color.green, curr_color.blue, 0, 0);
      if(max > 1000 / 2){
       hw_timer_arm(4);
      }else{
       hw_timer_arm(10);
      }
     }
    }else{
     hw_timer_arm(18);
    }
   }
  } else {
   hw_timer_arm(4);
  }

 } else {

  hw_timer_arm(t);
 }


 ;
 hw_timer_enable();

 xQueueGenericSend( ( QueueHandle_t ) ( hanler_mutex ), 
# 421 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
((void *)0)
# 421 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
}


static int ABS(int value)
{
 if (value < 0) {
  return 0 - value;
 } else {
  return value;
 }
}




int cal_step()
{
 signed int delata_red = 0;
 signed int delata_green = 0;
 signed int delata_blue = 0;
 signed int delata_white = 0;
 signed int delata_warm = 0;
 unsigned int MAX_VALUE;


 static float r_scale;
 static float g_scale;
 static float b_scale;
 static float w_scale;
 static float ww_scale;
 unsigned int RED_GRA_STEP = 10;
 unsigned int GREEN_GRA_STEP = 10;
 unsigned int BLUE_GRA_STEP = 10;
 unsigned int WHITE_GRA_STEP = 10;
 unsigned int WARM_GRA_STEP = 10;

 delata_red = next_color.red - curr_color.red;
 delata_green = next_color.green - curr_color.green;
 delata_blue = next_color.blue - curr_color.blue;
 delata_white = next_color.white - curr_color.white;
 delata_warm = next_color.yellow - curr_color.yellow;
 MAX_VALUE = get_max_value(ABS(delata_red), ABS(delata_green), ABS(delata_blue), ABS(delata_white), ABS(delata_warm));
 if (MAX_VALUE == 0) {
  return 0;
 }

 if (step_color_flag == 1) {
  r_scale = ABS(delata_red) / 1.0 / MAX_VALUE;
  g_scale = ABS(delata_green) / 1.0 / MAX_VALUE;
  b_scale = ABS(delata_blue) / 1.0 / MAX_VALUE;
  w_scale = ABS(delata_white) / 1.0 / MAX_VALUE;
  ww_scale = ABS(delata_warm) / 1.0 / MAX_VALUE;
  step_color_flag = 0;
  ;
 }
 if (MAX_VALUE == ABS(delata_red)) {
  RED_GRA_STEP = 10;
 } else {
  RED_GRA_STEP = ABS(ABS(delata_red) - MAX_VALUE * r_scale);
 }

 if (MAX_VALUE == ABS(delata_green)) {
  GREEN_GRA_STEP = 10;
 } else {
  GREEN_GRA_STEP = ABS(ABS(delata_green) - MAX_VALUE * g_scale);
 }

 if (MAX_VALUE == ABS(delata_blue)) {
  BLUE_GRA_STEP = 10;
 } else {
  BLUE_GRA_STEP = ABS(ABS(delata_blue) - MAX_VALUE * b_scale);
 }

 if (MAX_VALUE == ABS(delata_white)) {
  WHITE_GRA_STEP = 10;
 } else {
  WHITE_GRA_STEP = ABS(ABS(delata_white) - MAX_VALUE * w_scale);
 }

 if (MAX_VALUE == ABS(delata_warm)) {
  WARM_GRA_STEP = 10;
 } else {
  WARM_GRA_STEP = ABS(ABS(delata_warm) - MAX_VALUE * ww_scale);
 }


 step_color.red = RED_GRA_STEP;
 step_color.green = GREEN_GRA_STEP;
 step_color.blue = BLUE_GRA_STEP;
 step_color.white = WHITE_GRA_STEP;
 step_color.yellow = WARM_GRA_STEP;





 return 1;
}




static char led_smoothing_loop()
{
 
# 526 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
_Bool 
# 526 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
     changed = 
# 526 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
               0
# 526 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
                    ;
 char res = 2;



 cal_step();

 if (next_color.red != curr_color.red) {
  if (curr_color.red < next_color.red) {
   curr_color.red += step_color.red;
   if (curr_color.red > next_color.red) { curr_color.red = next_color.red; }
  } else {
   curr_color.red -= step_color.red;
   if (curr_color.red < next_color.red) { curr_color.red = next_color.red; }
  }
  changed = 
# 541 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
           1
# 541 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
               ;
 } else {
  prev_color.red = next_color.red;
 }

 if (next_color.green != curr_color.green) {
  if (curr_color.green < next_color.green) {
   curr_color.green += step_color.green;
   if (curr_color.green > next_color.green) { curr_color.green = next_color.green; }
  } else {
   curr_color.green -= step_color.green;
   if (curr_color.green < next_color.green) { curr_color.green = next_color.green; }
  }
  changed = 
# 554 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
           1
# 554 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
               ;
 } else {
  prev_color.green = next_color.green;
 }

 if (next_color.blue != curr_color.blue) {
  if (curr_color.blue < next_color.blue) {
   curr_color.blue += step_color.blue;
   if (curr_color.blue > next_color.blue) { curr_color.blue = next_color.blue; }
  } else {
   curr_color.blue -= step_color.blue;
   if (curr_color.blue < next_color.blue) { curr_color.blue = next_color.blue; }
  }
  changed = 
# 567 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
           1
# 567 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
               ;
 } else {
  prev_color.blue = next_color.blue;
 }

 if (next_color.white != curr_color.white) {
  if (curr_color.white < next_color.white) {
   curr_color.white += step_color.white;
   if (curr_color.white > next_color.white) { curr_color.white = next_color.white; }
  } else {
   curr_color.white -= step_color.white;
   if (curr_color.white < next_color.white) { curr_color.white = next_color.white; }
  }
  changed = 
# 580 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
           1
# 580 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
               ;
 } else {
  prev_color.white = next_color.white;
 }


 if (next_color.yellow != curr_color.yellow) {
  if (curr_color.yellow < next_color.yellow) {
   curr_color.yellow += step_color.yellow;
   if (curr_color.yellow > next_color.yellow) { curr_color.yellow = next_color.yellow; }
  } else {
   curr_color.yellow -= step_color.yellow;
   if (curr_color.yellow < next_color.yellow) { curr_color.yellow = next_color.yellow; }
  }
  changed = 
# 594 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
           1
# 594 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
               ;
 } else {
  prev_color.yellow = next_color.yellow;
 }


 if (changed) {
  send_light_data_pwm(curr_color);
  res = 1;
 } else {
  ;

  ;

  ;
  ;


  res = 2;

  hw_timer_disable();

  set_light_work_mode(0);

 }

 led_smooth_count++;
 if (led_smooth_count >= 1000) {
  ;
  led_smooth_count = 0;
  prev_color = next_color;
  curr_color = next_color;
  send_light_data_pwm(next_color);
  res = 2;

  hw_timer_disable();

  set_light_work_mode(0);

 }
 return res;
}





void send_light_data(int r, int g, int b, int w, int y, int t)
{
 rgb_pixel_t color = {0, 0, 0, 0, 0, 0};
 color.on = 1;

 float sum = r + g + b + w + y;
 if (sum>0 && sum < 20) {
  color.red = (r == 0) ? 0 : 20 * r / sum;
  color.green = (g == 0) ? 0 : 20 * g / sum;
  color.blue = (b == 0) ? 0 : 20 * b / sum;
  color.white = (w == 0) ? 0 : 20 * w / sum;
  color.yellow = (y == 0) ? 0 : 20 * y / sum;
 } else {
  color.red = r;
  color.green = g;
  color.blue = b;
  color.white = w;


  color.yellow = y;

 }
# 675 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
 ;
 start_led_change(color, t);

 product_mode_t *product_status = product_get_status();
 product_status->color = color;
 delay_update_config_upload();
}




int send_light_onoff(char on)
{
 product_mode_t *product_status = product_get_status();
 if (product_status->color.on != on) {
  if (on) {
   led_load_saved_color();
   product_status->color.on = 1;
  } else {
   led_rgb_set_off();
   product_status->color.on = 0;
  }
  update_config_upload();
  return 1;
 }
 return 0;
}





void led_rgb_set_off() {
 rgb_pixel_t color = {.red = 0, .green = 0, .blue = 0, .white = 0, .yellow = 0, .on = 0};
 start_led_change(color, 0);
}




void send_light_data_pwm_map(rgb_pixel_t rgb, char save)
{
 rgb_pixel_t color = rgb;

 if (rgb.red == 0) { color.red = 0; }
 else {color.red = map(rgb.red, 0, 255, 0, 1000);}

 if (rgb.green == 0) { color.green = 0; }
 else {color.green = map(rgb.green, 0, 255, 0, 1000);}

 if (rgb.blue == 0) { color.blue = 0; }
 else {color.blue = map(rgb.blue, 0, 255, 0, 1000);}

 if (rgb.white == 0) { color.white = 0; }
 else {color.white = map(rgb.white, 0, 255, 0, 1000);}

 if (rgb.yellow == 0) { color.yellow = 0; }
 else {color.yellow = map(rgb.yellow, 0, 255, 0, 1000);}

 send_light_data_pwm(color);
}

void light_shutdown_cb(void){

 send_light_onoff(0);
}

void light_boot_cb(void){

 send_light_onoff(1);
}
# 754 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
void send_light_data_pwm(rgb_pixel_t rgb)
{





 int rr = 0, gg = 0, bb = 0, ww = 0, yy = 0;


 if (rgb.red == 0) { rr = 0; }
 else {rr = map(rgb.red, 0, 1000, 0, (10000));}

 if (rgb.green == 0) { gg = 0; }
 else {gg = map(rgb.green, 0, 1000, 0, (10000));}

 if (rgb.blue == 0) { bb = 0; }
 else {bb = map(rgb.blue, 0, 1000, 0, (10000));}

 if (rgb.white == 0) { ww = 0; }
 else {ww = map(rgb.white, 0, 1000, 0, (10000));}

 if (rgb.yellow == 0) { yy = 0; }
 else {yy = map(rgb.yellow, 0, 1000, 0, (10000));}
# 786 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
 xQueueSemaphoreTake( ( pwm_mutex ), ( 1000 / ( ( TickType_t ) 1000 / ( ( TickType_t ) 1000 ) ) ) );


 hal_pwm_duty_set(0, rr, 0);
 hal_pwm_duty_set(1, gg, 0);
 hal_pwm_duty_set(2, bb, 0);
 hal_pwm_duty_set(3, ww, 0);
 hal_pwm_duty_set(4, yy, 0);



 xQueueGenericSend( ( QueueHandle_t ) ( pwm_mutex ), 
# 797 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c" 3 4
((void *)0)
# 797 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
}

void dohome_reg_delay_post_cb(doit_post_cb_t user_delay_post_cb){
 _delay_post_cb = user_delay_post_cb;
}

void dohome_reg_post_cb(doit_post_cb_t user_post_cb){
 _post_cb = user_post_cb;
}





void light_init()
{
    int i;
 char pin, ch;
 char pinbuf[] = {5, 1, 2, 3, 4};

 for (i = 0; i < sizeof(pinbuf); i++) {
        pin = pinbuf[i];
        ch = pin%5;
        do { ; bl_printk("[%10u][%s: %s:%4d] " "pwm init ch = %d, pin = %d\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[32mINFO  \x1b[0m", "doit_light_driver.c", 821, ch, pin); ; } while(0==1);
        hal_pwm_init(ch, pin);
  hal_pwm_freq_update(ch, 5000);
  hal_pwm_duty_set(ch, 0, 0);
  hal_pwm_start(ch);
    }




 init_led_cfg_mode();
 ambilight_init();

 reg_shutdown_callback(light_shutdown_cb);
 reg_boot_callback(light_boot_cb);
}
