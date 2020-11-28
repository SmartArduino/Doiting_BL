# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_platform.c"
# 1 "/b-l/DoHome_Light_rgbcw/build_out/bl602_wifidrv//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_platform.c"
# 32 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_platform.c"
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_platform.h" 1
# 41 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_platform.h"
struct bl_hw;
int bl_platform_on(struct bl_hw *bl_hw);
void bl_platform_off(struct bl_hw *bl_hw);
# 33 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_platform.c" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_irqs.h" 1
# 34 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_irqs.h"
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
# 35 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_irqs.h" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h" 1
# 32 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/errno.h" 1
# 33 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_host.h" 1
# 33 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_host.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_shared.h" 1
# 40 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_shared.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_compat.h" 1
# 36 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_compat.h"
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

# 37 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_compat.h" 2
# 41 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_shared.h" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_types.h" 1
# 36 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_types.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdbool.h" 1 3 4
# 37 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_types.h" 2
# 56 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_types.h"

# 56 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_types.h"
typedef uint8_t u8_l;
typedef int8_t s8_l;
typedef 
# 58 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_types.h" 3 4
       _Bool 
# 58 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_types.h"
            bool_l;
typedef uint16_t u16_l;
typedef int16_t s16_l;
typedef uint32_t u32_l;
typedef int32_t s32_l;
typedef uint64_t u64_l;

typedef uint32_t u32;
typedef uint16_t u16;
typedef uint8_t u8;

typedef int32_t s32;
typedef int8_t s8;

typedef uint64_t __le64;
typedef uint32_t __le32;
typedef uint16_t __le16;

typedef uint32_t __be32;
typedef uint16_t __be16;
# 42 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_shared.h" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_mac.h" 1
# 139 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_mac.h"
struct mac_addr
{

    u8_l array[6];
};





struct mac_ssid
{

    u8_l length;

    u8_l array[32];
    u8_l array_tail[1];
};





struct mac_rateset
{
    u8_l length;
    u8_l array[12];
};



struct mac_rates
{

    u32 mcs[3];

    u16 legacy;
};




struct rx_seciv
{
    u8 iv[4];
    u8 ext_iv[4];
};



struct mac_mcsset
{
    u8 length;
    u8 array[16];
};




struct mac_wep_key
{
    u8 array[13];
};




struct mac_sec_key
{
    u8_l length;
    u32_l array[32/4];
};




struct mac_ch_list
{

    u16 nbr;

    u8 list[40];
};


struct mac_country_subband
{

    u8 first_chn;

    u8 nbr_of_chn;

    u8 max_tx_power;
};



struct mac_country
{

    u8 length;

    u8 string[3];

    struct mac_country_subband subband[5];
};


struct mac_htcapability
{
    u16_l ht_capa_info;
    u8_l a_mpdu_param;
    u8_l mcs_rate[16];
    u16_l ht_extended_capa;
    u32_l tx_beamforming_capa;
    u8_l asel_capa;
};


struct mac_vhtcapability
{
    u32_l vht_capa_info;
    u16_l rx_mcs_map;
    u16_l rx_highest;
    u16_l tx_mcs_map;
    u16_l tx_highest;
};



struct mac_htoprnelmt
{
    u8 prim_channel;
    u8 ht_oper_1;
    u16 ht_oper_2;
    u16 ht_oper_3;
    u8 mcs_rate[16];

};


struct mac_qoscapability
{
    u8 qos_info;
};



struct mac_raw_rsn_ie
{
    u8 data[2 + 34];
};


struct mac_wpa_frame
{
    u8 array[0x1A];
};


struct mac_wmm_frame
{
    u8 array [16];
};


struct mac_bss_load
{
    u16 sta_cnt;
    u8 ch_utilization;
    u16 avail_adm_capacity;
};


struct mac_edca_param_set
{
    u8 qos_info;
    u32 ac_be_param_record;
    u32 ac_bk_param_record;
    u32 ac_vi_param_record;
    u32 ac_vo_param_record;
};




struct mac_twenty_fourty_bss
{
    u8 bss_coexistence;
};


struct mac_ba_param
{
    struct mac_addr peer_sta_address;
    u16 buffer_size;
    u16 start_sequence_number;
    u16 ba_timeout;
    u8 dev_type;
    u8 block_ack_policy;
    u8 buffer_cnt;
};


struct mac_ts_info
{
    u8 traffic_type;
    u8 ack_policy;
    u8 access_policy;
    u8 dir;
    u8 tsid;
    u8 user_priority;
    
# 351 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_mac.h" 3 4
   _Bool 
# 351 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_mac.h"
             aggregation;
    
# 352 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_mac.h" 3 4
   _Bool 
# 352 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_mac.h"
             apsd;
    
# 353 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_mac.h" 3 4
   _Bool 
# 353 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_mac.h"
             schedule;
};


struct mac_tspec_param
{
    struct mac_ts_info ts_info;
    u16 nominal_msdu_size;
    u16 max_msdu_size;
    u32 min_service_interval;
    u32 max_service_interval;
    u32 inactivity_interval;
    u32 short_inactivity_interval;
    u32 service_start_time;
    u32 max_burst_size;
    u32 min_data_rate;
    u32 mean_data_rate;
    u32 min_phy_rate;
    u32 peak_data_rate;
    u32 delay_bound;
    u16 medium_time;
    u8 surplusbwallowance;
};


struct mac_scan_result
{

    struct mac_addr bssid;

    struct mac_ssid ssid;

    u16 bsstype;

    u16 ch_nbr;

    u16 beacon_period;
    u32 timestamp_high;
    u32 timestamp_low;
    u16 dtim_period;
    u16 ibss_parameter;
    u16 cap_info;
    struct mac_rateset rate_set;
    struct mac_bss_load bss_load;
    u8 country_element[3];
    struct mac_edca_param_set edca_param;
    struct mac_raw_rsn_ie rsn_ie;
    struct mac_qoscapability qos_cap;
    struct mac_htcapability ht_cap;
    u8 sec_ch_oft;
    struct mac_twenty_fourty_bss twenty_fourty_bss;
    
# 404 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_mac.h" 3 4
   _Bool 
# 404 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_mac.h"
        valid_flag;
    u8 rssi;
};


struct mac_request_set
{

    u8 mode;
    u8 type;
    u16 duration;
    uint64_t start_time;
    u8 ch_number;
};


struct mac_report_set
{
    u8 mode;
    u8 type;
    u16 duration;
    uint64_t start_time;
    u8 ch_number;
    u8 map;
    u8 cca_busy_fraction;
    u8 rpi_histogram[8];
};


struct mac_version
{
    char mac_sw_version[16];
    char mac_sw_version_date[48];
    char mac_sw_build_date[48];
    u32 mac_hw_version1;
    u32 mac_hw_version2;
};



struct mac_bss_conf
{

    u32 flags;

    u16 beacon_period;
};


enum
{
    TID_0,
    TID_1,
    TID_2,
    TID_3,
    TID_4,
    TID_5,
    TID_6,
    TID_7,
    TID_MGT,
    TID_MAX
};


enum
{
    AC_BK = 0,
    AC_BE,
    AC_VI,
    AC_VO,
    AC_MAX
};


enum
{
    SCAN_PASSIVE,
    SCAN_ACTIVE
};


enum
{
    MAC_RATE_1MBPS = 2,
    MAC_RATE_2MBPS = 4,
    MAC_RATE_5_5MBPS = 11,
    MAC_RATE_6MBPS = 12,
    MAC_RATE_9MBPS = 18,
    MAC_RATE_11MBPS = 22,
    MAC_RATE_12MBPS = 24,
    MAC_RATE_18MBPS = 36,
    MAC_RATE_24MBPS = 48,
    MAC_RATE_36MBPS = 72,
    MAC_RATE_48MBPS = 96,
    MAC_RATE_54MBPS = 108
};


enum
{

    STA_QOS_CAPA = 1 << 0,

    STA_HT_CAPA = 1 << 1,

    STA_VHT_CAPA = 1 << 2,

    STA_MFP_CAPA = 1 << 3,

    STA_OPMOD_NOTIF = 1 << 4,
};


enum
{

    CONTROL_PORT_HOST = 1 << 0,

    CONTROL_PORT_NO_ENC = 1 << 1,

    DISABLE_HT = 1 << 2,

    WPA_WPA2_IN_USE = 1 << 3,

    MFP_IN_USE = 1 << 4,
};





extern const u8 mac_tid2ac[];

extern const u8 mac_id2rate[];

extern const u16 mac_mcs_params_20[];

extern const u16 mac_mcs_params_40[];
# 43 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_shared.h" 2
# 132 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_shared.h"
struct hostdesc
{

    uint32_t pbuf_addr;

    u32_l packet_addr;

    u16_l packet_len;


    u32_l status_addr;

    struct mac_addr eth_dest_addr;

    struct mac_addr eth_src_addr;

    u16_l ethertype;

    u16_l pn[4];

    u16_l sn;

    u16_l timestamp;

    u8_l tid;

    u8_l vif_idx;

    u8_l staid;

    u16_l flags;
    u32_l pbuf_chained_ptr[4];
    u32_l pbuf_chained_len[4];
};
# 189 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_shared.h"
struct txdesc_host
{
    u32_l ready;


    struct hostdesc host;

    uint32_t pad_txdesc[220/4];

    uint32_t pad_buf[512/4];
};



struct dma_desc
{


    u32_l src;


    u32_l dest;

    u16_l length;

    u16_l ctrl;

    u32_l next;
};






struct la_conf_tag
{
    u32_l conf[10];
    u32_l trace_len;
    u32_l diag_conf;
};





enum
{

    DBG_ERROR_RECOVERABLE = 0,

    DBG_ERROR_FATAL
};
# 265 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_shared.h"
struct phy_channel_info
{

    u32_l info1;

    u32_l info2;
};


struct dbg_debug_info_tag
{

    u32_l error_type;

    u32_l rhd;

    u32_l rhd_len;

    u32_l rbd;

    u32_l rbd_len;

    u32_l thd[4];

    u32_l thd_len[4];

    u32_l hw_diag;

    u32_l error[256/4];

    u32_l sw_diag_len;

    u32_l sw_diag[1024/4];

    struct phy_channel_info chan_info;

    struct la_conf_tag la_conf;

    u16_l diags_mac[48];

    u16_l diags_phy[32];

    u32_l rhd_hw_ptr;

    u32_l rbd_hw_ptr;
};


struct dbg_debug_dump_tag
{

    struct dbg_debug_info_tag dbg_info;


    u32_l rhd_mem[(5 * 1024)/4];


    u32_l rbd_mem[(5 * 1024)/4];


    u32_l thd_mem[4][(10 * 1024)/4];


    u32_l la_mem[(1024 * 1024)/4];
};






struct radar_pulse_array_desc
{

    u32_l pulse[4];

    u32_l idx;

    u32_l cnt;
};


struct radar_pulse {
    s32_l freq:6;
    u32_l fom:4;
    u32_l len:6;
    u32_l rep:16;

};
# 474 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_shared.h"
struct ipc_header
{

    u16_l type;

    u16_l size;
};

struct ipc_msg_elt
{

    struct ipc_header header __attribute__((aligned (4)));
};


struct ipc_e2a_msg
{
    u16_l id;
    u16_l dummy_dest_id;
    u16_l dummy_src_id;
    u16_l param_len;
    u32_l param[(257 - 4 - 8)];
    u32_l pattern;
};


struct ipc_dbg_msg
{
    u32_l string[256/4];
    u32_l pattern;
};



struct ipc_a2e_msg
{
    u32_l dummy_word;
    u32_l msg[127];
};

struct ipc_shared_rx_buf
{

    u32_l hostid;

    u32_l dma_addr;
};

struct ipc_shared_rx_desc
{

    u32_l dma_addr;
};
# 536 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_shared.h"
struct ipc_shared_env_tag
{
    volatile struct ipc_a2e_msg msg_a2e_buf;


    volatile u32_l pattern_addr;

    volatile struct txdesc_host txdesc0[4];
};

extern struct ipc_shared_env_tag ipc_shared_env;
# 695 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_shared.h"
enum
{
    IPC_MSG_NONE = 0,
    IPC_MSG_WRAP,
    IPC_MSG_KMSG,

    IPC_DBG_STRING,

};
# 34 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_host.h" 2

enum ipc_host_desc_status
{

    IPC_HOST_DESC_IDLE = 0,

    IPC_HOST_DESC_FORWARD,

    IPC_HOST_DESC_KEEP,

    IPC_HOST_DESC_DELETE,

    IPC_HOST_DESC_LEN_UPDATE,
};
# 59 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_host.h"
struct ipc_host_cb_tag
{

    int (*send_data_cfm)(void *pthis, void *host_id);


    uint8_t (*recv_data_ind)(void *pthis, void *host_id);


    uint8_t (*recv_radar_ind)(void *pthis, void *host_id);


    uint8_t (*recv_msg_ind)(void *pthis, void *host_id);


    uint8_t (*recv_msgack_ind)(void *pthis, void *host_id);


    uint8_t (*recv_dbg_ind)(void *pthis, void *host_id);


    void (*prim_tbtt_ind)(void *pthis);


    void (*sec_tbtt_ind)(void *pthis);

};




struct ipc_hostbuf
{
    void *hostid;
    uint32_t dma_addr;
};



struct ipc_host_env_tag
{

    struct ipc_host_cb_tag cb;


    struct ipc_shared_env_tag *shared;


    struct ipc_hostbuf ipc_host_rxdesc_array[2];

    uint8_t ipc_host_rxdesc_idx;

    uint8_t rxdesc_nb;


    uint8_t ipc_host_rxbuf_idx;

    uint32_t rx_bufnb;

    uint32_t rx_bufsz;


    uint32_t txdesc_free_idx;

    uint32_t txdesc_used_idx;

    void *tx_host_id0[4];

    void **tx_host_id;

    volatile struct txdesc_host *txdesc;



    struct ipc_hostbuf ipc_host_msgbuf_array[8];

    uint8_t ipc_host_msge2a_idx;

    uint32_t ipc_e2amsg_bufnb;

    uint32_t ipc_e2amsg_bufsz;


    uint8_t msga2e_cnt;
    void *msga2e_hostid;



    struct ipc_hostbuf ipc_host_dbgbuf_array[4];

    uint8_t ipc_host_dbg_idx;

    uint32_t ipc_dbg_bufnb;

    uint32_t ipc_dbg_bufsz;


    void *pthis;
};

void ipc_host_init(struct ipc_host_env_tag *env,
                  struct ipc_host_cb_tag *cb,
                  struct ipc_shared_env_tag *shared_env_ptr,
                  void *pthis);
int ipc_host_msg_push(struct ipc_host_env_tag *env, void *msg_buf, uint16_t len);
uint32_t ipc_host_get_status(struct ipc_host_env_tag *env);
uint32_t ipc_host_get_rawstatus(struct ipc_host_env_tag *env);
volatile struct txdesc_host *ipc_host_txdesc_get(struct ipc_host_env_tag *env);
void ipc_host_txdesc_push(struct ipc_host_env_tag *env, void *host_id);
void ipc_host_irq(struct ipc_host_env_tag *env, uint32_t status);
void ipc_host_enable_irq(struct ipc_host_env_tag *env, uint32_t value);
void ipc_host_disable_irq(struct ipc_host_env_tag *env, uint32_t value);
# 188 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_host.h"
int ipc_host_msgbuf_push(struct ipc_host_env_tag *env, void *hostid, uint32_t hostbuf);

void ipc_host_patt_addr_push(struct ipc_host_env_tag *env, uint32_t addr);
# 208 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_host.h"
int ipc_host_rxbuf_push(struct ipc_host_env_tag *env, uint32_t hostid, uint32_t hostbuf);
# 225 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ipc_host.h"
int ipc_host_rxdesc_push(struct ipc_host_env_tag *env, void *hostid, uint32_t hostbuf);
int ipc_host_txdesc_left(struct ipc_host_env_tag *env, const int queue_idx, const int user_pos);
# 34 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h" 2

# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_cmds.h" 1
# 33 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_cmds.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/list.h" 1
# 82 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/list.h"
struct list_head {
 struct list_head *next, *prev;
};
# 101 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/list.h"
static inline void __list_add(struct list_head *new,
         struct list_head *prev,
         struct list_head *next)
{
 next->prev = new;
 new->next = next;
 new->prev = prev;
 prev->next = new;
}
# 119 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/list.h"
static inline void list_add(struct list_head *new, struct list_head *head)
{
 __list_add(new, head, head->next);
}
# 132 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/list.h"
static inline void list_add_tail(struct list_head *new, struct list_head *head)
{
 __list_add(new, head->prev, head);
}
# 145 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/list.h"
static inline void __list_del(struct list_head * prev, struct list_head * next)
{
 next->prev = prev;
 prev->next = next;
}







static inline void list_del(struct list_head *entry)
{
 __list_del(entry->prev, entry->next);
 entry->next = ((void *) 0x00100100);
 entry->prev = ((void *) 0x00200200);
}







static inline void list_del_init(struct list_head *entry)
{
 __list_del(entry->prev, entry->next);
 do { (entry)->next = (entry); (entry)->prev = (entry); } while (0);
}






static inline void list_move(struct list_head *list, struct list_head *head)
{
        __list_del(list->prev, list->next);
        list_add(list, head);
}






static inline void list_move_tail(struct list_head *list,
      struct list_head *head)
{
        __list_del(list->prev, list->next);
        list_add_tail(list, head);
}





static inline int list_empty(const struct list_head *head)
{
 return head->next == head;
}

static inline void __list_splice(struct list_head *list,
     struct list_head *head)
{
 struct list_head *first = list->next;
 struct list_head *last = list->prev;
 struct list_head *at = head->next;

 first->prev = head;
 head->next = first;

 last->next = at;
 at->prev = last;
}






static inline void list_splice(struct list_head *list, struct list_head *head)
{
 if (!list_empty(list))
  __list_splice(list, head);
}
# 240 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/list.h"
static inline void list_splice_init(struct list_head *list,
        struct list_head *head)
{
 if (!list_empty(list)) {
  __list_splice(list, head);
  do { (list)->next = (list); (list)->prev = (list); } while (0);
 }
}
# 395 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/list.h"
struct hlist_head {
 struct hlist_node *first;
};

struct hlist_node {
 struct hlist_node *next, **pprev;
};






static inline int hlist_unhashed(const struct hlist_node *h)
{
 return !h->pprev;
}

static inline int hlist_empty(const struct hlist_head *h)
{
 return !h->first;
}

static inline void __hlist_del(struct hlist_node *n)
{
 struct hlist_node *next = n->next;
 struct hlist_node **pprev = n->pprev;
 *pprev = next;
 if (next)
  next->pprev = pprev;
}

static inline void hlist_del(struct hlist_node *n)
{
 __hlist_del(n);
 n->next = ((void *) 0x00100100);
 n->pprev = ((void *) 0x00200200);
}


static inline void hlist_del_init(struct hlist_node *n)
{
 if (n->pprev) {
  __hlist_del(n);
  ((n)->next = 
# 439 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/list.h" 3 4
 ((void *)0)
# 439 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/list.h"
 , (n)->pprev = 
# 439 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/list.h" 3 4
 ((void *)0)
# 439 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/list.h"
 );
 }
}

static inline void hlist_add_head(struct hlist_node *n, struct hlist_head *h)
{
 struct hlist_node *first = h->first;
 n->next = first;
 if (first)
  first->pprev = &n->next;
 h->first = n;
 n->pprev = &h->first;
}




static inline void hlist_add_before(struct hlist_node *n,
     struct hlist_node *next)
{
 n->pprev = next->pprev;
 n->next = next;
 next->pprev = &n->next;
 *(n->pprev) = n;
}

static inline void hlist_add_after(struct hlist_node *n,
     struct hlist_node *next)
{
 next->next = n->next;
 n->next = next;
 next->pprev = &n->next;

 if(next->next)
  next->next->pprev = &next->next;
}
# 34 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_cmds.h" 2


# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h" 1
# 52 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h"
enum
{
    TASK_NONE = (u8_l) -1,


    TASK_MM = 0,

    TASK_DBG,

    TASK_SCAN,

    TASK_TDLS,

    TASK_SCANU,

    TASK_ME,

    TASK_SM,

    TASK_APM,

    TASK_BAM,

    TASK_MESH,

    TASK_RXU,





    TASK_LAST_EMB = TASK_RXU,


    TASK_API,
    TASK_MAX,
};



enum
{

    HW_IDLE = 0,

    HW_RESERVED,

    HW_DOZE,

    HW_ACTIVE
};


enum mm_ps_mode_state
{
    MM_PS_MODE_OFF,
    MM_PS_MODE_ON,
    MM_PS_MODE_ON_DYN,
};


enum
{
    CO_OK,
    CO_FAIL,
    CO_EMPTY,
    CO_FULL,
    CO_BAD_PARAM,
    CO_NOT_FOUND,
    CO_NO_MORE_ELT_AVAILABLE,
    CO_NO_ELT_IN_USE,
    CO_BUSY,
    CO_OP_IN_PROGRESS,
};


enum mm_remain_on_channel_op
{
    MM_ROC_OP_START = 0,
    MM_ROC_OP_CANCEL,
};







typedef u16 lmac_msg_id_t;

typedef u16 lmac_task_id_t;
# 152 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h"
struct co_list_hdr
{
    struct co_list_hdr *next;
};


struct co_list
{

    struct co_list_hdr *first;

    struct co_list_hdr *last;

    u32_l cnt;







};


struct lmac_msg
{
    lmac_msg_id_t id;
    lmac_task_id_t dest_id;
    lmac_task_id_t src_id;
    u16 param_len;
    u32 param[];
};


enum mm_msg_tag
{

    MM_RESET_REQ = ((lmac_msg_id_t)((TASK_MM) << 10)),

    MM_RESET_CFM,

    MM_START_REQ,

    MM_START_CFM,

    MM_VERSION_REQ,

    MM_VERSION_CFM,

    MM_ADD_IF_REQ,

    MM_ADD_IF_CFM,

    MM_REMOVE_IF_REQ,

    MM_REMOVE_IF_CFM,

    MM_STA_ADD_REQ,

    MM_STA_ADD_CFM,

    MM_STA_DEL_REQ,

    MM_STA_DEL_CFM,

    MM_SET_FILTER_REQ,

    MM_SET_FILTER_CFM,

    MM_SET_CHANNEL_REQ,

    MM_SET_CHANNEL_CFM,

    MM_SET_DTIM_REQ,

    MM_SET_DTIM_CFM,

    MM_SET_BEACON_INT_REQ,

    MM_SET_BEACON_INT_CFM,

    MM_SET_BASIC_RATES_REQ,

    MM_SET_BASIC_RATES_CFM,

    MM_SET_BSSID_REQ,

    MM_SET_BSSID_CFM,

    MM_SET_EDCA_REQ,

    MM_SET_EDCA_CFM,

    MM_SET_MODE_REQ,

    MM_SET_MODE_CFM,

    MM_SET_VIF_STATE_REQ,

    MM_SET_VIF_STATE_CFM,

    MM_SET_SLOTTIME_REQ,

    MM_SET_SLOTTIME_CFM,

    MM_SET_IDLE_REQ,

    MM_SET_IDLE_CFM,

    MM_KEY_ADD_REQ,

    MM_KEY_ADD_CFM,

    MM_KEY_DEL_REQ,

    MM_KEY_DEL_CFM,

    MM_BA_ADD_REQ,

    MM_BA_ADD_CFM,

    MM_BA_DEL_REQ,

    MM_BA_DEL_CFM,


    MM_PRIMARY_TBTT_IND,


    MM_SECONDARY_TBTT_IND,

    MM_SET_POWER_REQ,

    MM_SET_POWER_CFM,


    MM_DENOISE_REQ,

    MM_SET_PS_MODE_REQ,

    MM_SET_PS_MODE_CFM,

    MM_CHAN_CTXT_ADD_REQ,

    MM_CHAN_CTXT_ADD_CFM,

    MM_CHAN_CTXT_DEL_REQ,

    MM_CHAN_CTXT_DEL_CFM,

    MM_CHAN_CTXT_LINK_REQ,

    MM_CHAN_CTXT_LINK_CFM,

    MM_CHAN_CTXT_UNLINK_REQ,

    MM_CHAN_CTXT_UNLINK_CFM,

    MM_CHAN_CTXT_UPDATE_REQ,

    MM_CHAN_CTXT_UPDATE_CFM,

    MM_CHAN_CTXT_SCHED_REQ,

    MM_CHAN_CTXT_SCHED_CFM,

    MM_BCN_CHANGE_REQ,

    MM_BCN_CHANGE_CFM,

    MM_TIM_UPDATE_REQ,

    MM_TIM_UPDATE_CFM,

    MM_CONNECTION_LOSS_IND,

    MM_CHANNEL_SWITCH_IND,

    MM_CHANNEL_PRE_SWITCH_IND,

    MM_REMAIN_ON_CHANNEL_REQ,

    MM_REMAIN_ON_CHANNEL_CFM,

    MM_REMAIN_ON_CHANNEL_EXP_IND,

    MM_PS_CHANGE_IND,

    MM_TRAFFIC_REQ_IND,

    MM_SET_PS_OPTIONS_REQ,

    MM_SET_PS_OPTIONS_CFM,

    MM_P2P_VIF_PS_CHANGE_IND,

    MM_CSA_COUNTER_IND,

    MM_CHANNEL_SURVEY_IND,

    MM_BFMER_ENABLE_REQ,

    MM_SET_P2P_NOA_REQ,

    MM_SET_P2P_OPPPS_REQ,

    MM_SET_P2P_NOA_CFM,

    MM_SET_P2P_OPPPS_CFM,

    MM_P2P_NOA_UPD_IND,

    MM_CFG_RSSI_REQ,

    MM_RSSI_STATUS_IND,

    MM_CSA_FINISH_IND,

    MM_CSA_TRAFFIC_IND,

    MM_MU_GROUP_UPDATE_REQ,

    MM_MU_GROUP_UPDATE_CFM,


    MM_MONITOR_REQ,
    MM_MONITOR_CFM,


    MM_MONITOR_CHANNEL_REQ,
    MM_MONITOR_CHANNEL_CFM,


    MM_MAX,
};


enum
{

    MM_STA,

    MM_IBSS,

    MM_AP,

    MM_MESH_POINT,
};


enum
{

    BA_AGMT_TX,

    BA_AGMT_RX,
};


enum
{

    BA_AGMT_ESTABLISHED,

    BA_AGMT_ALREADY_EXISTS,

    BA_AGMT_DELETED,

    BA_AGMT_DOESNT_EXIST,
};


enum mm_features
{

    MM_FEAT_BCN_BIT = 0,

    MM_FEAT_AUTOBCN_BIT,

    MM_FEAT_HWSCAN_BIT,

    MM_FEAT_CMON_BIT,

    MM_FEAT_MROLE_BIT,

    MM_FEAT_RADAR_BIT,

    MM_FEAT_PS_BIT,

    MM_FEAT_UAPSD_BIT,

    MM_FEAT_DPSM_BIT,

    MM_FEAT_AMPDU_BIT,

    MM_FEAT_AMSDU_BIT,

    MM_FEAT_CHNL_CTXT_BIT,

    MM_FEAT_REORD_BIT,

    MM_FEAT_P2P_BIT,

    MM_FEAT_P2P_GO_BIT,

    MM_FEAT_UMAC_BIT,

    MM_FEAT_VHT_BIT,

    MM_FEAT_BFMEE_BIT,

    MM_FEAT_BFMER_BIT,

    MM_FEAT_WAPI_BIT,

    MM_FEAT_MFP_BIT,

    MM_FEAT_MU_MIMO_RX_BIT,

    MM_FEAT_MU_MIMO_TX_BIT,

    MM_FEAT_MESH_BIT,

    MM_FEAT_TDLS_BIT,
};





struct phy_cfg_tag
{

    u32_l parameters[16];
};


struct mm_monitor_cfm
{
    uint32_t status;
    uint32_t enable;
    uint32_t data[8];
};


struct phy_trd_cfg_tag
{

    u8_l path_mapping;

    u32_l tx_dc_off_comp;
};


struct phy_karst_cfg_tag
{

    u32_l tx_iq_comp_2_4G[2];

    u32_l rx_iq_comp_2_4G[2];

    u32_l tx_iq_comp_5G[2];

    u32_l rx_iq_comp_5G[2];

    u8_l path_used;
};


struct mm_start_req
{

    struct phy_cfg_tag phy_cfg;

    u32_l uapsd_timeout;

    u16_l lp_clk_accuracy;
};


struct mm_set_channel_req
{

    u8_l band;

    u8_l type;

    u16_l prim20_freq;

    u16_l center1_freq;

    u16_l center2_freq;



    u8_l index;

    s8_l tx_power;
};


struct mm_set_channel_cfm
{

    u8_l radio_idx;

    s8_l power;
};


struct mm_set_dtim_req
{

    u8_l dtim_period;
};


struct mm_set_power_req
{

    u8_l inst_nbr;

    s8_l power;
};


struct mm_set_power_cfm
{

    u8_l radio_idx;

    s8_l power;
};


struct mm_set_beacon_int_req
{

    u16_l beacon_int;

    u8_l inst_nbr;
};


struct mm_set_basic_rates_req
{

    u32_l rates;

    u8_l inst_nbr;

    u8_l band;
};


struct mm_set_bssid_req
{

    struct mac_addr bssid;

    u8_l inst_nbr;
};


struct mm_set_filter_req
{

    u32_l filter;
};


struct mm_add_if_req
{

    u8_l type;

    struct mac_addr addr;

    bool_l p2p;
};


struct mm_set_edca_req
{

    u32_l ac_param;

    bool_l uapsd;

    u8_l hw_queue;

    u8_l inst_nbr;
};

struct mm_set_idle_req
{
    u8_l hw_idle;
};


struct mm_set_slottime_req
{

    u8_l slottime;
};


struct mm_set_mode_req
{

    u8_l abgnmode;
};


struct mm_set_vif_state_req
{

    u16_l aid;

    bool_l active;

    u8_l inst_nbr;
};


struct mm_add_if_cfm
{

    u8_l status;

    u8_l inst_nbr;
};


struct mm_remove_if_req
{

    u8_l inst_nbr;
};


struct mm_version_cfm
{

    u32_l version_lmac;

    u32_l version_machw_1;

    u32_l version_machw_2;

    u32_l version_phy_1;

    u32_l version_phy_2;

    u32_l features;
};


struct mm_sta_add_req
{

    u32_l ampdu_size_max_vht;

    u32_l paid_gid;

    u16_l ampdu_size_max_ht;

    struct mac_addr mac_addr;

    u8_l ampdu_spacing_min;

    u8_l inst_nbr;

    bool_l tdls_sta;
};


struct mm_sta_add_cfm
{

    u8_l status;

    u8_l sta_idx;

    u8_l hw_sta_idx;
};


struct mm_sta_del_req
{

    u8_l sta_idx;
};


struct mm_sta_del_cfm
{

    u8_l status;
};


struct mm_setpowermode_req
{
    u8_l mode;
    u8_l sta_idx;
};


struct mm_setpowermode_cfm
{
    u8_l status;
};


struct mm_key_add_req
{

    u8_l key_idx;

    u8_l sta_idx;

    struct mac_sec_key key;

    u8_l cipher_suite;

    u8_l inst_nbr;

    u8_l spp;

    bool_l pairwise;
};


struct mm_key_add_cfm
{

    u8_l status;

    u8_l hw_key_idx;
};


struct mm_key_del_req
{

    u8_l hw_key_idx;
};


struct mm_monitor_req
{
    uint32_t enable;
};


struct mm_monitor_channel_req
{
    uint32_t freq;
    uint32_t use_40Mhz;
    uint32_t higher_band;
};


struct mm_monitor_channel_cfm
{
    uint32_t status;
    uint32_t freq;
    uint32_t data[8];
};


struct mm_ba_add_req
{

    u8_l type;

    u8_l sta_idx;

    u8_l tid;

    u8_l bufsz;

    u16_l ssn;
};


struct mm_ba_add_cfm
{

    u8_l sta_idx;

    u8_l tid;

    u8_l status;
};


struct mm_ba_del_req
{

    u8_l type;

    u8_l sta_idx;

    u8_l tid;
};


struct mm_ba_del_cfm
{

    u8_l sta_idx;

    u8_l tid;

    u8_l status;
};


struct mm_chan_ctxt_add_req
{

    u8_l band;

    u8_l type;

    u16_l prim20_freq;

    u16_l center1_freq;

    u16_l center2_freq;

    s8_l tx_power;
};


struct mm_chan_ctxt_add_cfm
{

    u8_l status;

    u8_l index;
};



struct mm_chan_ctxt_del_req
{

    u8_l index;
};



struct mm_chan_ctxt_link_req
{

    u8_l vif_index;

    u8_l chan_index;

    u8_l chan_switch;
};


struct mm_chan_ctxt_unlink_req
{

    u8_l vif_index;
};


struct mm_chan_ctxt_update_req
{

    u8_l chan_index;

    u8_l band;

    u8_l type;

    u16_l prim20_freq;

    u16_l center1_freq;

    u16_l center2_freq;
};


struct mm_chan_ctxt_sched_req
{

    u8_l vif_index;

    u8_l chan_index;


    u8_l type;
};


struct mm_channel_switch_ind
{

    u8_l chan_index;

    bool_l roc;

    u8_l vif_index;

    bool_l roc_tdls;
};


struct mm_channel_pre_switch_ind
{

    u8_l chan_index;
};


struct mm_connection_loss_ind
{

    u8_l inst_nbr;
};



struct mm_dbg_trigger_req
{

    char error[64];
};


struct mm_set_ps_mode_req
{

    u8_l new_state;
};

struct mm_set_denoise_req
{
    u8_l denoise_mode;
};



struct mm_bcn_change_req
{

    u32_l bcn_ptr;

    u16_l bcn_len;

    u16_l tim_oft;

    u8_l tim_len;

    u8_l inst_nbr;

    u8_l csa_oft[2];
};



struct mm_tim_update_req
{

    u16_l aid;

    u8_l tx_avail;

    u8_l inst_nbr;
};


struct mm_remain_on_channel_req
{

    u8_l op_code;

    u8_l vif_index;

    u8_l band;

    u8_l type;

    u16_l prim20_freq;

    u16_l center1_freq;

    u16_l center2_freq;

    u32_l duration_ms;

    s8_l tx_power;
};


struct mm_remain_on_channel_cfm
{

    u8_l op_code;

    u8_l status;

    u8_l chan_ctxt_index;
};


struct mm_remain_on_channel_exp_ind
{

    u8_l vif_index;

    u8_l chan_ctxt_index;
};


struct mm_set_uapsd_tmr_req
{

    u8_l action;

    u32_l timeout;
};


struct mm_set_uapsd_tmr_cfm
{

    u8_l status;
};



struct mm_ps_change_ind
{

    u8_l sta_idx;

    u8_l ps_state;
};


struct mm_p2p_vif_ps_change_ind
{

    u8_l vif_index;

    u8_l ps_state;
};


struct mm_traffic_req_ind
{

    u8_l sta_idx;

    u8_l pkt_cnt;

    bool_l uapsd;
};


struct mm_set_ps_options_req
{

    u8_l vif_index;

    u16_l listen_interval;

    bool_l dont_listen_bc_mc;
};


struct mm_csa_counter_ind
{

    u8_l vif_index;

    u8_l csa_count;
};


struct mm_channel_survey_ind
{

    u16_l freq;

    s8_l noise_dbm;

    u32_l chan_time_ms;

    u32_l chan_time_busy_ms;
};


struct mm_bfmer_enable_req
{




    u32_l host_bfr_addr;

    u16_l aid;

    u8_l sta_idx;

    u8_l rx_nss;




    bool_l vht_mu_bfmee;
};


struct mm_set_p2p_noa_req
{

    u8_l vif_index;

    u8_l noa_inst_nb;

    u8_l count;

    bool_l dyn_noa;

    u32_l duration_us;

    u32_l interval_us;

    u32_l start_offset;
};


struct mm_set_p2p_oppps_req
{

    u8_l vif_index;

    u8_l ctwindow;
};


struct mm_set_p2p_noa_cfm
{

    u8_l status;
};


struct mm_set_p2p_oppps_cfm
{

    u8_l status;
};


struct mm_p2p_noa_upd_ind
{

    u8_l vif_index;

    u8_l noa_inst_nb;

    u8_l noa_type;

    u8_l count;

    u32_l duration_us;

    u32_l interval_us;

    u32_l start_time;
};


struct mm_cfg_rssi_req
{

    u8_l vif_index;

    s8_l rssi_thold;

    u8_l rssi_hyst;
};


struct mm_rssi_status_ind
{

    u8_l vif_index;

    bool_l rssi_status;

    s8_l rssi;
};


struct mm_csa_finish_ind
{

    u8_l vif_index;

    u8_l status;

    u8_l chan_idx;
};


struct mm_csa_traffic_ind
{

    u8_l vif_index;

    bool_l enable;
};



struct mm_mu_group_update_req
{

    u8_l sta_idx;

    u8_l group_cnt;

    struct
    {

        u8_l group_id;

        u8_l user_pos;
    } groups[];
};




enum scan_msg_tag
{

    SCAN_START_REQ = ((lmac_msg_id_t)((TASK_SCAN) << 10)),

    SCAN_START_CFM,

    SCAN_DONE_IND,

    SCAN_CANCEL_REQ,

    SCAN_CANCEL_CFM,


    SCAN_MAX,
};
# 1334 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h"
struct scan_chan_tag
{

    u16_l freq;

    u8_l band;

    u8_l flags;

    s8_l tx_power;
};


struct scan_start_req
{

    struct scan_chan_tag chan[(14 + 28)];

    struct mac_ssid ssid[2];

    struct mac_addr bssid;


    u32_l add_ies;

    u16_l add_ie_len;

    u8_l vif_idx;

    u8_l chan_cnt;

    u8_l ssid_cnt;

    
# 1367 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h" 3 4
   _Bool 
# 1367 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h"
        no_cck;
};


struct scan_start_cfm
{

    u8_l status;
};
# 1385 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h"
struct scan_cancel_cfm
{

    u8_l status;
};





enum
{

    SCANU_START_REQ = ((lmac_msg_id_t)((TASK_SCANU) << 10)),

    SCANU_START_CFM,

    SCANU_JOIN_REQ,

    SCANU_JOIN_CFM,

    SCANU_RESULT_IND,

    SCANU_RAW_SEND_REQ,

    SCANU_RAW_SEND_CFM,


    SCANU_MAX,
};


struct scanu_start_req
{

    struct scan_chan_tag chan[(14 + 28)];

    struct mac_ssid ssid[2];

    struct mac_addr bssid;


    u32_l add_ies;

    u16_l add_ie_len;

    u8_l vif_idx;

    u8_l chan_cnt;

    u8_l ssid_cnt;

    
# 1437 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h" 3 4
   _Bool 
# 1437 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h"
        no_cck;
};

struct scanu_raw_send_req
{
    void *pkt;
    uint32_t len;
};

struct scanu_raw_send_cfm
{
    uint32_t status;
};


struct scanu_start_cfm
{

    u8_l status;
};

typedef struct
{
    uint8_t wep;
    uint8_t wpa;
    uint8_t wpa2;
} Security_mode_t;

typedef struct
{
    uint8_t wep40 : 1;
    uint8_t wep104 : 1;
    uint8_t tkip : 1;
    uint8_t ccmp : 1;
    uint8_t rsvd : 4;
} Cipher_t;


struct scanu_result_ind
{

    uint16_t length;

    uint16_t framectrl;

    uint16_t center_freq;

    uint8_t band;

    uint8_t sta_idx;

    uint8_t inst_nbr;

    uint8_t sa[6];

    uint32_t tsflo;
    uint32_t tsfhi;

    int8_t rssi;

    int8_t ppm_abs;

    int8_t ppm_rel;

    uint8_t data_rate;

    uint32_t payload[];
};


struct scanu_fast_req
{

    struct mac_ssid ssid;

    struct mac_addr bssid;

    u16_l probe_delay;

    u16_l minch_time;

    u16_l maxch_time;

    u16_l ch_nbr;
};





enum
{

    ME_CONFIG_REQ = ((lmac_msg_id_t)((TASK_ME) << 10)),

    ME_CONFIG_CFM,

    ME_CHAN_CONFIG_REQ,

    ME_CHAN_CONFIG_CFM,

    ME_SET_CONTROL_PORT_REQ,

    ME_SET_CONTROL_PORT_CFM,

    ME_TKIP_MIC_FAILURE_IND,

    ME_STA_ADD_REQ,

    ME_STA_ADD_CFM,

    ME_STA_DEL_REQ,

    ME_STA_DEL_CFM,

    ME_TX_CREDITS_UPDATE_IND,

    ME_TRAFFIC_IND_REQ,

    ME_TRAFFIC_IND_CFM,

    ME_RC_STATS_REQ,

    ME_RC_STATS_CFM,

    ME_RC_SET_RATE_REQ,

    ME_MAX,
};


struct me_config_req
{

    struct mac_htcapability ht_cap;

    struct mac_vhtcapability vht_cap;

    u16_l tx_lft;

    bool_l ht_supp;

    bool_l vht_supp;

    bool_l ps_on;
};


struct me_chan_config_req
{

    struct scan_chan_tag chan2G4[14];

    struct scan_chan_tag chan5G[28];

    u8_l chan2G4_cnt;

    u8_l chan5G_cnt;
};


struct me_set_control_port_req
{

    u8_l sta_idx;

    bool_l control_port_open;
};


struct me_tkip_mic_failure_ind
{

    struct mac_addr addr;

    u64_l tsc;

    bool_l ga;

    u8_l keyid;

    u8_l vif_idx;
};


struct me_sta_add_req
{

    struct mac_addr mac_addr;

    struct mac_rateset rate_set;

    struct mac_htcapability ht_cap;

    struct mac_vhtcapability vht_cap;

    u32_l flags;

    u16_l aid;

    u8_l uapsd_queues;

    u8_l max_sp_len;


    u8_l opmode;

    u8_l vif_idx;

    bool_l tdls_sta;
    uint32_t tsflo;
    uint32_t tsfhi;
    int8_t rssi;
    uint8_t data_rate;
};


struct me_sta_add_cfm
{

    u8_l sta_idx;

    u8_l status;

    u8_l pm_state;
};


struct me_sta_del_req
{

    u8_l sta_idx;

    bool_l tdls_sta;
};


struct me_tx_credits_update_ind
{

    u8_l sta_idx;

    u8_l tid;

    s8_l credits;
};


struct me_traffic_ind_req
{

    u8_l sta_idx;

    u8_l tx_avail;

    bool_l uapsd;
};


struct me_rc_stats_req
{

 u8_l sta_idx;
};


struct step
{

    u32_l tp;

    u16_l idx;
};


struct rc_rate_stats
{

    u16_l attempts;

    u16_l success;

    u16_l probability;

    u16_l rate_config;

    u8_l sample_skipped;

    bool_l old_prob_available;

    u8_l n_retry;

    bool_l rate_allowed;
};


struct me_rc_stats_cfm
{

    u8_l sta_idx;

    u16_l no_samples;

    u16_l ampdu_len;

    u16_l ampdu_packets;

    u32_l avg_ampdu_len;

    u8_l sw_retry_step;

    u8_l sample_wait;

    struct step retry[4];

    struct rc_rate_stats rate_stats[10];

    u32_l tp[10];
};


struct me_rc_set_rate_req
{

    u8_l sta_idx;

    u16_l fixed_rate_cfg;
};





enum sm_msg_tag
{

    SM_CONNECT_REQ = ((lmac_msg_id_t)((TASK_SM) << 10)),

    SM_CONNECT_CFM,

    SM_CONNECT_IND,

    SM_DISCONNECT_REQ,

    SM_DISCONNECT_CFM,

    SM_DISCONNECT_IND,

    SM_RSP_TIMEOUT_IND,


    SM_MAX,
};


struct sm_connect_req
{

    struct mac_ssid ssid;

    struct mac_addr bssid;

    struct scan_chan_tag chan;

    u32_l flags;

    u16_l ctrl_port_ethertype;

    u16_l ie_len;

    u16_l listen_interval;

    bool_l dont_wait_bcmc;

    u8_l auth_type;

    u8_l uapsd_queues;

    u8_l vif_idx;


    u32_l ie_buf[64];

    
# 1820 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h" 3 4
   _Bool 
# 1820 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h"
        is_supplicant_enabled;

    uint8_t phrase[64];
    uint8_t phrase_pmk[64];
};


struct sm_connect_cfm
{



    u8_l status;
};



struct sm_connect_ind
{

    u16_l status_code;

    struct mac_addr bssid;

    bool_l roamed;

    u8_l vif_idx;

    u8_l ap_idx;

    u8_l ch_idx;

    bool_l qos;

    u8_l acm;

    u16_l assoc_req_ie_len;

    u16_l assoc_rsp_ie_len;

    u32_l assoc_ie_buf[800/4];

    u16_l aid;
    u8_l band;
    u16_l center_freq;
    u8_l width;
    u32_l center_freq1;
    u32_l center_freq2;


    u32_l ac_param[AC_MAX];
};


struct sm_disconnect_req
{

    u16_l reason_code;

    u8_l vif_idx;
};


struct sm_association_ind
{

    struct mac_addr me_mac_addr;
};



struct sm_disconnect_ind
{

    u16_l reason_code;

    u8_l vif_idx;

    bool_l ft_over_ds;
};






enum apm_msg_tag
{

    APM_START_REQ = ((lmac_msg_id_t)((TASK_APM) << 10)),

    APM_START_CFM,

    APM_STOP_REQ,

    APM_STOP_CFM,

    APM_START_CAC_REQ,

    APM_START_CAC_CFM,

    APM_STOP_CAC_REQ,

    APM_STOP_CAC_CFM,

    APM_STA_ADD_IND,

    APM_STA_DEL_IND,

    APM_STA_CONNECT_TIMEOUT_IND,


    APM_STA_DEL_REQ,

    APM_STA_DEL_CFM,


    APM_CONF_MAX_STA_REQ,

    APM_CONF_MAX_STA_CFM,


    APM_MAX,
};


struct apm_start_req
{

    struct mac_rateset basic_rates;

    struct scan_chan_tag chan;

    u32_l center_freq1;

    u32_l center_freq2;

    u8_l ch_width;

    u8_l hidden_ssid;

    u32_l bcn_addr;

    u16_l bcn_len;

    u16_l tim_oft;

    u16_l bcn_int;

    u32_l flags;

    u16_l ctrl_port_ethertype;

    u8_l tim_len;

    u8_l vif_idx;

    
# 1977 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h" 3 4
   _Bool 
# 1977 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h"
        apm_emb_enabled;

    struct mac_rateset rate_set;

    uint8_t beacon_period;

    uint8_t qos_supported;

    struct mac_ssid ssid;

    uint8_t ap_sec_type;

    uint8_t phrase[64];
};


struct apm_start_cfm
{

    u8_l status;

    u8_l vif_idx;

    u8_l ch_idx;

    u8_l bcmc_idx;
};


struct apm_stop_req
{

    u8_l vif_idx;
};


struct apm_conf_max_sta_req
{

    u8_l max_sta_supported;
};

struct apm_sta_del_req
{

    u8_l vif_idx;

    u8_l sta_idx;
};


struct apm_sta_del_cfm
{

    u8_l status;

    u8_l vif_idx;

    u8_l sta_idx;
};


struct apm_start_cac_req
{

    struct scan_chan_tag chan;

    u32_l center_freq1;

    u32_l center_freq2;

    u8_l ch_width;

    u8_l vif_idx;
};


struct apm_start_cac_cfm
{

    u8_l status;

    u8_l ch_idx;
};


struct apm_stop_cac_req
{

    u8_l vif_idx;
};


struct apm_sta_add_ind
{

    uint32_t flags;

    struct mac_addr sta_addr;

    uint8_t vif_idx;

    uint8_t sta_idx;
    int8_t rssi;
    uint32_t tsflo;
    uint32_t tsfhi;
    uint8_t data_rate;
};


struct apm_sta_del_ind
{

    uint8_t sta_idx;
};
# 2101 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h"
enum mesh_msg_tag
{

    MESH_START_REQ = ((lmac_msg_id_t)((TASK_MESH) << 10)),

    MESH_START_CFM,


    MESH_STOP_REQ,

    MESH_STOP_CFM,


    MESH_UPDATE_REQ,

    MESH_UPDATE_CFM,


    MESH_PEER_INFO_REQ,

    MESH_PEER_INFO_RSP,


    MESH_PATH_CREATE_REQ,

    MESH_PATH_CREATE_CFM,


    MESH_PATH_UPDATE_REQ,

    MESH_PATH_UPDATE_CFM,


    MESH_PROXY_ADD_REQ,


    MESH_PEER_UPDATE_IND,

    MESH_PEER_UPDATE_NTF = MESH_PEER_UPDATE_IND,


    MESH_PATH_UPDATE_IND,

    MESH_PROXY_UPDATE_IND,


    MESH_MAX,
};


struct mesh_start_req
{

    struct mac_rateset basic_rates;

    struct scan_chan_tag chan;

    u32_l center_freq1;

    u32_l center_freq2;

    u8_l ch_width;

    u8_l dtim_period;

    u16_l bcn_int;

    u8_l vif_index;

    u8_l mesh_id_len;

    u8_l mesh_id[(32)];

    u32_l ie_addr;

    u8_l ie_len;

    bool_l user_mpm;

    bool_l is_auth;

    u8_l auth_id;
};


struct mesh_start_cfm
{

    u8_l status;

    u8_l vif_idx;

    u8_l ch_idx;

    u8_l bcmc_idx;
};


struct mesh_stop_req
{

    u8_l vif_idx;
};


struct mesh_stop_cfm
{

    u8_l vif_idx;

    u8_l status;
};


enum mesh_update_flags_bit
{

    MESH_UPDATE_FLAGS_ROOT_MODE_BIT = 0,

    MESH_UPDATE_FLAGS_GATE_MODE_BIT,

    MESH_UPDATE_FLAGS_MESH_FWD_BIT,

    MESH_UPDATE_FLAGS_LOCAL_PSM_BIT,
};


struct mesh_update_req
{

    u8_l flags;

    u8_l vif_idx;

    u8_l root_mode;

    bool_l gate_announ;

    bool_l mesh_forward;

    u8_l local_ps_mode;
};


struct mesh_update_cfm
{

    u8_l status;
};


struct mesh_peer_info_req
{

    u8_l sta_idx;
};


struct mesh_peer_info_rsp
{

    u8_l status;

    u8_l sta_idx;

    u16_l local_link_id;

    u16_l peer_link_id;

    u8_l local_ps_mode;

    u8_l peer_ps_mode;

    u8_l non_peer_ps_mode;

    u8_l link_state;
};


struct mesh_path_create_req
{

    u8_l vif_idx;

    bool_l has_orig_addr;

    struct mac_addr tgt_mac_addr;

    struct mac_addr orig_mac_addr;
};


struct mesh_path_create_cfm
{

    u8_l status;

    u8_l vif_idx;
};


struct mesh_path_update_req
{

    bool_l delete;

    u8_l vif_idx;

    struct mac_addr tgt_mac_addr;

    struct mac_addr nhop_mac_addr;
};


struct mesh_path_update_cfm
{

    u8_l status;

    u8_l vif_idx;
};


struct mesh_proxy_add_req
{

    u8_l vif_idx;

    struct mac_addr ext_sta_addr;
};


struct mesh_proxy_update_ind
{

    bool_l delete;

    bool_l local;

    u8_l vif_idx;

    struct mac_addr ext_sta_addr;

    struct mac_addr proxy_mac_addr;
};


struct mesh_peer_update_ind
{

    bool_l estab;

    u8_l vif_idx;

    u8_l sta_idx;

    struct mac_addr peer_addr;
};


struct mesh_peer_update_ntf
{

    u8_l vif_idx;

    u8_l sta_idx;

    u8_l state;
};


struct mesh_path_update_ind
{

    bool_l delete;

    bool_l ext_sta;

    u8_l vif_idx;

    u8_l path_idx;

    struct mac_addr tgt_mac_addr;

    struct mac_addr ext_sta_mac_addr;

    u8_l nhop_sta_idx;
};






enum dbg_msg_tag
{

    DBG_MEM_READ_REQ = ((lmac_msg_id_t)((TASK_DBG) << 10)),

    DBG_MEM_READ_CFM,

    DBG_MEM_WRITE_REQ,

    DBG_MEM_WRITE_CFM,

    DBG_SET_MOD_FILTER_REQ,

    DBG_SET_MOD_FILTER_CFM,

    DBG_SET_SEV_FILTER_REQ,

    DBG_SET_SEV_FILTER_CFM,

    DBG_ERROR_IND,

    DBG_GET_SYS_STAT_REQ,

    DBG_GET_SYS_STAT_CFM,

    DBG_MAX,
};


struct dbg_mem_read_req
{
    u32_l memaddr;
};


struct dbg_mem_read_cfm
{
    u32_l memaddr;
    u32_l memdata;
};


struct dbg_mem_write_req
{
    u32_l memaddr;
    u32_l memdata;
};


struct dbg_mem_write_cfm
{
    u32_l memaddr;
    u32_l memdata;
};


struct dbg_set_mod_filter_req
{

    u32_l mod_filter;
};


struct dbg_set_sev_filter_req
{

    u32_l sev_filter;
};


struct dbg_get_sys_stat_cfm
{

    u32_l cpu_sleep_time;

    u32_l doze_time;

    u32_l stats_time;
};






enum tdls_msg_tag
{

    TDLS_CHAN_SWITCH_REQ = ((lmac_msg_id_t)((TASK_TDLS) << 10)),

    TDLS_CHAN_SWITCH_CFM,

    TDLS_CHAN_SWITCH_IND,

    TDLS_CHAN_SWITCH_BASE_IND,

    TDLS_CANCEL_CHAN_SWITCH_REQ,

    TDLS_CANCEL_CHAN_SWITCH_CFM,

    TDLS_PEER_PS_IND,

    TDLS_PEER_TRAFFIC_IND_REQ,

    TDLS_PEER_TRAFFIC_IND_CFM,

    TDLS_MAX
};


struct tdls_chan_switch_req
{

    u8_l vif_index;

    u8_l sta_idx;

    struct mac_addr peer_mac_addr;
    bool_l initiator;

    u8_l band;

    u8_l type;

    u16_l prim20_freq;

    u16_l center1_freq;

    u16_l center2_freq;

    s8_l tx_power;

    u8_l op_class;
};


struct tdls_cancel_chan_switch_req
{

    u8_l vif_index;

    u8_l sta_idx;

    struct mac_addr peer_mac_addr;
};



struct tdls_chan_switch_cfm
{

    u8_l status;
};


struct tdls_cancel_chan_switch_cfm
{

    u8_l status;
};


struct tdls_chan_switch_ind
{

    u8_l vif_index;

    u8_l chan_ctxt_index;

    u8_l status;
};


struct tdls_chan_switch_base_ind
{

    u8_l vif_index;

    u8_l chan_ctxt_index;
};


struct tdls_peer_ps_ind
{

    u8_l vif_index;

    u8_l sta_idx;

    struct mac_addr peer_mac_addr;

    
# 2586 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h" 3 4
   _Bool 
# 2586 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/lmac_msg.h"
        ps_on;
};


struct tdls_peer_traffic_ind_req
{

    u8_l vif_index;

    u8_l sta_idx;

    struct mac_addr peer_mac_addr;

    u8_l dialog_token;

    u8_l last_tid;


    u16_l last_sn;
};


struct tdls_peer_traffic_ind_cfm
{

    u8_l status;
};
# 37 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_cmds.h" 2

# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h" 1
# 115 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 35 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 56 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 74 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/platform.h" 1
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
# 116 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/semphr.h" 1
# 35 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/semphr.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h" 1
# 40 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
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
# 41 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h" 2






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
# 117 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h" 1
# 36 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h" 1
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
# 37 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h" 2
# 81 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
struct EventGroupDef_t;
typedef struct EventGroupDef_t * EventGroupHandle_t;
# 92 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
typedef TickType_t EventBits_t;
# 147 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
 EventGroupHandle_t xEventGroupCreate( void ) ;
# 200 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
 EventGroupHandle_t xEventGroupCreateStatic( StaticEventGroup_t *pxEventGroupBuffer ) ;
# 295 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupWaitBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToWaitFor, const BaseType_t xClearOnExit, const BaseType_t xWaitForAllBits, TickType_t xTicksToWait ) ;
# 352 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupClearBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear ) ;
# 408 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
 BaseType_t xEventGroupClearBitsFromISR( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear ) ;
# 485 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupSetBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet ) ;
# 560 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
 BaseType_t xEventGroupSetBitsFromISR( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 689 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupSync( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, const EventBits_t uxBitsToWaitFor, TickType_t xTicksToWait ) ;
# 725 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupGetBitsFromISR( EventGroupHandle_t xEventGroup ) ;
# 739 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/event_groups.h"
void vEventGroupDelete( EventGroupHandle_t xEventGroup ) ;


void vEventGroupSetBitsCallback( void *pvEventGroup, const uint32_t ulBitsToSet ) ;
void vEventGroupClearBitsCallback( void *pvEventGroup, const uint32_t ulBitsToClear ) ;



 UBaseType_t uxEventGroupGetNumber( void* xEventGroup ) ;
 void vEventGroupSetNumber( void* xEventGroup, UBaseType_t uxEventGroupNumber ) ;
# 118 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/message_buffer.h" 1
# 66 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/message_buffer.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h" 1
# 64 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
struct StreamBufferDef_t;
typedef struct StreamBufferDef_t * StreamBufferHandle_t;
# 308 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
size_t xStreamBufferSend( StreamBufferHandle_t xStreamBuffer,
        const void *pvTxData,
        size_t xDataLengthBytes,
        TickType_t xTicksToWait ) ;
# 409 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
size_t xStreamBufferSendFromISR( StreamBufferHandle_t xStreamBuffer,
         const void *pvTxData,
         size_t xDataLengthBytes,
         BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 498 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
size_t xStreamBufferReceive( StreamBufferHandle_t xStreamBuffer,
        void *pvRxData,
        size_t xBufferLengthBytes,
        TickType_t xTicksToWait ) ;
# 584 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
size_t xStreamBufferReceiveFromISR( StreamBufferHandle_t xStreamBuffer,
         void *pvRxData,
         size_t xBufferLengthBytes,
         BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 609 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
void vStreamBufferDelete( StreamBufferHandle_t xStreamBuffer ) ;
# 629 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
BaseType_t xStreamBufferIsFull( StreamBufferHandle_t xStreamBuffer ) ;
# 649 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
BaseType_t xStreamBufferIsEmpty( StreamBufferHandle_t xStreamBuffer ) ;
# 672 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
BaseType_t xStreamBufferReset( StreamBufferHandle_t xStreamBuffer ) ;
# 693 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
size_t xStreamBufferSpacesAvailable( StreamBufferHandle_t xStreamBuffer ) ;
# 714 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
size_t xStreamBufferBytesAvailable( StreamBufferHandle_t xStreamBuffer ) ;
# 751 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
BaseType_t xStreamBufferSetTriggerLevel( StreamBufferHandle_t xStreamBuffer, size_t xTriggerLevel ) ;
# 790 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
BaseType_t xStreamBufferSendCompletedFromISR( StreamBufferHandle_t xStreamBuffer, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 830 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/stream_buffer.h"
BaseType_t xStreamBufferReceiveCompletedFromISR( StreamBufferHandle_t xStreamBuffer, BaseType_t *pxHigherPriorityTaskWoken ) ;


StreamBufferHandle_t xStreamBufferGenericCreate( size_t xBufferSizeBytes,
             size_t xTriggerLevelBytes,
             BaseType_t xIsMessageBuffer ) ;

StreamBufferHandle_t xStreamBufferGenericCreateStatic( size_t xBufferSizeBytes,
                size_t xTriggerLevelBytes,
                BaseType_t xIsMessageBuffer,
                uint8_t * const pucStreamBufferStorageArea,
                StaticStreamBuffer_t * const pxStaticStreamBuffer ) ;

size_t xStreamBufferNextMessageLengthBytes( StreamBufferHandle_t xStreamBuffer ) ;


 void vStreamBufferSetStreamBufferNumber( StreamBufferHandle_t xStreamBuffer, UBaseType_t uxStreamBufferNumber ) ;
 UBaseType_t uxStreamBufferGetStreamBufferNumber( StreamBufferHandle_t xStreamBuffer ) ;
 uint8_t ucStreamBufferGetStreamBufferType( StreamBufferHandle_t xStreamBuffer ) ;
# 67 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/message_buffer.h" 2
# 78 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/message_buffer.h"
typedef void * MessageBufferHandle_t;
# 119 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h" 1
# 120 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h" 2
# 132 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h"
typedef StaticEventGroup_t os_event_t;
# 147 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h"
typedef SemaphoreHandle_t os_mutex_t;
# 172 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h"
typedef StaticMessageBuffer_t os_messagequeue_t;




typedef StaticTimer_t os_timer_t;
# 188 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/os_hal.h"
typedef TimerHandle_t timer_cb_arg_t;
# 39 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_cmds.h" 2
# 68 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_cmds.h"
struct bl_hw;
struct bl_cmd;
typedef int (*msg_cb_fct)(struct bl_hw *bl_hw, struct bl_cmd *cmd, struct ipc_e2a_msg *msg);


struct bl_cmd {
    struct list_head list;
    lmac_msg_id_t id;
    lmac_msg_id_t reqid;
    struct lmac_msg *a2e_msg;
    char *e2a_msg;
    u32 tkn;
    u16 flags;

    os_event_t complete;
    u32 result;
};

enum bl_cmd_mgr_state {
     RWNX_CMD_MGR_STATE_DEINIT,
     RWNX_CMD_MGR_STATE_INITED,
     RWNX_CMD_MGR_STATE_CRASHED,
};

struct bl_cmd_mgr {
    enum bl_cmd_mgr_state state;
    u32 next_tkn;
    u32 queue_sz;
    u32 max_queue_sz;

    struct list_head cmds;
    os_mutex_t lock;

    int (*queue)(struct bl_cmd_mgr *, struct bl_cmd *);
    int (*llind)(struct bl_cmd_mgr *, struct bl_cmd *);
    int (*msgind)(struct bl_cmd_mgr *, struct ipc_e2a_msg *, msg_cb_fct);
    void (*print)(struct bl_cmd_mgr *);
    void (*drain)(struct bl_cmd_mgr *);
};

void bl_cmd_mgr_init(struct bl_cmd_mgr *cmd_mgr);
# 36 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 1
# 36 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h" 1
# 37 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h" 1
# 32 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h" 1
# 202 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h"
enum ieee80211_reasoncode {
 WLAN_REASON_UNSPECIFIED = 1,
 WLAN_REASON_PREV_AUTH_NOT_VALID = 2,
 WLAN_REASON_DEAUTH_LEAVING = 3,
 WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY = 4,
 WLAN_REASON_DISASSOC_AP_BUSY = 5,
 WLAN_REASON_CLASS2_FRAME_FROM_NONAUTH_STA = 6,
 WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA = 7,
 WLAN_REASON_DISASSOC_STA_HAS_LEFT = 8,
 WLAN_REASON_STA_REQ_ASSOC_WITHOUT_AUTH = 9,

 WLAN_REASON_DISASSOC_BAD_POWER = 10,
 WLAN_REASON_DISASSOC_BAD_SUPP_CHAN = 11,

 WLAN_REASON_INVALID_IE = 13,
 WLAN_REASON_MIC_FAILURE = 14,
 WLAN_REASON_4WAY_HANDSHAKE_TIMEOUT = 15,
 WLAN_REASON_GROUP_KEY_HANDSHAKE_TIMEOUT = 16,
 WLAN_REASON_IE_DIFFERENT = 17,
 WLAN_REASON_INVALID_GROUP_CIPHER = 18,
 WLAN_REASON_INVALID_PAIRWISE_CIPHER = 19,
 WLAN_REASON_INVALID_AKMP = 20,
 WLAN_REASON_UNSUPP_RSN_VERSION = 21,
 WLAN_REASON_INVALID_RSN_IE_CAP = 22,
 WLAN_REASON_IEEE8021X_FAILED = 23,
 WLAN_REASON_CIPHER_SUITE_REJECTED = 24,

 WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE = 25,
 WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED = 26,

 WLAN_REASON_DISASSOC_UNSPECIFIED_QOS = 32,
 WLAN_REASON_DISASSOC_QAP_NO_BANDWIDTH = 33,
 WLAN_REASON_DISASSOC_LOW_ACK = 34,
 WLAN_REASON_DISASSOC_QAP_EXCEED_TXOP = 35,
 WLAN_REASON_QSTA_LEAVE_QBSS = 36,
 WLAN_REASON_QSTA_NOT_USE = 37,
 WLAN_REASON_QSTA_REQUIRE_SETUP = 38,
 WLAN_REASON_QSTA_TIMEOUT = 39,
 WLAN_REASON_QSTA_CIPHER_NOT_SUPP = 45,

 WLAN_REASON_MESH_PEER_CANCELED = 52,
 WLAN_REASON_MESH_MAX_PEERS = 53,
 WLAN_REASON_MESH_CONFIG = 54,
 WLAN_REASON_MESH_CLOSE = 55,
 WLAN_REASON_MESH_MAX_RETRIES = 56,
 WLAN_REASON_MESH_CONFIRM_TIMEOUT = 57,
 WLAN_REASON_MESH_INVALID_GTK = 58,
 WLAN_REASON_MESH_INCONSISTENT_PARAM = 59,
 WLAN_REASON_MESH_INVALID_SECURITY = 60,
 WLAN_REASON_MESH_PATH_ERROR = 61,
 WLAN_REASON_MESH_PATH_NOFORWARD = 62,
 WLAN_REASON_MESH_PATH_DEST_UNREACHABLE = 63,
 WLAN_REASON_MAC_EXISTS_IN_MBSS = 64,
 WLAN_REASON_MESH_CHAN_REGULATORY = 65,
 WLAN_REASON_MESH_CHAN = 66,
};
# 268 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h"
struct ieee80211_mcs_info {
 u8 rx_mask[10];
 __le16 rx_highest;
 u8 tx_params;
 u8 reserved[3];
};







struct ieee80211_ht_cap {
 __le16 cap_info;
 u8 ampdu_params_info;


 struct ieee80211_mcs_info mcs;

 __le16 extended_ht_cap_info;
 __le32 tx_BF_cap_info;
 u8 antenna_selection_info;
};

struct ieee80211_mgmt {
 __le16 frame_control;
 __le16 duration;
 u8 da[6];
 u8 sa[6];
 u8 bssid[6];
 __le16 seq_ctrl;
 union {
  struct {
   __le16 auth_alg;
   __le16 auth_transaction;
   __le16 status_code;

   u8 variable[0];
  } __attribute__((__packed__)) auth;
  struct {
   __le16 reason_code;
  } __attribute__((__packed__)) deauth;
  struct {
   __le16 capab_info;
   __le16 listen_interval;

   u8 variable[0];
  } __attribute__((__packed__)) assoc_req;
  struct {
   __le16 capab_info;
   __le16 status_code;
   __le16 aid;

   u8 variable[0];
  } __attribute__((__packed__)) assoc_resp, reassoc_resp;
  struct {
   __le16 capab_info;
   __le16 listen_interval;
   u8 current_ap[6];

   u8 variable[0];
  } __attribute__((__packed__)) reassoc_req;
  struct {
   __le16 reason_code;
  } __attribute__((__packed__)) disassoc;
  struct {
   __le64 timestamp;
   __le16 beacon_int;
   __le16 capab_info;


   u8 variable[0];
  } __attribute__((__packed__)) beacon;
  struct {

   u8 variable[0];
  } __attribute__((__packed__)) probe_req;
  struct {
   __le64 timestamp;
   __le16 beacon_int;
   __le16 capab_info;


   u8 variable[0];
  } __attribute__((__packed__)) probe_resp;
  struct {
   u8 category;
   union {
    struct {
     u8 action_code;
     u8 dialog_token;
     u8 status_code;
     u8 variable[0];
    } __attribute__((__packed__)) wme_action;
    struct{
     u8 action_code;
     u8 variable[0];
    } __attribute__((__packed__)) chan_switch;
    struct{
     u8 action_code;

     u8 variable[0];
    } __attribute__((__packed__)) ext_chan_switch;
    struct{
     u8 action_code;
     u8 dialog_token;
     u8 element_id;
     u8 length;

    } __attribute__((__packed__)) measurement;
    struct{
     u8 action_code;
     u8 dialog_token;
     __le16 capab;
     __le16 timeout;
     __le16 start_seq_num;
    } __attribute__((__packed__)) addba_req;
    struct{
     u8 action_code;
     u8 dialog_token;
     __le16 status;
     __le16 capab;
     __le16 timeout;
    } __attribute__((__packed__)) addba_resp;
    struct{
     u8 action_code;
     __le16 params;
     __le16 reason_code;
    } __attribute__((__packed__)) delba;
    struct {
     u8 action_code;
     u8 variable[0];
    } __attribute__((__packed__)) self_prot;
    struct{
     u8 action_code;
     u8 variable[0];
    } __attribute__((__packed__)) mesh_action;
    struct {
     u8 action;
     u8 trans_id[2];
    } __attribute__((__packed__)) sa_query;
    struct {
     u8 action;
     u8 smps_control;
    } __attribute__((__packed__)) ht_smps;
    struct {
     u8 action_code;
     u8 chanwidth;
    } __attribute__((__packed__)) ht_notify_cw;
    struct {
     u8 action_code;
     u8 dialog_token;
     __le16 capability;
     u8 variable[0];
    } __attribute__((__packed__)) tdls_discover_resp;
    struct {
     u8 action_code;
     u8 operating_mode;
    } __attribute__((__packed__)) vht_opmode_notif;
    struct {
     u8 action_code;
     u8 membership[8];
     u8 position[16];
    } __attribute__((__packed__)) vht_group_notif;
    struct {
     u8 action_code;
     u8 dialog_token;
     u8 tpc_elem_id;
     u8 tpc_elem_length;

    } __attribute__((__packed__)) tpc_report;
    struct {
     u8 action_code;
     u8 dialog_token;
     u8 follow_up;
     u8 tod[6];
     u8 toa[6];
     __le16 tod_error;
     __le16 toa_error;
     u8 variable[0];
    } __attribute__((__packed__)) ftm;
   } u;
  } __attribute__((__packed__)) action;
 } u;
} __attribute__((packed, aligned(2)));





static inline 
# 459 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h" 3 4
             _Bool 
# 459 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h"
                  ieee80211_is_beacon(__le16 fc)
{
 return (fc & (0x000c | 0x00f0)) ==
        (0x0000 | 0x0080);
}





static inline 
# 469 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h" 3 4
             _Bool 
# 469 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h"
                  ieee80211_is_deauth(__le16 fc)
{
 return (fc & (0x000c | 0x00f0)) ==
        (0x0000 | 0x00C0);
}





static inline 
# 479 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h" 3 4
             _Bool 
# 479 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h"
                  ieee80211_is_disassoc(__le16 fc)
{
 return (fc & (0x000c | 0x00f0)) ==
        (0x0000 | 0x00A0);
}





static inline 
# 489 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h" 3 4
             _Bool 
# 489 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h"
                  ieee80211_is_action(__le16 fc)
{
 return (fc & (0x000c | 0x00f0)) ==
        (0x0000 | 0x00D0);
}





static inline int ieee80211_is_probe_resp(__le16 fc)
{
        return (fc & (0x000c | 0x00f0)) ==
                       (0x0000 | 0x0050);
}





static inline 
# 509 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h" 3 4
             _Bool 
# 509 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h"
                  ieee80211_is_probe_req(__le16 fc)
{
 return (fc & (0x000c | 0x00f0)) ==
        (0x0000 | 0x0040);
}





static inline 
# 519 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h" 3 4
             _Bool 
# 519 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h"
                  ieee80211_is_data(__le16 fc)
{
 return (fc & (0x000c)) ==
        (0x0008);
}





static inline 
# 529 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h" 3 4
             _Bool 
# 529 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/ieee80211.h"
                  ieee80211_is_data_qos(__le16 fc)
{




 return (fc & (0x000c | 0x0080)) ==
        (0x0008 | 0x0080);
}
# 33 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/nl80211.h" 1
# 46 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/nl80211.h"
enum nl80211_bss_select_attr {
 __NL80211_BSS_SELECT_ATTR_INVALID,
 NL80211_BSS_SELECT_ATTR_RSSI,
 NL80211_BSS_SELECT_ATTR_BAND_PREF,
 NL80211_BSS_SELECT_ATTR_RSSI_ADJUST,


 __NL80211_BSS_SELECT_ATTR_AFTER_LAST,
 NL80211_BSS_SELECT_ATTR_MAX = __NL80211_BSS_SELECT_ATTR_AFTER_LAST - 1
};
# 74 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/nl80211.h"
enum nl80211_auth_type {
 NL80211_AUTHTYPE_OPEN_SYSTEM,
 NL80211_AUTHTYPE_SHARED_KEY,
 NL80211_AUTHTYPE_FT,
 NL80211_AUTHTYPE_NETWORK_EAP,
 NL80211_AUTHTYPE_SAE,
 NL80211_AUTHTYPE_FILS_SK,
 NL80211_AUTHTYPE_FILS_SK_PFS,
 NL80211_AUTHTYPE_FILS_PK,


 __NL80211_AUTHTYPE_NUM,
 NL80211_AUTHTYPE_MAX = __NL80211_AUTHTYPE_NUM - 1,
 NL80211_AUTHTYPE_AUTOMATIC
};
# 101 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/nl80211.h"
enum nl80211_dfs_state {
 NL80211_DFS_USABLE,
 NL80211_DFS_UNAVAILABLE,
 NL80211_DFS_AVAILABLE,
};
# 115 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/nl80211.h"
enum nl80211_band {
 NL80211_BAND_2GHZ,
 NL80211_BAND_5GHZ,
 NL80211_BAND_60GHZ,

 NUM_NL80211_BANDS,
};
# 152 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/nl80211.h"
enum nl80211_iftype {
 NL80211_IFTYPE_UNSPECIFIED,
 NL80211_IFTYPE_ADHOC,
 NL80211_IFTYPE_STATION,
 NL80211_IFTYPE_AP,
 NL80211_IFTYPE_AP_VLAN,
 NL80211_IFTYPE_WDS,
 NL80211_IFTYPE_MONITOR,
 NL80211_IFTYPE_MESH_POINT,
 NL80211_IFTYPE_P2P_CLIENT,
 NL80211_IFTYPE_P2P_GO,
 NL80211_IFTYPE_P2P_DEVICE,
 NL80211_IFTYPE_OCB,
 NL80211_IFTYPE_NAN,


 NUM_NL80211_IFTYPES,
 NL80211_IFTYPE_MAX = NUM_NL80211_IFTYPES - 1
};






enum nl80211_mfp {
 NL80211_MFP_NO,
 NL80211_MFP_REQUIRED,
};
# 34 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h" 2
# 46 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
enum ieee80211_channel_flags {
 IEEE80211_CHAN_DISABLED = 1<<0,
 IEEE80211_CHAN_NO_IR = 1<<1,

 IEEE80211_CHAN_RADAR = 1<<3,
 IEEE80211_CHAN_NO_HT40PLUS = 1<<4,
 IEEE80211_CHAN_NO_HT40MINUS = 1<<5,
 IEEE80211_CHAN_NO_OFDM = 1<<6,
 IEEE80211_CHAN_NO_80MHZ = 1<<7,
 IEEE80211_CHAN_NO_160MHZ = 1<<8,
 IEEE80211_CHAN_INDOOR_ONLY = 1<<9,
 IEEE80211_CHAN_IR_CONCURRENT = 1<<10,
 IEEE80211_CHAN_NO_20MHZ = 1<<11,
 IEEE80211_CHAN_NO_10MHZ = 1<<12,
};
# 87 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
struct ieee80211_channel {
 enum nl80211_band band;
 u16 center_freq;
 u16 hw_value;
 u32 flags;
 int max_antenna_gain;
 int max_power;
 int max_reg_power;
 
# 95 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h" 3 4
_Bool 
# 95 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
     beacon_found;
 u32 orig_flags;
 int orig_mag, orig_mpwr;
 enum nl80211_dfs_state dfs_state;
 unsigned long dfs_state_entered;
 unsigned int dfs_cac_ms;
};

struct ieee80211_dot_d {
    char *code;
    int channel_num;
    const struct ieee80211_channel *channels;
};
# 121 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
struct ieee80211_sta_ht_cap {
 u16 cap;
 
# 123 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h" 3 4
_Bool 
# 123 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
     ht_supported;
 u8 ampdu_factor;
 u8 ampdu_density;
 struct ieee80211_mcs_info mcs;
};
# 176 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
enum wiphy_flags {



 WIPHY_FLAG_NETNS_OK = (0x1U << (3)),
 WIPHY_FLAG_PS_ON_BY_DEFAULT = (0x1U << (4)),
 WIPHY_FLAG_4ADDR_AP = (0x1U << (5)),
 WIPHY_FLAG_4ADDR_STATION = (0x1U << (6)),
 WIPHY_FLAG_CONTROL_PORT_PROTOCOL = (0x1U << (7)),
 WIPHY_FLAG_IBSS_RSN = (0x1U << (8)),
 WIPHY_FLAG_MESH_AUTH = (0x1U << (10)),
 WIPHY_FLAG_SUPPORTS_SCHED_SCAN = (0x1U << (11)),

 WIPHY_FLAG_SUPPORTS_FW_ROAM = (0x1U << (13)),
 WIPHY_FLAG_AP_UAPSD = (0x1U << (14)),
 WIPHY_FLAG_SUPPORTS_TDLS = (0x1U << (15)),
 WIPHY_FLAG_TDLS_EXTERNAL_SETUP = (0x1U << (16)),
 WIPHY_FLAG_HAVE_AP_SME = (0x1U << (17)),
 WIPHY_FLAG_REPORTS_OBSS = (0x1U << (18)),
 WIPHY_FLAG_AP_PROBE_RESP_OFFLOAD = (0x1U << (19)),
 WIPHY_FLAG_OFFCHAN_TX = (0x1U << (20)),
 WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL = (0x1U << (21)),
 WIPHY_FLAG_SUPPORTS_5_10_MHZ = (0x1U << (22)),
 WIPHY_FLAG_HAS_CHANNEL_SWITCH = (0x1U << (23)),
 WIPHY_FLAG_HAS_STATIC_WEP = (0x1U << (24)),
};
# 216 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
struct key_params {
 const u8 *key;
 const u8 *seq;
 int key_len;
 int seq_len;
 u32 cipher;
};
# 245 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
struct cfg80211_crypto_settings {
 u32 wpa_versions;
 u32 cipher_group;
 int n_ciphers_pairwise;
 u32 ciphers_pairwise[5];
 int n_akm_suites;
 u32 akm_suites[2];
 
# 252 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h" 3 4
_Bool 
# 252 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
     control_port;
 __be16 control_port_ethertype;
 
# 254 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h" 3 4
_Bool 
# 254 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
     control_port_no_encrypt;
 struct key_params *wep_keys;
 int wep_tx_key;
};







struct cfg80211_bss_select_adjust {
 enum nl80211_band band;
 s8 delta;
};
# 278 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
struct cfg80211_bss_selection {
 enum nl80211_bss_select_attr behaviour;
 union {
  enum nl80211_band band_pref;
  struct cfg80211_bss_select_adjust adjust;
 } param;
};
# 331 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
struct cfg80211_connect_params {
 struct ieee80211_channel channel;
 struct ieee80211_channel *channel_hint;
 const u8 *bssid;
 const u8 *bssid_hint;
 const u8 *ssid;
 size_t ssid_len;
 enum nl80211_auth_type auth_type;
 const u8 *ie;
 size_t ie_len;
 
# 341 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h" 3 4
_Bool 
# 341 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
     privacy;
 enum nl80211_mfp mfp;
 struct cfg80211_crypto_settings crypto;
 const u8 *key;
    const u8 *pmk;
 u8 key_len, pmk_len, key_idx;
 u32 flags;
 int bg_scan_period;
 struct ieee80211_ht_cap ht_capa;
 struct ieee80211_ht_cap ht_capa_mask;
 
# 351 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h" 3 4
_Bool 
# 351 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/cfg80211.h"
     pbss;
 struct cfg80211_bss_selection bss_select;
 const u8 *prev_bssid;
};
# 38 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 2

struct bl_mod_params {
    
# 40 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 40 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        ht_on;
    
# 41 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 41 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        vht_on;
    int mcs_map;
    
# 43 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 43 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        ldpc_on;
    
# 44 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 44 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        vht_stbc;
    int phy_cfg;
    int uapsd_timeout;
    
# 47 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 47 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        ap_uapsd_on;
    
# 48 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 48 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        sgi;
    
# 49 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 49 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        sgi80;
    
# 50 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 50 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        use_2040;
    
# 51 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 51 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        use_80;
    
# 52 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 52 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        custregd;
    int nss;
    
# 54 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 54 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        bfmee;
    
# 55 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 55 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        bfmer;
    
# 56 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 56 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        mesh;
    
# 57 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 57 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        murx;
    
# 58 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 58 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        mutx;
    
# 59 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 59 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        mutx_on;
    unsigned int roc_dur_max;
    int listen_itv;
    
# 62 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 62 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        listen_bcmc;
    int lp_clk_ppm;
    
# 64 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 64 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        ps_on;
    int tx_lft;
    int amsdu_maxnb;
    int uapsd_queues;
    
# 68 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h" 3 4
   _Bool 
# 68 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_mod_params.h"
        tdls;
};

extern struct bl_mod_params bl_mod_params;

struct bl_hw;
void bl_enable_wapi(struct bl_hw *bl_hw);
void bl_enable_mfp(struct bl_hw *bl_hw);
int bl_handle_dynparams(struct bl_hw *bl_hw);
# 37 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h" 2
# 79 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h"
enum {
    SW_PROF_HOSTBUF_IDX = 12,


    SW_PROF_IRQ_E2A_RXDESC = 16,
    SW_PROF_IRQ_E2A_TXCFM,
    SW_PROF_IRQ_E2A_DBG,
    SW_PROF_IRQ_E2A_MSG,
    SW_PROF_IPC_MSGPUSH,
    SW_PROF_MSGALLOC,
    SW_PROF_MSGIND,
    SW_PROF_DBGIND,


    SW_PROF_IRQ_A2E_TXCFM_BACK,


    SW_PROF_WAIT_QUEUE_STOP,
    SW_PROF_WAIT_QUEUE_WAKEUP,
    SW_PROF_RWNXDATAIND,
    SW_PROF_RWNX_IPC_IRQ_HDLR,
    SW_PROF_RWNX_IPC_THR_IRQ_HDLR,
    SW_PROF_IEEE80211RX,
    SW_PROF_RWNX_PATTERN,
    SW_PROF_MAX
};





enum ieee80211_max_ampdu_length_exp {
    IEEE80211_HT_MAX_AMPDU_8K = 0,
    IEEE80211_HT_MAX_AMPDU_16K = 1,
    IEEE80211_HT_MAX_AMPDU_32K = 2,
    IEEE80211_HT_MAX_AMPDU_64K = 3
};
# 138 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h"
enum ieee80211_vht_mcs_support {
    IEEE80211_VHT_MCS_SUPPORT_0_7 = 0,
    IEEE80211_VHT_MCS_SUPPORT_0_8 = 1,
    IEEE80211_VHT_MCS_SUPPORT_0_9 = 2,
    IEEE80211_VHT_MCS_NOT_SUPPORTED = 3,
};

enum RWNX_INTERFACE_STATUS {
    RWNX_INTERFACE_STATUS_DOWN = 0,
    RWNX_INTERFACE_STATUS_UP = 1,
};

struct bl_stats {
    int cfm_balance;
    unsigned long last_rx, last_tx;
    int ampdus_tx[0x40];
    int ampdus_rx[0x40];
    int ampdus_rx_map[4];
    int ampdus_rx_miss;
    int amsdus_rx[64];
};

struct bl_patternbuf {
    u32 *buf;
    u32 dma_addr;
    int bufsz;
};

struct bl_dbginfo {
    os_mutex_t mutex;
    struct dbg_debug_dump_tag *buf;
    u32 dma_addr;
    int bufsz;
};

struct net_device_stats {
 unsigned long rx_packets;
 unsigned long tx_packets;
 unsigned long rx_bytes;
 unsigned long tx_bytes;
 unsigned long rx_errors;
 unsigned long tx_errors;
 unsigned long rx_dropped;
 unsigned long tx_dropped;
 unsigned long multicast;
 unsigned long collisions;
 unsigned long rx_length_errors;
 unsigned long rx_over_errors;
 unsigned long rx_crc_errors;
 unsigned long rx_frame_errors;
 unsigned long rx_fifo_errors;
 unsigned long rx_missed_errors;
 unsigned long tx_aborted_errors;
 unsigned long tx_carrier_errors;
 unsigned long tx_fifo_errors;
 unsigned long tx_heartbeat_errors;
 unsigned long tx_window_errors;
 unsigned long rx_compressed;
 unsigned long tx_compressed;
};




struct bl_sta {
    struct mac_addr sta_addr;
    u16 aid;
    u8 is_used;
    u8 sta_idx;
    u8 vif_idx;

    u8 vlan_idx;

    int8_t rssi;
    uint32_t tsflo;
    uint32_t tsfhi;
    uint8_t data_rate;
};
# 230 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h"
struct bl_bcn {
    u8 *head;
    u8 *tail;
    u8 *ies;
    size_t head_len;
    size_t tail_len;
    size_t ies_len;
    size_t tim_len;
    size_t len;
    u8 dtim;
};






struct bl_vif {
    struct list_head list;
    struct netif *dev;
    struct bl_hw *bl_hw;
    struct net_device_stats net_stats;
    u8 drv_vif_index;
    u8 vif_index;
    u8 ch_index;
    
# 255 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h" 3 4
   _Bool 
# 255 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h"
        up;

    
# 257 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h" 3 4
   _Bool 
# 257 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h"
        use_4addr;
    
# 258 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h" 3 4
   _Bool 
# 258 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h"
        is_resending;
    
# 259 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h" 3 4
   _Bool 
# 259 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h"
        user_mpm;
    
# 260 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h" 3 4
   _Bool 
# 260 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h"
        roc_tdls;

    u8 tdls_status;
    union
    {
        struct
        {
            struct bl_sta *ap;

            struct bl_sta *tdls_sta;
        } sta;
        struct
        {
            u16 flags;
            struct list_head sta_list;
            struct bl_bcn bcn;
            u8 bcmc_index;

            struct list_head mpath_list;
            struct list_head proxy_list;
            
# 280 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h" 3 4
           _Bool 
# 280 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_defs.h"
                create_path;

            int generation;
        } ap;
        struct
        {
            struct bl_vif *master;
            struct bl_sta *sta_4a;
        } ap_vlan;
    };
};

struct bl_hw {
    int is_up;
    struct bl_cmd_mgr cmd_mgr;
    struct ipc_host_env_tag *ipc_env;
    struct bl_stats stats;
    struct list_head vifs;
    struct bl_vif vif_table[2 + 10];
    struct bl_sta sta_table[10 + 2];
    unsigned long drv_flags;
    struct mm_version_cfm version_cfm;
    struct bl_mod_params *mod_params;
    enum wiphy_flags flags;
    struct ieee80211_sta_ht_cap ht_cap;
    u8 vif_started;
    int vif_index_sta;
    int vif_index_ap;


    int sta_idx;
    int ap_bcmc_idx;

    struct phy_cfg_tag phy_config;
    enum RWNX_INTERFACE_STATUS status;
};

struct ethhdr {
    unsigned char h_dest[6];
    unsigned char h_source[6];
    __be16 h_proto;
} __attribute__((packed));


enum
{

    PHY_BAND_2G4,

    PHY_BAND_5G,

    PHY_BAND_MAX,
};


enum
{

    PHY_CHNL_BW_20,

    PHY_CHNL_BW_40,

    PHY_CHNL_BW_80,

    PHY_CHNL_BW_160,

    PHY_CHNL_BW_80P80,

    PHY_CHNL_BW_OTHER,
};
# 36 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_irqs.h" 2

int bl_irqs_init(struct bl_hw *bl_hw);
int bl_irqs_enable(void);
int bl_irqs_disable(void);
int bl_irqs_notify(void);
int bl_irq_wait_event(uint32_t tick);
void bl_irq_bottomhalf(struct bl_hw *bl_hw);
# 34 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_platform.c" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_utils.h" 1
# 60 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_utils.h"
enum bl_dev_flag {
    RWNX_DEV_RESTARTING,
    RWNX_DEV_STACK_RESTARTING,
    RWNX_DEV_STARTED,
};




struct bl_e2amsg_elem {
    struct ipc_e2a_msg *msgbuf_ptr;
    u32 dma_addr;
};




struct bl_dbg_elem {
    struct ipc_dbg_msg *dbgbuf_ptr;
    u32 dma_addr;
};




struct bl_e2aradar_elem {
    struct radar_pulse_array_desc *radarbuf_ptr;
    u32 dma_addr;
};

int bl_ipc_init(struct bl_hw *bl_hw, struct ipc_shared_env_tag *ipc_shared_mem);
uint32_t* bl_utils_pbuf_alloc(void);
void bl_utils_pbuf_free(uint32_t *p);
int bl_utils_idx_lookup(struct bl_hw *bl_hw, uint8_t *mac);
# 35 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_platform.c" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_access.h" 1
# 36 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_platform.c" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/hal_desc.h" 1
# 67 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/hal_desc.h"
union bl_mcs_index {
    struct {
        u32 mcs : 3;
        u32 nss : 2;
    } ht;
    struct {
        u32 mcs : 4;
        u32 nss : 3;
    } vht;
    u32 legacy : 7;
};


union bl_rate_ctrl_info {
    struct {
        u32 mcsIndexTx : 7;
        u32 bwTx : 2;
        u32 shortGITx : 1;
        u32 preTypeTx : 1;
        u32 formatModTx : 3;
        u32 navProtFrmEx : 3;
        u32 mcsIndexProtTx : 7;
        u32 bwProtTx : 2;
        u32 formatModProtTx : 3;
        u32 nRetry : 3;
    };
    u32 value;
};


struct bl_power_ctrl_info {
    u32 txPwrLevelPT : 8;
    u32 txPwrLevelProtPT : 8;
    u32 reserved :16;
};


union bl_pol_phy_ctrl_info_1 {
    struct {
        u32 rsvd1 : 3;
        u32 bfFrmEx : 1;
        u32 numExtnSS : 2;
        u32 fecCoding : 1;
        u32 stbc : 2;
        u32 rsvd2 : 5;
        u32 nTx : 3;
        u32 nTxProt : 3;
    };
    u32 value;
};


union bl_pol_phy_ctrl_info_2 {
    struct {
        u32 antennaSet : 8;
        u32 smmIndex : 8;
        u32 beamFormed : 1;
    };
    u32 value;
};


union bl_pol_mac_ctrl_info_1 {
    struct {
        u32 keySRamIndex : 10;
        u32 keySRamIndexRA : 10;
    };
    u32 value;
};


union bl_pol_mac_ctrl_info_2 {
    struct {
        u32 longRetryLimit : 8;
        u32 shortRetryLimit : 8;
        u32 rtsThreshold : 12;
    };
    u32 value;
};



struct tx_policy_tbl {

    u32 upatterntx;

    union bl_pol_phy_ctrl_info_1 phyctrlinfo_1;

    union bl_pol_phy_ctrl_info_2 phyctrlinfo_2;

    union bl_pol_mac_ctrl_info_1 macctrlinfo_1;

    union bl_pol_mac_ctrl_info_2 macctrlinfo_2;

    union bl_rate_ctrl_info ratectrlinfos[4];
    struct bl_power_ctrl_info powerctrlinfos[4];
};
# 174 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/hal_desc.h"
union bl_hw_txstatus {
    struct {
        u32 tx_done : 1;
        u32 retry_required : 1;
        u32 sw_retry_required : 1;
        u32 reserved :29;
    };
    u32 value;
};
# 37 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_platform.c" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h" 1
# 61 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline u32 ipc_app2emb_trigger_get()
{
    return (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000000)));
}

static inline void ipc_app2emb_trigger_set(u32 value)
{
    (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000000)) = value);
}
# 78 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline u32 ipc_app2emb_trigger_getf()
{
    u32 localVal = (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000000)));
    do { if (!((localVal & ~((u32)0xFFFFFFFF)) == 0)) { printf("%d:ASSERT_ERR(" "(localVal & ~((u32)0xFFFFFFFF)) == 0" ")\n", 81); } } while(0);
    return (localVal >> 0);
}

static inline void ipc_app2emb_trigger_setf(u32 app2embtrigger)
{
    do { if (!((((u32)app2embtrigger << 0) & ~((u32)0xFFFFFFFF)) == 0)) { printf("%d:ASSERT_ERR(" "(((u32)app2embtrigger << 0) & ~((u32)0xFFFFFFFF)) == 0" ")\n", 87); } } while(0);
    (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000000)) = (u32)app2embtrigger << 0);
}
# 104 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline u32 ipc_emb2app_rawstatus_get()
{
    return (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000001)));
}

static inline void ipc_emb2app_rawstatus_set(u32 value)
{
    (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000001)) = value);
}
# 121 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline u32 ipc_emb2app_rawstatus_getf()
{
    u32 localVal = (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000001)));
    do { if (!((localVal & ~((u32)0xFFFFFFFF)) == 0)) { printf("%d:ASSERT_ERR(" "(localVal & ~((u32)0xFFFFFFFF)) == 0" ")\n", 124); } } while(0);
    return (localVal >> 0);
}
# 141 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline u32 ipc_emb2app_ack_get()
{
    return (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000002)));
}

static inline void ipc_emb2app_ack_clear(u32 value)
{
    (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000002)) = value);
}
# 158 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline u32 ipc_emb2app_ack_getf()
{
    u32 localVal = (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000002)));
    do { if (!((localVal & ~((u32)0xFFFFFFFF)) == 0)) { printf("%d:ASSERT_ERR(" "(localVal & ~((u32)0xFFFFFFFF)) == 0" ")\n", 161); } } while(0);
    return (localVal >> 0);
}

static inline void ipc_emb2app_ack_clearf(u32 emb2appack)
{
    do { if (!((((u32)emb2appack << 0) & ~((u32)0xFFFFFFFF)) == 0)) { printf("%d:ASSERT_ERR(" "(((u32)emb2appack << 0) & ~((u32)0xFFFFFFFF)) == 0" ")\n", 167); } } while(0);
    (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000002)) = (u32)emb2appack << 0);
}
# 184 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline u32 ipc_emb2app_unmask_get()
{
    return (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000003)));
}

static inline void ipc_emb2app_unmask_set(u32 value)
{
    (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000003)) = value);
}
# 201 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline u32 ipc_emb2app_unmask_getf()
{
    u32 localVal = (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000003)));
    do { if (!((localVal & ~((u32)0xFFFFFFFF)) == 0)) { printf("%d:ASSERT_ERR(" "(localVal & ~((u32)0xFFFFFFFF)) == 0" ")\n", 204); } } while(0);
    return (localVal >> 0);
}

static inline void ipc_emb2app_unmask_setf(u32 emb2appunmask)
{
    do { if (!((((u32)emb2appunmask << 0) & ~((u32)0xFFFFFFFF)) == 0)) { printf("%d:ASSERT_ERR(" "(((u32)emb2appunmask << 0) & ~((u32)0xFFFFFFFF)) == 0" ")\n", 210); } } while(0);
    (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000003)) = (u32)emb2appunmask << 0);
}
# 227 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline void ipc_emb2app_unmask_clear(u32 value)
{
    (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000004)) = value);
}


static inline void ipc_emb2app_unmask_clearf(u32 emb2appunmask)
{
    do { if (!((((u32)emb2appunmask << 0) & ~((u32)0xFFFFFFFF)) == 0)) { printf("%d:ASSERT_ERR(" "(((u32)emb2appunmask << 0) & ~((u32)0xFFFFFFFF)) == 0" ")\n", 235); } } while(0);
    (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000004)) = (u32)emb2appunmask << 0);
}
# 252 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline u32 ipc_emb2app_status_get()
{
    return (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000007)));
}

static inline void ipc_emb2app_status_set(u32 value)
{
    (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000007)) = value);
}
# 269 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline u32 ipc_emb2app_status_getf()
{
    u32 localVal = (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000007)));
    do { if (!((localVal & ~((u32)0xFFFFFFFF)) == 0)) { printf("%d:ASSERT_ERR(" "(localVal & ~((u32)0xFFFFFFFF)) == 0" ")\n", 272); } } while(0);
    return (localVal >> 0);
}
# 289 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline u32 ipc_app_signature_get()
{
      return (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000010)));
}

static inline void ipc_app_signature_set(u32 value)
{
    (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000010)) = value);
}
# 306 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h"
static inline u32 ipc_app_signature_getf()
{
    u32 localVal = (*(volatile u32*)((u8*)0x44000000 + 0x00800000 + 4*(0x00000010)));
    do { if (!((localVal & ~((u32)0xFFFFFFFF)) == 0)) { printf("%d:ASSERT_ERR(" "(localVal & ~((u32)0xFFFFFFFF)) == 0" ")\n", 309); } } while(0);
    return (localVal >> 0);
}
# 38 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_platform.c" 2
# 51 "/b-l/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/bl_platform.c"
struct ipc_shared_env_tag *ipc_shenv;
int bl_platform_on(struct bl_hw *bl_hw)
{
    int ret;

    ipc_shenv = (struct ipc_shared_env_tag *)(&ipc_shared_env);
    ret = bl_ipc_init(bl_hw, ipc_shenv);
    if (ret) {
        return ret;
    }


    ipc_emb2app_ack_clear(0xFFFFFFFF);




    return 0;
}

void bl_platform_off(struct bl_hw *bl_hw)
{
    ipc_host_disable_irq(bl_hw->ipc_env, ( ((1 << 4) - 1 ) << 7 | (1U<<(3)) | (1U<<(2)) | (1U<<(1)) | (1U<<(0)) | (1U<<(4)) | (1U<<(5)) | (1U<<(6))));




}
