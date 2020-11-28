# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c"
# 1 "/b-l/DoHome_Light_rgbcw/build_out/aws-iot//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c"
# 42 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c"
# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_common_internal.h" 1
# 46 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_common_internal.h"
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
# 47 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_common_internal.h" 2
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 149 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int wchar_t;
# 48 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_common_internal.h" 2
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 10 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
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
# 11 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3
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
# 8 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 2 3
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
# 12 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 47 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 48 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 13 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 18 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
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


# 49 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_common_internal.h" 2

# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h" 1
# 47 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 36 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 37 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3



# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 1 3 4
# 40 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 61 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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

# 48 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h" 2
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdbool.h" 1 3 4
# 49 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h" 2

# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 51 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h" 2


# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_error.h" 1
# 40 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_error.h"

# 40 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_error.h"
typedef enum {

   NETWORK_PHYSICAL_LAYER_CONNECTED = 6,

   NETWORK_MANUALLY_DISCONNECTED = 5,

   NETWORK_ATTEMPTING_RECONNECT = 4,

   NETWORK_RECONNECTED = 3,

   MQTT_NOTHING_TO_READ = 2,

   MQTT_CONNACK_CONNECTION_ACCEPTED = 1,

   SUCCESS = 0,

   FAILURE = -1,

   NULL_VALUE_ERROR = -2,

   TCP_CONNECTION_ERROR = -3,

   SSL_CONNECTION_ERROR = -4,

   TCP_SETUP_ERROR = -5,

   NETWORK_SSL_CONNECT_TIMEOUT_ERROR = -6,

   NETWORK_SSL_WRITE_ERROR = -7,

   NETWORK_SSL_INIT_ERROR = -8,

   NETWORK_SSL_CERT_ERROR = -9,

   NETWORK_SSL_WRITE_TIMEOUT_ERROR = -10,

   NETWORK_SSL_READ_TIMEOUT_ERROR = -11,

   NETWORK_SSL_READ_ERROR = -12,

   NETWORK_DISCONNECTED_ERROR = -13,

   NETWORK_RECONNECT_TIMED_OUT_ERROR = -14,

   NETWORK_ALREADY_CONNECTED_ERROR = -15,


   NETWORK_MBEDTLS_ERR_CTR_DRBG_ENTROPY_SOURCE_FAILED = -16,

   NETWORK_SSL_UNKNOWN_ERROR = -17,

   NETWORK_PHYSICAL_LAYER_DISCONNECTED = -18,

   NETWORK_X509_ROOT_CRT_PARSE_ERROR = -19,

   NETWORK_X509_DEVICE_CRT_PARSE_ERROR = -20,

   NETWORK_PK_PRIVATE_KEY_PARSE_ERROR = -21,

   NETWORK_ERR_NET_SOCKET_FAILED = -22,

   NETWORK_ERR_NET_UNKNOWN_HOST = -23,

   NETWORK_ERR_NET_CONNECT_FAILED = -24,

   NETWORK_SSL_NOTHING_TO_READ = -25,

   MQTT_CONNECTION_ERROR = -26,

   MQTT_CONNECT_TIMEOUT_ERROR = -27,

   MQTT_REQUEST_TIMEOUT_ERROR = -28,

   MQTT_UNEXPECTED_CLIENT_STATE_ERROR = -29,

   MQTT_CLIENT_NOT_IDLE_ERROR = -30,

   MQTT_RX_MESSAGE_PACKET_TYPE_INVALID_ERROR = -31,

   MQTT_RX_BUFFER_TOO_SHORT_ERROR = -32,

   MQTT_TX_BUFFER_TOO_SHORT_ERROR = -33,

   MQTT_MAX_SUBSCRIPTIONS_REACHED_ERROR = -34,

   MQTT_DECODE_REMAINING_LENGTH_ERROR = -35,

   MQTT_CONNACK_UNKNOWN_ERROR = -36,

   MQTT_CONNACK_UNACCEPTABLE_PROTOCOL_VERSION_ERROR = -37,

   MQTT_CONNACK_IDENTIFIER_REJECTED_ERROR = -38,

   MQTT_CONNACK_SERVER_UNAVAILABLE_ERROR = -39,

   MQTT_CONNACK_BAD_USERDATA_ERROR = -40,

   MQTT_CONNACK_NOT_AUTHORIZED_ERROR = -41,

   JSON_PARSE_ERROR = -42,

   SHADOW_WAIT_FOR_PUBLISH = -43,

   SHADOW_JSON_BUFFER_TRUNCATED = -44,

   SHADOW_JSON_ERROR = -45,

   MUTEX_INIT_ERROR = -46,

   MUTEX_LOCK_ERROR = -47,

   MUTEX_UNLOCK_ERROR = -48,

   MUTEX_DESTROY_ERROR = -49,

   MAX_SIZE_ERROR = -50,

   LIMIT_EXCEEDED_ERROR = -51,

   INVALID_TOPIC_TYPE_ERROR = -52
} IoT_Error_t;
# 54 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h" 2
# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/aws_iot_config.h" 1
# 24 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/aws_iot_config.h"
# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/aws_iot_log.h" 1
       


# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 1 3
# 10 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 11 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3





# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 17 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3



# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/stdlib.h" 1 3
# 21 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3

# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/alloca.h" 1 3
# 23 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3
# 33 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3



# 35 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);

__uint32_t arc4random (void);
__uint32_t arc4random_uniform (__uint32_t);
void arc4random_buf (void *, size_t);

int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);



char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);






int mkstemp (char *);


int mkstemps (char *, int);


char * mktemp (char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));


char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;

void *reallocarray(void *, size_t, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2, 3)));
void *reallocf(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2)));


char * realpath (const char *restrict path, char *restrict resolved_path);


int rpmatch (const char *response);




void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 191 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);


int on_exit (void (*__func)(int, void *),void *__arg);


void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);

int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);

int setenv (const char *__string, const char *__value, int __overwrite);

int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 224 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);


int rand_r (unsigned *__seed);



double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);


char * initstate (unsigned, char *, size_t);
long random (void);
char * setstate (char *);
void srandom (unsigned);


long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);



void cfree (void *);


int unsetenv (const char *__string);

int _unsetenv_r (struct _reent *, const char *__string);



int posix_memalign (void **, size_t, size_t) __attribute__((__nonnull__ (1)))
     __attribute__((__warn_unused_result__));


char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 312 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
void qsort_r (void *__base, size_t __nmemb, size_t __size, void *__thunk, int (*_compar)(void *, const void *, const void *))
             __asm__ ("" "__bsd_qsort_r");
# 322 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 339 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3

# 5 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/aws_iot_log.h" 2
# 25 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/aws_iot_config.h" 2
# 55 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h" 2
# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 1
# 50 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 51 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 2






# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h" 1
# 33 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h"
# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_error.h" 1
# 34 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h" 2
# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h" 1
# 37 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h"
# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/timer_platform.h" 1
# 25 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/timer_platform.h"
# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h" 1
# 26 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/timer_platform.h" 2





# 30 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/timer_platform.h"
struct Timer {
    uint32_t start_ticks;
    uint32_t timeout_ticks;
    uint32_t last_polled_ticks;
};
# 38 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h" 2
# 50 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h"
typedef struct Timer Timer;
# 60 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h"

# 60 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h" 3 4
_Bool 
# 60 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h"
    has_timer_expired(Timer *);
# 70 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h"
void countdown_ms(Timer *, uint32_t);
# 80 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h"
void countdown_sec(Timer *, uint32_t);
# 90 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h"
uint32_t left_ms(Timer *);
# 99 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h"
void init_timer(Timer *);
# 35 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h" 2
# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h" 1
# 20 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h"
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/config.h" 1
# 194 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/config.h"
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/check_config.h" 1
# 36 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/check_config.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/limits.h" 1 3 4
# 34 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/limits.h" 3 4
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/syslimits.h" 1 3 4






# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/limits.h" 1 3 4
# 194 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/limits.h" 3 4
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/limits.h" 1 3 4





# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/syslimits.h" 1 3 4
# 7 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/limits.h" 2 3 4
# 195 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/limits.h" 2 3 4
# 8 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/syslimits.h" 2 3 4
# 35 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/limits.h" 2 3 4
# 37 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/check_config.h" 2
# 673 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/check_config.h"
typedef int mbedtls_iso_c_forbids_empty_translation_units;
# 195 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/config.h" 2
# 21 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h" 2




# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/platform.h" 1
# 27 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/platform.h"
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/config.h" 1
# 28 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/platform.h" 2
# 53 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/platform.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 1 3
# 16 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 17 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3


# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/time.h" 1 3
# 20 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3
# 35 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3



# 37 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;






};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *restrict _s,
        size_t _maxsize, const char *restrict _fmt,
        const struct tm *restrict _t);


extern size_t strftime_l (char *restrict _s, size_t _maxsize,
     const char *restrict _fmt,
     const struct tm *restrict _t, locale_t _l);


char *asctime_r (const struct tm *restrict,
     char *restrict);
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *restrict,
     struct tm *restrict);
struct tm *localtime_r (const time_t *restrict,
     struct tm *restrict);


# 101 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
void tzset (void);

void _tzset_r (struct _reent *);

typedef struct __tzrule_struct
{
  char ch;
  int m;
  int n;
  int d;
  int s;
  time_t change;
  long offset;
} __tzrule_type;

typedef struct __tzinfo_struct
{
  int __tznorth;
  int __tzyear;
  __tzrule_type __tzrule[2];
} __tzinfo_type;

__tzinfo_type *__gettzinfo (void);
# 154 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
extern long _timezone;
extern int _daylight;


extern char *_tzname[2];
# 54 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/platform.h" 2
# 131 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/platform.h"
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/mycalloc.h" 1


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
# 4 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/mycalloc.h" 2
void *mycalloc(size_t numitems, size_t size);
# 132 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/platform.h" 2
# 26 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h" 2
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h" 1
# 32 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h"
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h" 1
# 32 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h" 1
# 32 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 33 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h" 2
# 130 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
     typedef int32_t mbedtls_mpi_sint;
     typedef uint32_t mbedtls_mpi_uint;
     typedef uint64_t mbedtls_t_udbl;
# 144 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
typedef struct
{
    int s;
    size_t n;
    mbedtls_mpi_uint *p;
}
mbedtls_mpi;
# 159 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
void mbedtls_mpi_init( mbedtls_mpi *X );






void mbedtls_mpi_free( mbedtls_mpi *X );
# 177 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_grow( mbedtls_mpi *X, size_t nblimbs );
# 188 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_shrink( mbedtls_mpi *X, size_t nblimbs );
# 199 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_copy( mbedtls_mpi *X, const mbedtls_mpi *Y );







void mbedtls_mpi_swap( mbedtls_mpi *X, mbedtls_mpi *Y );
# 226 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_safe_cond_assign( mbedtls_mpi *X, const mbedtls_mpi *Y, unsigned char assign );
# 245 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_safe_cond_swap( mbedtls_mpi *X, mbedtls_mpi *Y, unsigned char assign );
# 256 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_lset( mbedtls_mpi *X, mbedtls_mpi_sint z );
# 266 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_get_bit( const mbedtls_mpi *X, size_t pos );
# 282 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_set_bit( mbedtls_mpi *X, size_t pos, unsigned char val );
# 292 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
size_t mbedtls_mpi_lsb( const mbedtls_mpi *X );
# 302 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
size_t mbedtls_mpi_bitlen( const mbedtls_mpi *X );






size_t mbedtls_mpi_size( const mbedtls_mpi *X );
# 320 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_read_string( mbedtls_mpi *X, int radix, const char *s );
# 338 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_write_string( const mbedtls_mpi *X, int radix,
                              char *buf, size_t buflen, size_t *olen );
# 353 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_read_file( mbedtls_mpi *X, int radix, FILE *fin );
# 367 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_write_file( const char *p, const mbedtls_mpi *X, int radix, FILE *fout );
# 380 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_read_binary( mbedtls_mpi *X, const unsigned char *buf, size_t buflen );
# 394 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_write_binary( const mbedtls_mpi *X, unsigned char *buf, size_t buflen );
# 405 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_shift_l( mbedtls_mpi *X, size_t count );
# 416 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_shift_r( mbedtls_mpi *X, size_t count );
# 428 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_cmp_abs( const mbedtls_mpi *X, const mbedtls_mpi *Y );
# 440 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_cmp_mpi( const mbedtls_mpi *X, const mbedtls_mpi *Y );
# 452 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_cmp_int( const mbedtls_mpi *X, mbedtls_mpi_sint z );
# 464 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_add_abs( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 476 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_sub_abs( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 488 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_add_mpi( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 500 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_sub_mpi( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 512 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_add_int( mbedtls_mpi *X, const mbedtls_mpi *A, mbedtls_mpi_sint b );
# 524 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_sub_int( mbedtls_mpi *X, const mbedtls_mpi *A, mbedtls_mpi_sint b );
# 536 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_mul_mpi( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 550 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_mul_int( mbedtls_mpi *X, const mbedtls_mpi *A, mbedtls_mpi_uint b );
# 566 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_div_mpi( mbedtls_mpi *Q, mbedtls_mpi *R, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 582 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_div_int( mbedtls_mpi *Q, mbedtls_mpi *R, const mbedtls_mpi *A, mbedtls_mpi_sint b );
# 596 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_mod_mpi( mbedtls_mpi *R, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 610 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_mod_int( mbedtls_mpi_uint *r, const mbedtls_mpi *A, mbedtls_mpi_sint b );
# 630 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_exp_mod( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *E, const mbedtls_mpi *N, mbedtls_mpi *_RR );
# 643 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_fill_random( mbedtls_mpi *X, size_t size,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
# 657 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_gcd( mbedtls_mpi *G, const mbedtls_mpi *A, const mbedtls_mpi *B );
# 671 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_inv_mod( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *N );
# 684 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_is_prime( const mbedtls_mpi *X,
                  int (*f_rng)(void *, unsigned char *, size_t),
                  void *p_rng );
# 702 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/bignum.h"
int mbedtls_mpi_gen_prime( mbedtls_mpi *X, size_t nbits, int dh_flag,
                   int (*f_rng)(void *, unsigned char *, size_t),
                   void *p_rng );






int mbedtls_mpi_self_test( int verbose );
# 33 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h" 2
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h" 1
# 62 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
typedef enum
{
    MBEDTLS_ECP_DP_NONE = 0,
    MBEDTLS_ECP_DP_SECP192R1,
    MBEDTLS_ECP_DP_SECP224R1,
    MBEDTLS_ECP_DP_SECP256R1,
    MBEDTLS_ECP_DP_SECP384R1,
    MBEDTLS_ECP_DP_SECP521R1,
    MBEDTLS_ECP_DP_BP256R1,
    MBEDTLS_ECP_DP_BP384R1,
    MBEDTLS_ECP_DP_BP512R1,
    MBEDTLS_ECP_DP_CURVE25519,
    MBEDTLS_ECP_DP_SECP192K1,
    MBEDTLS_ECP_DP_SECP224K1,
    MBEDTLS_ECP_DP_SECP256K1,
} mbedtls_ecp_group_id;
# 89 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
typedef struct
{
    mbedtls_ecp_group_id grp_id;
    uint16_t tls_id;
    uint16_t bit_size;
    const char *name;
} mbedtls_ecp_curve_info;
# 106 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
typedef struct
{
    mbedtls_mpi X;
    mbedtls_mpi Y;
    mbedtls_mpi Z;
}
mbedtls_ecp_point;
# 138 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
typedef struct
{
    mbedtls_ecp_group_id id;
    mbedtls_mpi P;
    mbedtls_mpi A;
    mbedtls_mpi B;
    mbedtls_ecp_point G;
    mbedtls_mpi N;
    size_t pbits;
    size_t nbits;
    unsigned int h;
    int (*modp)(mbedtls_mpi *);
    int (*t_pre)(mbedtls_ecp_point *, void *);
    int (*t_post)(mbedtls_ecp_point *, void *);
    void *t_data;
    mbedtls_ecp_point *T;
    size_t T_size;
}
mbedtls_ecp_group;
# 165 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
typedef struct
{
    mbedtls_ecp_group grp;
    mbedtls_mpi d;
    mbedtls_ecp_point Q;
}
mbedtls_ecp_keypair;
# 249 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_list( void );
# 258 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
const mbedtls_ecp_group_id *mbedtls_ecp_grp_id_list( void );
# 267 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_grp_id( mbedtls_ecp_group_id grp_id );
# 276 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_tls_id( uint16_t tls_id );
# 285 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_name( const char *name );




void mbedtls_ecp_point_init( mbedtls_ecp_point *pt );




void mbedtls_ecp_group_init( mbedtls_ecp_group *grp );




void mbedtls_ecp_keypair_init( mbedtls_ecp_keypair *key );




void mbedtls_ecp_point_free( mbedtls_ecp_point *pt );




void mbedtls_ecp_group_free( mbedtls_ecp_group *grp );




void mbedtls_ecp_keypair_free( mbedtls_ecp_keypair *key );
# 326 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_copy( mbedtls_ecp_point *P, const mbedtls_ecp_point *Q );
# 337 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_group_copy( mbedtls_ecp_group *dst, const mbedtls_ecp_group *src );
# 347 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_set_zero( mbedtls_ecp_point *pt );
# 356 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_is_zero( mbedtls_ecp_point *pt );
# 370 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_point_cmp( const mbedtls_ecp_point *P,
                           const mbedtls_ecp_point *Q );
# 383 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_point_read_string( mbedtls_ecp_point *P, int radix,
                           const char *x, const char *y );
# 400 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_point_write_binary( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *P,
                            int format, size_t *olen,
                            unsigned char *buf, size_t buflen );
# 422 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_point_read_binary( const mbedtls_ecp_group *grp, mbedtls_ecp_point *P,
                           const unsigned char *buf, size_t ilen );
# 439 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_tls_read_point( const mbedtls_ecp_group *grp, mbedtls_ecp_point *pt,
                        const unsigned char **buf, size_t len );
# 456 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_tls_write_point( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *pt,
                         int format, size_t *olen,
                         unsigned char *buf, size_t blen );
# 473 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_group_load( mbedtls_ecp_group *grp, mbedtls_ecp_group_id index );
# 488 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_tls_read_group( mbedtls_ecp_group *grp, const unsigned char **buf, size_t len );
# 501 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_tls_write_group( const mbedtls_ecp_group *grp, size_t *olen,
                         unsigned char *buf, size_t blen );
# 530 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_mul( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 554 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_muladd( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             const mbedtls_mpi *n, const mbedtls_ecp_point *Q );
# 579 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_check_pubkey( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *pt );
# 594 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_check_privkey( const mbedtls_ecp_group *grp, const mbedtls_mpi *d );
# 613 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_gen_keypair_base( mbedtls_ecp_group *grp,
                     const mbedtls_ecp_point *G,
                     mbedtls_mpi *d, mbedtls_ecp_point *Q,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
# 635 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_gen_keypair( mbedtls_ecp_group *grp, mbedtls_mpi *d, mbedtls_ecp_point *Q,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
# 650 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_gen_key( mbedtls_ecp_group_id grp_id, mbedtls_ecp_keypair *key,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 663 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ecp.h"
int mbedtls_ecp_check_pub_priv( const mbedtls_ecp_keypair *pub, const mbedtls_ecp_keypair *prv );
# 34 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h" 2

# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl_ciphersuites.h" 1
# 26 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl_ciphersuites.h"
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h" 1
# 33 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h" 1
# 28 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 29 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h" 2
# 39 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
typedef enum {
    MBEDTLS_MD_NONE=0,
    MBEDTLS_MD_MD2,
    MBEDTLS_MD_MD4,
    MBEDTLS_MD_MD5,
    MBEDTLS_MD_SHA1,
    MBEDTLS_MD_SHA224,
    MBEDTLS_MD_SHA256,
    MBEDTLS_MD_SHA384,
    MBEDTLS_MD_SHA512,
    MBEDTLS_MD_RIPEMD160,
} mbedtls_md_type_t;
# 61 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
typedef struct mbedtls_md_info_t mbedtls_md_info_t;




typedef struct {

    const mbedtls_md_info_t *md_info;


    void *md_ctx;


    void *hmac_ctx;
} mbedtls_md_context_t;







const int *mbedtls_md_list( void );
# 94 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
const mbedtls_md_info_t *mbedtls_md_info_from_string( const char *md_name );
# 105 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
const mbedtls_md_info_t *mbedtls_md_info_from_type( mbedtls_md_type_t md_type );






void mbedtls_md_init( mbedtls_md_context_t *ctx );






void mbedtls_md_free( mbedtls_md_context_t *ctx );
# 141 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md_init_ctx( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info ) ;
# 159 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md_setup( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info, int hmac );
# 175 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md_clone( mbedtls_md_context_t *dst,
                      const mbedtls_md_context_t *src );
# 185 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
unsigned char mbedtls_md_get_size( const mbedtls_md_info_t *md_info );
# 194 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
mbedtls_md_type_t mbedtls_md_get_type( const mbedtls_md_info_t *md_info );
# 203 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
const char *mbedtls_md_get_name( const mbedtls_md_info_t *md_info );
# 215 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md_starts( mbedtls_md_context_t *ctx );
# 229 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md_update( mbedtls_md_context_t *ctx, const unsigned char *input, size_t ilen );
# 242 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md_finish( mbedtls_md_context_t *ctx, unsigned char *output );
# 255 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md( const mbedtls_md_info_t *md_info, const unsigned char *input, size_t ilen,
        unsigned char *output );
# 270 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md_file( const mbedtls_md_info_t *md_info, const char *path,
                     unsigned char *output );
# 285 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_starts( mbedtls_md_context_t *ctx, const unsigned char *key,
                    size_t keylen );
# 301 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_update( mbedtls_md_context_t *ctx, const unsigned char *input,
                    size_t ilen );
# 316 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_finish( mbedtls_md_context_t *ctx, unsigned char *output);
# 328 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac_reset( mbedtls_md_context_t *ctx );
# 343 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/md.h"
int mbedtls_md_hmac( const mbedtls_md_info_t *md_info, const unsigned char *key, size_t keylen,
                const unsigned char *input, size_t ilen,
                unsigned char *output );


int mbedtls_md_process( mbedtls_md_context_t *ctx, const unsigned char *data );
# 34 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h" 2


# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h" 1
# 81 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
typedef struct
{
    int ver;
    size_t len;

    mbedtls_mpi N;
    mbedtls_mpi E;

    mbedtls_mpi D;
    mbedtls_mpi P;
    mbedtls_mpi Q;
    mbedtls_mpi DP;
    mbedtls_mpi DQ;
    mbedtls_mpi QP;

    mbedtls_mpi RN;
    mbedtls_mpi RP;
    mbedtls_mpi RQ;

    mbedtls_mpi Vi;
    mbedtls_mpi Vf;

    int padding;

    int hash_id;






}
mbedtls_rsa_context;
# 139 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
void mbedtls_rsa_init( mbedtls_rsa_context *ctx,
               int padding,
               int hash_id);
# 151 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
void mbedtls_rsa_set_padding( mbedtls_rsa_context *ctx, int padding, int hash_id);
# 167 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_gen_key( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 unsigned int nbits, int exponent );
# 179 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_check_pubkey( const mbedtls_rsa_context *ctx );
# 188 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_check_privkey( const mbedtls_rsa_context *ctx );
# 199 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_check_pub_priv( const mbedtls_rsa_context *pub, const mbedtls_rsa_context *prv );
# 217 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_public( mbedtls_rsa_context *ctx,
                const unsigned char *input,
                unsigned char *output );
# 235 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_private( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 const unsigned char *input,
                 unsigned char *output );
# 260 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_pkcs1_encrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t ilen,
                       const unsigned char *input,
                       unsigned char *output );
# 283 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsaes_pkcs1_v15_encrypt( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode, size_t ilen,
                                 const unsigned char *input,
                                 unsigned char *output );
# 309 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsaes_oaep_encrypt( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t ilen,
                            const unsigned char *input,
                            unsigned char *output );
# 338 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_pkcs1_decrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t *olen,
                       const unsigned char *input,
                       unsigned char *output,
                       size_t output_max_len );
# 364 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsaes_pkcs1_v15_decrypt( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode, size_t *olen,
                                 const unsigned char *input,
                                 unsigned char *output,
                                 size_t output_max_len );
# 392 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsaes_oaep_decrypt( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t *olen,
                            const unsigned char *input,
                            unsigned char *output,
                            size_t output_max_len );
# 426 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_pkcs1_sign( mbedtls_rsa_context *ctx,
                    int (*f_rng)(void *, unsigned char *, size_t),
                    void *p_rng,
                    int mode,
                    mbedtls_md_type_t md_alg,
                    unsigned int hashlen,
                    const unsigned char *hash,
                    unsigned char *sig );
# 453 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pkcs1_v15_sign( mbedtls_rsa_context *ctx,
                               int (*f_rng)(void *, unsigned char *, size_t),
                               void *p_rng,
                               int mode,
                               mbedtls_md_type_t md_alg,
                               unsigned int hashlen,
                               const unsigned char *hash,
                               unsigned char *sig );
# 486 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pss_sign( mbedtls_rsa_context *ctx,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng,
                         int mode,
                         mbedtls_md_type_t md_alg,
                         unsigned int hashlen,
                         const unsigned char *hash,
                         unsigned char *sig );
# 518 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_pkcs1_verify( mbedtls_rsa_context *ctx,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng,
                      int mode,
                      mbedtls_md_type_t md_alg,
                      unsigned int hashlen,
                      const unsigned char *hash,
                      const unsigned char *sig );
# 545 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pkcs1_v15_verify( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode,
                                 mbedtls_md_type_t md_alg,
                                 unsigned int hashlen,
                                 const unsigned char *hash,
                                 const unsigned char *sig );
# 579 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pss_verify( mbedtls_rsa_context *ctx,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng,
                           int mode,
                           mbedtls_md_type_t md_alg,
                           unsigned int hashlen,
                           const unsigned char *hash,
                           const unsigned char *sig );
# 612 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_rsassa_pss_verify_ext( mbedtls_rsa_context *ctx,
                               int (*f_rng)(void *, unsigned char *, size_t),
                               void *p_rng,
                               int mode,
                               mbedtls_md_type_t md_alg,
                               unsigned int hashlen,
                               const unsigned char *hash,
                               mbedtls_md_type_t mgf1_hash_id,
                               int expected_salt_len,
                               const unsigned char *sig );
# 632 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/rsa.h"
int mbedtls_rsa_copy( mbedtls_rsa_context *dst, const mbedtls_rsa_context *src );






void mbedtls_rsa_free( mbedtls_rsa_context *ctx );






int mbedtls_rsa_self_test( int verbose );
# 37 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h" 2
# 78 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
typedef enum {
    MBEDTLS_PK_NONE=0,
    MBEDTLS_PK_RSA,
    MBEDTLS_PK_ECKEY,
    MBEDTLS_PK_ECKEY_DH,
    MBEDTLS_PK_ECDSA,
    MBEDTLS_PK_RSA_ALT,
    MBEDTLS_PK_RSASSA_PSS,
} mbedtls_pk_type_t;





typedef struct
{
    mbedtls_md_type_t mgf1_hash_id;
    int expected_salt_len;

} mbedtls_pk_rsassa_pss_options;




typedef enum
{
    MBEDTLS_PK_DEBUG_NONE = 0,
    MBEDTLS_PK_DEBUG_MPI,
    MBEDTLS_PK_DEBUG_ECP,
} mbedtls_pk_debug_type;




typedef struct
{
    mbedtls_pk_debug_type type;
    const char *name;
    void *value;
} mbedtls_pk_debug_item;







typedef struct mbedtls_pk_info_t mbedtls_pk_info_t;




typedef struct
{
    const mbedtls_pk_info_t * pk_info;
    void * pk_ctx;
} mbedtls_pk_context;
# 143 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
static inline mbedtls_rsa_context *mbedtls_pk_rsa( const mbedtls_pk_context pk )
{
    return( (mbedtls_rsa_context *) (pk).pk_ctx );
}
# 156 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
static inline mbedtls_ecp_keypair *mbedtls_pk_ec( const mbedtls_pk_context pk )
{
    return( (mbedtls_ecp_keypair *) (pk).pk_ctx );
}
# 183 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
const mbedtls_pk_info_t *mbedtls_pk_info_from_type( mbedtls_pk_type_t pk_type );




void mbedtls_pk_init( mbedtls_pk_context *ctx );




void mbedtls_pk_free( mbedtls_pk_context *ctx );
# 209 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_setup( mbedtls_pk_context *ctx, const mbedtls_pk_info_t *info );
# 239 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
size_t mbedtls_pk_get_bitlen( const mbedtls_pk_context *ctx );







static inline size_t mbedtls_pk_get_len( const mbedtls_pk_context *ctx )
{
    return( ( mbedtls_pk_get_bitlen( ctx ) + 7 ) / 8 );
}
# 261 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_can_do( const mbedtls_pk_context *ctx, mbedtls_pk_type_t type );
# 287 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_verify( mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
               const unsigned char *hash, size_t hash_len,
               const unsigned char *sig, size_t sig_len );
# 320 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_verify_ext( mbedtls_pk_type_t type, const void *options,
                   mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   const unsigned char *sig, size_t sig_len );
# 349 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_sign( mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
             const unsigned char *hash, size_t hash_len,
             unsigned char *sig, size_t *sig_len,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 370 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_decrypt( mbedtls_pk_context *ctx,
                const unsigned char *input, size_t ilen,
                unsigned char *output, size_t *olen, size_t osize,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 391 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_encrypt( mbedtls_pk_context *ctx,
                const unsigned char *input, size_t ilen,
                unsigned char *output, size_t *olen, size_t osize,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
# 404 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_check_pair( const mbedtls_pk_context *pub, const mbedtls_pk_context *prv );
# 414 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_debug( const mbedtls_pk_context *ctx, mbedtls_pk_debug_item *items );
# 423 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
const char * mbedtls_pk_get_name( const mbedtls_pk_context *ctx );
# 432 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
mbedtls_pk_type_t mbedtls_pk_get_type( const mbedtls_pk_context *ctx );
# 454 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_key( mbedtls_pk_context *ctx,
                  const unsigned char *key, size_t keylen,
                  const unsigned char *pwd, size_t pwdlen );
# 475 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_public_key( mbedtls_pk_context *ctx,
                         const unsigned char *key, size_t keylen );
# 495 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_keyfile( mbedtls_pk_context *ctx,
                      const char *path, const char *password );
# 514 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_public_keyfile( mbedtls_pk_context *ctx, const char *path );
# 589 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_parse_subpubkey( unsigned char **p, const unsigned char *end,
                        mbedtls_pk_context *pk );
# 613 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/pk.h"
int mbedtls_pk_load_file( const char *path, unsigned char **buf, size_t *n );
# 27 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl_ciphersuites.h" 2
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 1
# 35 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 36 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 2
# 69 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
typedef enum {
    MBEDTLS_CIPHER_ID_NONE = 0,
    MBEDTLS_CIPHER_ID_NULL,
    MBEDTLS_CIPHER_ID_AES,
    MBEDTLS_CIPHER_ID_DES,
    MBEDTLS_CIPHER_ID_3DES,
    MBEDTLS_CIPHER_ID_CAMELLIA,
    MBEDTLS_CIPHER_ID_BLOWFISH,
    MBEDTLS_CIPHER_ID_ARC4,
} mbedtls_cipher_id_t;

typedef enum {
    MBEDTLS_CIPHER_NONE = 0,
    MBEDTLS_CIPHER_NULL,
    MBEDTLS_CIPHER_AES_128_ECB,
    MBEDTLS_CIPHER_AES_192_ECB,
    MBEDTLS_CIPHER_AES_256_ECB,
    MBEDTLS_CIPHER_AES_128_CBC,
    MBEDTLS_CIPHER_AES_192_CBC,
    MBEDTLS_CIPHER_AES_256_CBC,
    MBEDTLS_CIPHER_AES_128_CFB128,
    MBEDTLS_CIPHER_AES_192_CFB128,
    MBEDTLS_CIPHER_AES_256_CFB128,
    MBEDTLS_CIPHER_AES_128_CTR,
    MBEDTLS_CIPHER_AES_192_CTR,
    MBEDTLS_CIPHER_AES_256_CTR,
    MBEDTLS_CIPHER_AES_128_GCM,
    MBEDTLS_CIPHER_AES_192_GCM,
    MBEDTLS_CIPHER_AES_256_GCM,
    MBEDTLS_CIPHER_CAMELLIA_128_ECB,
    MBEDTLS_CIPHER_CAMELLIA_192_ECB,
    MBEDTLS_CIPHER_CAMELLIA_256_ECB,
    MBEDTLS_CIPHER_CAMELLIA_128_CBC,
    MBEDTLS_CIPHER_CAMELLIA_192_CBC,
    MBEDTLS_CIPHER_CAMELLIA_256_CBC,
    MBEDTLS_CIPHER_CAMELLIA_128_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_192_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_256_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_128_CTR,
    MBEDTLS_CIPHER_CAMELLIA_192_CTR,
    MBEDTLS_CIPHER_CAMELLIA_256_CTR,
    MBEDTLS_CIPHER_CAMELLIA_128_GCM,
    MBEDTLS_CIPHER_CAMELLIA_192_GCM,
    MBEDTLS_CIPHER_CAMELLIA_256_GCM,
    MBEDTLS_CIPHER_DES_ECB,
    MBEDTLS_CIPHER_DES_CBC,
    MBEDTLS_CIPHER_DES_EDE_ECB,
    MBEDTLS_CIPHER_DES_EDE_CBC,
    MBEDTLS_CIPHER_DES_EDE3_ECB,
    MBEDTLS_CIPHER_DES_EDE3_CBC,
    MBEDTLS_CIPHER_BLOWFISH_ECB,
    MBEDTLS_CIPHER_BLOWFISH_CBC,
    MBEDTLS_CIPHER_BLOWFISH_CFB64,
    MBEDTLS_CIPHER_BLOWFISH_CTR,
    MBEDTLS_CIPHER_ARC4_128,
    MBEDTLS_CIPHER_AES_128_CCM,
    MBEDTLS_CIPHER_AES_192_CCM,
    MBEDTLS_CIPHER_AES_256_CCM,
    MBEDTLS_CIPHER_CAMELLIA_128_CCM,
    MBEDTLS_CIPHER_CAMELLIA_192_CCM,
    MBEDTLS_CIPHER_CAMELLIA_256_CCM,
} mbedtls_cipher_type_t;

typedef enum {
    MBEDTLS_MODE_NONE = 0,
    MBEDTLS_MODE_ECB,
    MBEDTLS_MODE_CBC,
    MBEDTLS_MODE_CFB,
    MBEDTLS_MODE_OFB,
    MBEDTLS_MODE_CTR,
    MBEDTLS_MODE_GCM,
    MBEDTLS_MODE_STREAM,
    MBEDTLS_MODE_CCM,
} mbedtls_cipher_mode_t;

typedef enum {
    MBEDTLS_PADDING_PKCS7 = 0,
    MBEDTLS_PADDING_ONE_AND_ZEROS,
    MBEDTLS_PADDING_ZEROS_AND_LEN,
    MBEDTLS_PADDING_ZEROS,
    MBEDTLS_PADDING_NONE,
} mbedtls_cipher_padding_t;

typedef enum {
    MBEDTLS_OPERATION_NONE = -1,
    MBEDTLS_DECRYPT = 0,
    MBEDTLS_ENCRYPT,
} mbedtls_operation_t;

enum {

    MBEDTLS_KEY_LENGTH_NONE = 0,

    MBEDTLS_KEY_LENGTH_DES = 64,

    MBEDTLS_KEY_LENGTH_DES_EDE = 128,

    MBEDTLS_KEY_LENGTH_DES_EDE3 = 192,
};
# 177 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
typedef struct mbedtls_cipher_base_t mbedtls_cipher_base_t;




typedef struct mbedtls_cmac_context_t mbedtls_cmac_context_t;




typedef struct {

    mbedtls_cipher_type_t type;


    mbedtls_cipher_mode_t mode;



    unsigned int key_bitlen;


    const char * name;



    unsigned int iv_size;


    int flags;


    unsigned int block_size;


    const mbedtls_cipher_base_t *base;

} mbedtls_cipher_info_t;




typedef struct {

    const mbedtls_cipher_info_t *cipher_info;


    int key_bitlen;


    mbedtls_operation_t operation;



    void (*add_padding)( unsigned char *output, size_t olen, size_t data_len );
    int (*get_padding)( unsigned char *input, size_t ilen, size_t *data_len );



    unsigned char unprocessed_data[16];


    size_t unprocessed_len;


    unsigned char iv[16];


    size_t iv_size;


    void *cipher_ctx;





} mbedtls_cipher_context_t;







const int *mbedtls_cipher_list( void );
# 273 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_string( const char *cipher_name );
# 284 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_type( const mbedtls_cipher_type_t cipher_type );
# 298 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_values( const mbedtls_cipher_id_t cipher_id,
                                              int key_bitlen,
                                              const mbedtls_cipher_mode_t mode );




void mbedtls_cipher_init( mbedtls_cipher_context_t *ctx );






void mbedtls_cipher_free( mbedtls_cipher_context_t *ctx );
# 330 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_setup( mbedtls_cipher_context_t *ctx, const mbedtls_cipher_info_t *cipher_info );
# 340 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
static inline unsigned int mbedtls_cipher_get_block_size( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 342 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 342 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 342 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 342 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return 0;

    return ctx->cipher_info->block_size;
}
# 357 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
static inline mbedtls_cipher_mode_t mbedtls_cipher_get_cipher_mode( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 359 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 359 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 359 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 359 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return MBEDTLS_MODE_NONE;

    return ctx->cipher_info->mode;
}
# 374 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
static inline int mbedtls_cipher_get_iv_size( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 376 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 376 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 376 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 376 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return 0;

    if( ctx->iv_size != 0 )
        return (int) ctx->iv_size;

    return (int) ctx->cipher_info->iv_size;
}
# 393 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
static inline mbedtls_cipher_type_t mbedtls_cipher_get_type( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 395 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 395 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 395 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 395 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return MBEDTLS_CIPHER_NONE;

    return ctx->cipher_info->type;
}
# 408 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
static inline const char *mbedtls_cipher_get_name( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 410 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 410 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 410 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 410 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return 0;

    return ctx->cipher_info->name;
}
# 425 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
static inline int mbedtls_cipher_get_key_bitlen( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 427 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 427 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 427 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 427 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return MBEDTLS_KEY_LENGTH_NONE;

    return (int) ctx->cipher_info->key_bitlen;
}
# 442 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
static inline mbedtls_operation_t mbedtls_cipher_get_operation( const mbedtls_cipher_context_t *ctx )
{
    if( 
# 444 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
       ((void *)0) 
# 444 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
            == ctx || 
# 444 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h" 3 4
                      ((void *)0) 
# 444 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
                           == ctx->cipher_info )
        return MBEDTLS_OPERATION_NONE;

    return ctx->operation;
}
# 465 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_setkey( mbedtls_cipher_context_t *ctx, const unsigned char *key,
                   int key_bitlen, const mbedtls_operation_t operation );
# 481 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_set_padding_mode( mbedtls_cipher_context_t *ctx, mbedtls_cipher_padding_t mode );
# 497 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_set_iv( mbedtls_cipher_context_t *ctx,
                   const unsigned char *iv, size_t iv_len );
# 508 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_reset( mbedtls_cipher_context_t *ctx );
# 522 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_update_ad( mbedtls_cipher_context_t *ctx,
                      const unsigned char *ad, size_t ad_len );
# 555 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_update( mbedtls_cipher_context_t *ctx, const unsigned char *input,
                   size_t ilen, unsigned char *output, size_t *olen );
# 575 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_finish( mbedtls_cipher_context_t *ctx,
                   unsigned char *output, size_t *olen );
# 590 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_write_tag( mbedtls_cipher_context_t *ctx,
                      unsigned char *tag, size_t tag_len );
# 604 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_check_tag( mbedtls_cipher_context_t *ctx,
                      const unsigned char *tag, size_t tag_len );
# 635 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_crypt( mbedtls_cipher_context_t *ctx,
                  const unsigned char *iv, size_t iv_len,
                  const unsigned char *input, size_t ilen,
                  unsigned char *output, size_t *olen );
# 663 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_auth_encrypt( mbedtls_cipher_context_t *ctx,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *ad, size_t ad_len,
                         const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen,
                         unsigned char *tag, size_t tag_len );
# 697 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/cipher.h"
int mbedtls_cipher_auth_decrypt( mbedtls_cipher_context_t *ctx,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *ad, size_t ad_len,
                         const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen,
                         const unsigned char *tag, size_t tag_len );
# 28 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl_ciphersuites.h" 2
# 237 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl_ciphersuites.h"
typedef enum {
    MBEDTLS_KEY_EXCHANGE_NONE = 0,
    MBEDTLS_KEY_EXCHANGE_RSA,
    MBEDTLS_KEY_EXCHANGE_DHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
    MBEDTLS_KEY_EXCHANGE_PSK,
    MBEDTLS_KEY_EXCHANGE_DHE_PSK,
    MBEDTLS_KEY_EXCHANGE_RSA_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
    MBEDTLS_KEY_EXCHANGE_ECJPAKE,
} mbedtls_key_exchange_type_t;
# 278 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl_ciphersuites.h"
typedef struct mbedtls_ssl_ciphersuite_t mbedtls_ssl_ciphersuite_t;
# 288 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl_ciphersuites.h"
struct mbedtls_ssl_ciphersuite_t
{
    int id;
    const char * name;

    mbedtls_cipher_type_t cipher;
    mbedtls_md_type_t mac;
    mbedtls_key_exchange_type_t key_exchange;

    int min_major_ver;
    int min_minor_ver;
    int max_major_ver;
    int max_minor_ver;

    unsigned char flags;
};

const int *mbedtls_ssl_list_ciphersuites( void );

const mbedtls_ssl_ciphersuite_t *mbedtls_ssl_ciphersuite_from_string( const char *ciphersuite_name );
const mbedtls_ssl_ciphersuite_t *mbedtls_ssl_ciphersuite_from_id( int ciphersuite_id );


mbedtls_pk_type_t mbedtls_ssl_get_ciphersuite_sig_pk_alg( const mbedtls_ssl_ciphersuite_t *info );


int mbedtls_ssl_ciphersuite_uses_ec( const mbedtls_ssl_ciphersuite_t *info );
int mbedtls_ssl_ciphersuite_uses_psk( const mbedtls_ssl_ciphersuite_t *info );
# 36 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h" 2


# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h" 1
# 32 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509.h" 1
# 32 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509.h"
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h" 1
# 32 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 33 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h" 2
# 118 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
typedef struct mbedtls_asn1_buf
{
    int tag;
    size_t len;
    unsigned char *p;
}
mbedtls_asn1_buf;




typedef struct mbedtls_asn1_bitstring
{
    size_t len;
    unsigned char unused_bits;
    unsigned char *p;
}
mbedtls_asn1_bitstring;




typedef struct mbedtls_asn1_sequence
{
    mbedtls_asn1_buf buf;
    struct mbedtls_asn1_sequence *next;
}
mbedtls_asn1_sequence;




typedef struct mbedtls_asn1_named_data
{
    mbedtls_asn1_buf oid;
    mbedtls_asn1_buf val;
    struct mbedtls_asn1_named_data *next;
    unsigned char next_merged;
}
mbedtls_asn1_named_data;
# 171 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_len( unsigned char **p,
                  const unsigned char *end,
                  size_t *len );
# 187 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_tag( unsigned char **p,
                  const unsigned char *end,
                  size_t *len, int tag );
# 201 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_bool( unsigned char **p,
                   const unsigned char *end,
                   int *val );
# 215 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_int( unsigned char **p,
                  const unsigned char *end,
                  int *val );
# 229 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_bitstring( unsigned char **p, const unsigned char *end,
                        mbedtls_asn1_bitstring *bs);
# 243 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_bitstring_null( unsigned char **p, const unsigned char *end,
                             size_t *len );
# 257 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_sequence_of( unsigned char **p,
                          const unsigned char *end,
                          mbedtls_asn1_sequence *cur,
                          int tag);
# 273 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_mpi( unsigned char **p,
                  const unsigned char *end,
                  mbedtls_mpi *X );
# 290 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_alg( unsigned char **p,
                  const unsigned char *end,
                  mbedtls_asn1_buf *alg, mbedtls_asn1_buf *params );
# 306 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
int mbedtls_asn1_get_alg_null( unsigned char **p,
                       const unsigned char *end,
                       mbedtls_asn1_buf *alg );
# 320 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/asn1.h"
mbedtls_asn1_named_data *mbedtls_asn1_find_named_data( mbedtls_asn1_named_data *list,
                                       const char *oid, size_t len );






void mbedtls_asn1_free_named_data( mbedtls_asn1_named_data *entry );







void mbedtls_asn1_free_named_data_list( mbedtls_asn1_named_data **head );
# 33 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509.h" 2
# 187 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509.h"
typedef mbedtls_asn1_buf mbedtls_x509_buf;




typedef mbedtls_asn1_bitstring mbedtls_x509_bitstring;





typedef mbedtls_asn1_named_data mbedtls_x509_name;




typedef mbedtls_asn1_sequence mbedtls_x509_sequence;


typedef struct mbedtls_x509_time
{
    int year, mon, day;
    int hour, min, sec;
}
mbedtls_x509_time;
# 228 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_dn_gets( char *buf, size_t size, const mbedtls_x509_name *dn );
# 242 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_serial_gets( char *buf, size_t size, const mbedtls_x509_buf *serial );
# 256 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_time_is_past( const mbedtls_x509_time *time );
# 270 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509.h"
int mbedtls_x509_time_is_future( const mbedtls_x509_time *time );






int mbedtls_x509_self_test( int verbose );





int mbedtls_x509_get_name( unsigned char **p, const unsigned char *end,
                   mbedtls_x509_name *cur );
int mbedtls_x509_get_alg_null( unsigned char **p, const unsigned char *end,
                       mbedtls_x509_buf *alg );
int mbedtls_x509_get_alg( unsigned char **p, const unsigned char *end,
                  mbedtls_x509_buf *alg, mbedtls_x509_buf *params );





int mbedtls_x509_get_sig( unsigned char **p, const unsigned char *end, mbedtls_x509_buf *sig );
int mbedtls_x509_get_sig_alg( const mbedtls_x509_buf *sig_oid, const mbedtls_x509_buf *sig_params,
                      mbedtls_md_type_t *md_alg, mbedtls_pk_type_t *pk_alg,
                      void **sig_opts );
int mbedtls_x509_get_time( unsigned char **p, const unsigned char *end,
                   mbedtls_x509_time *time );
int mbedtls_x509_get_serial( unsigned char **p, const unsigned char *end,
                     mbedtls_x509_buf *serial );
int mbedtls_x509_get_ext( unsigned char **p, const unsigned char *end,
                  mbedtls_x509_buf *ext, int tag );

int mbedtls_x509_sig_alg_gets( char *buf, size_t size, const mbedtls_x509_buf *sig_oid,
                       mbedtls_pk_type_t pk_alg, mbedtls_md_type_t md_alg,
                       const void *sig_opts );

int mbedtls_x509_key_size_helper( char *buf, size_t buf_size, const char *name );
int mbedtls_x509_string_to_names( mbedtls_asn1_named_data **head, const char *name );
int mbedtls_x509_set_extension( mbedtls_asn1_named_data **head, const char *oid, size_t oid_len,
                        int critical, const unsigned char *val,
                        size_t val_len );
int mbedtls_x509_write_extensions( unsigned char **p, unsigned char *start,
                           mbedtls_asn1_named_data *first );
int mbedtls_x509_write_names( unsigned char **p, unsigned char *start,
                      mbedtls_asn1_named_data *first );
int mbedtls_x509_write_sig( unsigned char **p, unsigned char *start,
                    const char *oid, size_t oid_len,
                    unsigned char *sig, size_t size );
# 33 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h" 2
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crl.h" 1
# 51 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crl.h"
typedef struct mbedtls_x509_crl_entry
{
    mbedtls_x509_buf raw;

    mbedtls_x509_buf serial;

    mbedtls_x509_time revocation_date;

    mbedtls_x509_buf entry_ext;

    struct mbedtls_x509_crl_entry *next;
}
mbedtls_x509_crl_entry;





typedef struct mbedtls_x509_crl
{
    mbedtls_x509_buf raw;
    mbedtls_x509_buf tbs;

    int version;
    mbedtls_x509_buf sig_oid;

    mbedtls_x509_buf issuer_raw;

    mbedtls_x509_name issuer;

    mbedtls_x509_time this_update;
    mbedtls_x509_time next_update;

    mbedtls_x509_crl_entry entry;

    mbedtls_x509_buf crl_ext;

    mbedtls_x509_buf sig_oid2;
    mbedtls_x509_buf sig;
    mbedtls_md_type_t sig_md;
    mbedtls_pk_type_t sig_pk;
    void *sig_opts;

    struct mbedtls_x509_crl *next;
}
mbedtls_x509_crl;
# 108 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crl.h"
int mbedtls_x509_crl_parse_der( mbedtls_x509_crl *chain,
                        const unsigned char *buf, size_t buflen );
# 122 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crl.h"
int mbedtls_x509_crl_parse( mbedtls_x509_crl *chain, const unsigned char *buf, size_t buflen );
# 135 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crl.h"
int mbedtls_x509_crl_parse_file( mbedtls_x509_crl *chain, const char *path );
# 149 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crl.h"
int mbedtls_x509_crl_info( char *buf, size_t size, const char *prefix,
                   const mbedtls_x509_crl *crl );






void mbedtls_x509_crl_init( mbedtls_x509_crl *crl );






void mbedtls_x509_crl_free( mbedtls_x509_crl *crl );
# 34 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h" 2
# 52 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
typedef struct mbedtls_x509_crt
{
    mbedtls_x509_buf raw;
    mbedtls_x509_buf tbs;

    int version;
    mbedtls_x509_buf serial;
    mbedtls_x509_buf sig_oid;

    mbedtls_x509_buf issuer_raw;
    mbedtls_x509_buf subject_raw;

    mbedtls_x509_name issuer;
    mbedtls_x509_name subject;

    mbedtls_x509_time valid_from;
    mbedtls_x509_time valid_to;

    mbedtls_pk_context pk;

    mbedtls_x509_buf issuer_id;
    mbedtls_x509_buf subject_id;
    mbedtls_x509_buf v3_ext;
    mbedtls_x509_sequence subject_alt_names;

    int ext_types;
    int ca_istrue;
    int max_pathlen;

    unsigned int key_usage;

    mbedtls_x509_sequence ext_key_usage;

    unsigned char ns_cert_type;

    mbedtls_x509_buf sig;
    mbedtls_md_type_t sig_md;
    mbedtls_pk_type_t sig_pk;
    void *sig_opts;

    struct mbedtls_x509_crt *next;
}
mbedtls_x509_crt;
# 107 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
typedef struct
{
    uint32_t allowed_mds;
    uint32_t allowed_pks;
    uint32_t allowed_curves;
    uint32_t rsa_min_bitlen;
}
mbedtls_x509_crt_profile;
# 152 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
extern const mbedtls_x509_crt_profile mbedtls_x509_crt_profile_default;





extern const mbedtls_x509_crt_profile mbedtls_x509_crt_profile_next;




extern const mbedtls_x509_crt_profile mbedtls_x509_crt_profile_suiteb;
# 175 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_parse_der( mbedtls_x509_crt *chain, const unsigned char *buf,
                        size_t buflen );
# 193 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_parse( mbedtls_x509_crt *chain, const unsigned char *buf, size_t buflen );
# 209 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_parse_file( mbedtls_x509_crt *chain, const char *path );
# 224 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_parse_path( mbedtls_x509_crt *chain, const char *path );
# 239 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_info( char *buf, size_t size, const char *prefix,
                   const mbedtls_x509_crt *crt );
# 254 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_verify_info( char *buf, size_t size, const char *prefix,
                          uint32_t flags );
# 301 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_verify( mbedtls_x509_crt *crt,
                     mbedtls_x509_crt *trust_ca,
                     mbedtls_x509_crl *ca_crl,
                     const char *cn, uint32_t *flags,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy );
# 335 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_verify_with_profile( mbedtls_x509_crt *crt,
                     mbedtls_x509_crt *trust_ca,
                     mbedtls_x509_crl *ca_crl,
                     const mbedtls_x509_crt_profile *profile,
                     const char *cn, uint32_t *flags,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy );
# 365 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_check_key_usage( const mbedtls_x509_crt *crt,
                                      unsigned int usage );
# 382 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
int mbedtls_x509_crt_check_extended_key_usage( const mbedtls_x509_crt *crt,
                                       const char *usage_oid,
                                       size_t usage_len );
# 405 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509_crt.h"
void mbedtls_x509_crt_init( mbedtls_x509_crt *crt );






void mbedtls_x509_crt_free( mbedtls_x509_crt *crt );
# 39 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h" 2
# 350 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
union mbedtls_ssl_premaster_secret
{

    unsigned char _pms_rsa[48];
# 381 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
};
# 392 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
typedef enum
{
    MBEDTLS_SSL_HELLO_REQUEST,
    MBEDTLS_SSL_CLIENT_HELLO,
    MBEDTLS_SSL_SERVER_HELLO,
    MBEDTLS_SSL_SERVER_CERTIFICATE,
    MBEDTLS_SSL_SERVER_KEY_EXCHANGE,
    MBEDTLS_SSL_CERTIFICATE_REQUEST,
    MBEDTLS_SSL_SERVER_HELLO_DONE,
    MBEDTLS_SSL_CLIENT_CERTIFICATE,
    MBEDTLS_SSL_CLIENT_KEY_EXCHANGE,
    MBEDTLS_SSL_CERTIFICATE_VERIFY,
    MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC,
    MBEDTLS_SSL_CLIENT_FINISHED,
    MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC,
    MBEDTLS_SSL_SERVER_FINISHED,
    MBEDTLS_SSL_FLUSH_BUFFERS,
    MBEDTLS_SSL_HANDSHAKE_WRAPUP,
    MBEDTLS_SSL_HANDSHAKE_OVER,
    MBEDTLS_SSL_SERVER_NEW_SESSION_TICKET,
    MBEDTLS_SSL_SERVER_HELLO_VERIFY_REQUEST_SENT,
}
mbedtls_ssl_states;
# 433 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_send_t( void *ctx,
                                const unsigned char *buf,
                                size_t len );
# 456 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_recv_t( void *ctx,
                                unsigned char *buf,
                                size_t len );
# 482 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_recv_timeout_t( void *ctx,
                                        unsigned char *buf,
                                        size_t len,
                                        uint32_t timeout );
# 508 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
typedef void mbedtls_ssl_set_timer_t( void * ctx,
                                      uint32_t int_ms,
                                      uint32_t fin_ms );
# 523 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_get_timer_t( void * ctx );



typedef struct mbedtls_ssl_session mbedtls_ssl_session;
typedef struct mbedtls_ssl_context mbedtls_ssl_context;
typedef struct mbedtls_ssl_config mbedtls_ssl_config;


typedef struct mbedtls_ssl_transform mbedtls_ssl_transform;
typedef struct mbedtls_ssl_handshake_params mbedtls_ssl_handshake_params;

typedef struct mbedtls_ssl_key_cert mbedtls_ssl_key_cert;


typedef struct mbedtls_ssl_flight_item mbedtls_ssl_flight_item;





struct mbedtls_ssl_session
{



    int ciphersuite;
    int compression;
    size_t id_len;
    unsigned char id[32];
    unsigned char master[48];


    mbedtls_x509_crt *peer_cert;

    uint32_t verify_result;


    unsigned char *ticket;
    size_t ticket_len;
    uint32_t ticket_lifetime;



    unsigned char mfl_code;
# 577 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
};




struct mbedtls_ssl_config
{






    const int *ciphersuite_list[4];


    void (*f_dbg)(void *, int, const char *, int, const char *);
    void *p_dbg;


    int (*f_rng)(void *, unsigned char *, size_t);
    void *p_rng;


    int (*f_get_cache)(void *, mbedtls_ssl_session *);

    int (*f_set_cache)(void *, const mbedtls_ssl_session *);
    void *p_cache;



    int (*f_sni)(void *, mbedtls_ssl_context *, const unsigned char *, size_t);
    void *p_sni;




    int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *);
    void *p_vrfy;
# 651 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
    const mbedtls_x509_crt_profile *cert_profile;
    mbedtls_ssl_key_cert *key_cert;
    mbedtls_x509_crt *ca_chain;
    mbedtls_x509_crl *ca_crl;



    const int *sig_hashes;



    const mbedtls_ecp_group_id *curve_list;
# 678 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
    const char **alpn_list;






    uint32_t read_timeout;


    uint32_t hs_timeout_min;

    uint32_t hs_timeout_max;
# 708 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
    unsigned char max_major_ver;
    unsigned char max_minor_ver;
    unsigned char min_major_ver;
    unsigned char min_minor_ver;





    unsigned int endpoint : 1;
    unsigned int transport : 1;
    unsigned int authmode : 2;

    unsigned int allow_legacy_renegotiation : 2 ;




    unsigned int mfl_code : 3;
# 747 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
    unsigned int session_tickets : 1;




};


struct mbedtls_ssl_context
{
    const mbedtls_ssl_config *conf;




    int state;







    int major_ver;
    int minor_ver;





    mbedtls_ssl_send_t *f_send;
    mbedtls_ssl_recv_t *f_recv;
    mbedtls_ssl_recv_timeout_t *f_recv_timeout;


    void *p_bio;




    mbedtls_ssl_session *session_in;
    mbedtls_ssl_session *session_out;
    mbedtls_ssl_session *session;
    mbedtls_ssl_session *session_negotiate;

    mbedtls_ssl_handshake_params *handshake;





    mbedtls_ssl_transform *transform_in;
    mbedtls_ssl_transform *transform_out;
    mbedtls_ssl_transform *transform;
    mbedtls_ssl_transform *transform_negotiate;




    void *p_timer;

    mbedtls_ssl_set_timer_t *f_set_timer;
    mbedtls_ssl_get_timer_t *f_get_timer;




    unsigned char *in_buf;
    unsigned char *in_ctr;


    unsigned char *in_hdr;
    unsigned char *in_len;
    unsigned char *in_iv;
    unsigned char *in_msg;
    unsigned char *in_offt;

    int in_msgtype;
    size_t in_msglen;
    size_t in_left;

    uint16_t in_epoch;
    size_t next_record_offset;







    size_t in_hslen;

    int nb_zero;
    int record_read;




    unsigned char *out_buf;
    unsigned char *out_ctr;
    unsigned char *out_hdr;
    unsigned char *out_len;
    unsigned char *out_iv;
    unsigned char *out_msg;

    int out_msgtype;
    size_t out_msglen;
    size_t out_left;
# 866 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
    int client_auth;





    char *hostname;




    const char *alpn_chosen;
# 892 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
    int secure_renegotiation;






};
# 926 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
const int *mbedtls_ssl_list_ciphersuites( void );
# 936 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
const char *mbedtls_ssl_get_ciphersuite_name( const int ciphersuite_id );
# 946 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_get_ciphersuite_id( const char *ciphersuite_name );
# 955 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_init( mbedtls_ssl_context *ssl );
# 972 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_setup( mbedtls_ssl_context *ssl,
                       const mbedtls_ssl_config *conf );
# 985 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_session_reset( mbedtls_ssl_context *ssl );







void mbedtls_ssl_conf_endpoint( mbedtls_ssl_config *conf, int endpoint );
# 1009 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_transport( mbedtls_ssl_config *conf, int transport );
# 1037 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_authmode( mbedtls_ssl_config *conf, int authmode );
# 1051 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_verify( mbedtls_ssl_config *conf,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy );
# 1063 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_rng( mbedtls_ssl_config *conf,
                  int (*f_rng)(void *, unsigned char *, size_t),
                  void *p_rng );
# 1081 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_dbg( mbedtls_ssl_config *conf,
                  void (*f_dbg)(void *, int, const char *, int, const char *),
                  void *p_dbg );
# 1115 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_set_bio( mbedtls_ssl_context *ssl,
                          void *p_bio,
                          mbedtls_ssl_send_t *f_send,
                          mbedtls_ssl_recv_t *f_recv,
                          mbedtls_ssl_recv_timeout_t *f_recv_timeout );
# 1137 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_read_timeout( mbedtls_ssl_config *conf, uint32_t timeout );
# 1159 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_set_timer_cb( mbedtls_ssl_context *ssl,
                               void *p_timer,
                               mbedtls_ssl_set_timer_t *f_set_timer,
                               mbedtls_ssl_get_timer_t *f_get_timer );
# 1183 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_ticket_write_t( void *p_ticket,
                                        const mbedtls_ssl_session *session,
                                        unsigned char *start,
                                        const unsigned char *end,
                                        size_t *tlen,
                                        uint32_t *lifetime );
# 1242 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_ticket_parse_t( void *p_ticket,
                                        mbedtls_ssl_session *session,
                                        unsigned char *buf,
                                        size_t len );
# 1298 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_cookie_write_t( void *ctx,
                                unsigned char **p, unsigned char *end,
                                const unsigned char *info, size_t ilen );
# 1315 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
typedef int mbedtls_ssl_cookie_check_t( void *ctx,
                                const unsigned char *cookie, size_t clen,
                                const unsigned char *info, size_t ilen );
# 1456 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_handshake_timeout( mbedtls_ssl_config *conf, uint32_t min, uint32_t max );
# 1518 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_set_session( mbedtls_ssl_context *ssl, const mbedtls_ssl_session *session );
# 1536 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_ciphersuites( mbedtls_ssl_config *conf,
                                   const int *ciphersuites );
# 1558 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_ciphersuites_for_version( mbedtls_ssl_config *conf,
                                       const int *ciphersuites,
                                       int major, int minor );
# 1573 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_cert_profile( mbedtls_ssl_config *conf,
                                    const mbedtls_x509_crt_profile *profile );
# 1583 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_ca_chain( mbedtls_ssl_config *conf,
                               mbedtls_x509_crt *ca_chain,
                               mbedtls_x509_crl *ca_crl );
# 1615 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_conf_own_cert( mbedtls_ssl_config *conf,
                              mbedtls_x509_crt *own_cert,
                              mbedtls_pk_context *pk_key );
# 1758 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_curves( mbedtls_ssl_config *conf,
                              const mbedtls_ecp_group_id *curves );
# 1781 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_sig_hashes( mbedtls_ssl_config *conf,
                                  const int *hashes );
# 1797 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_set_hostname( mbedtls_ssl_context *ssl, const char *hostname );
# 1813 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_set_hs_own_cert( mbedtls_ssl_context *ssl,
                                 mbedtls_x509_crt *own_cert,
                                 mbedtls_pk_context *pk_key );
# 1828 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_set_hs_ca_chain( mbedtls_ssl_context *ssl,
                                  mbedtls_x509_crt *ca_chain,
                                  mbedtls_x509_crl *ca_crl );
# 1842 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_set_hs_authmode( mbedtls_ssl_context *ssl,
                                  int authmode );
# 1868 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_sni( mbedtls_ssl_config *conf,
                  int (*f_sni)(void *, mbedtls_ssl_context *, const unsigned char *,
                               size_t),
                  void *p_sni );
# 1910 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_conf_alpn_protocols( mbedtls_ssl_config *conf, const char **protos );
# 1921 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
const char *mbedtls_ssl_get_alpn_protocol( const mbedtls_ssl_context *ssl );
# 1940 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_max_version( mbedtls_ssl_config *conf, int major, int minor );
# 1960 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_min_version( mbedtls_ssl_config *conf, int major, int minor );
# 2050 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_conf_max_frag_len( mbedtls_ssl_config *conf, unsigned char mfl_code );
# 2091 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_session_tickets( mbedtls_ssl_config *conf, int use_tickets );
# 2142 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_conf_legacy_renegotiation( mbedtls_ssl_config *conf, int allow_legacy );
# 2220 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
size_t mbedtls_ssl_get_bytes_avail( const mbedtls_ssl_context *ssl );
# 2233 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
uint32_t mbedtls_ssl_get_verify_result( const mbedtls_ssl_context *ssl );
# 2242 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
const char *mbedtls_ssl_get_ciphersuite( const mbedtls_ssl_context *ssl );
# 2251 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
const char *mbedtls_ssl_get_version( const mbedtls_ssl_context *ssl );
# 2263 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_get_record_expansion( const mbedtls_ssl_context *ssl );
# 2282 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
size_t mbedtls_ssl_get_max_frag_len( const mbedtls_ssl_context *ssl );
# 2300 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
const mbedtls_x509_crt *mbedtls_ssl_get_peer_cert( const mbedtls_ssl_context *ssl );
# 2320 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_get_session( const mbedtls_ssl_context *ssl, mbedtls_ssl_session *session );
# 2344 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_handshake( mbedtls_ssl_context *ssl );
# 2365 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_handshake_step( mbedtls_ssl_context *ssl );
# 2423 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_read( mbedtls_ssl_context *ssl, unsigned char *buf, size_t len );
# 2460 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_write( mbedtls_ssl_context *ssl, const unsigned char *buf, size_t len );
# 2478 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_send_alert_message( mbedtls_ssl_context *ssl,
                            unsigned char level,
                            unsigned char message );
# 2494 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_close_notify( mbedtls_ssl_context *ssl );






void mbedtls_ssl_free( mbedtls_ssl_context *ssl );
# 2513 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
void mbedtls_ssl_config_init( mbedtls_ssl_config *conf );
# 2530 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h"
int mbedtls_ssl_config_defaults( mbedtls_ssl_config *conf,
                                 int endpoint, int transport, int preset );






void mbedtls_ssl_config_free( mbedtls_ssl_config *conf );






void mbedtls_ssl_session_init( mbedtls_ssl_session *session );







void mbedtls_ssl_session_free( mbedtls_ssl_session *session );
# 33 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h" 2

# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 35 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h" 2
# 65 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h"
typedef struct
{
    int fd;
}
mbedtls_net_context;







void mbedtls_net_init( mbedtls_net_context *ctx );
# 94 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_connect( mbedtls_net_context *ctx, const char *host, const char *port, int proto );
# 113 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_bind( mbedtls_net_context *ctx, const char *bind_ip, const char *port, int proto );
# 130 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_accept( mbedtls_net_context *bind_ctx,
                        mbedtls_net_context *client_ctx,
                        void *client_ip, size_t buf_size, size_t *ip_len );
# 141 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_set_block( mbedtls_net_context *ctx );
# 150 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_set_nonblock( mbedtls_net_context *ctx );
# 160 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h"
void mbedtls_net_usleep( unsigned long usec );
# 174 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_recv( void *ctx, unsigned char *buf, size_t len );
# 188 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_send( void *ctx, const unsigned char *buf, size_t len );
# 211 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/net_sockets.h"
int mbedtls_net_recv_timeout( void *ctx, unsigned char *buf, size_t len,
                      uint32_t timeout );






void mbedtls_net_free( mbedtls_net_context *ctx );
# 27 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h" 2
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ssl.h" 1
# 28 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h" 2
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/entropy.h" 1
# 32 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/entropy.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 33 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/entropy.h" 2







# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/sha256.h" 1
# 32 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/sha256.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 33 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/sha256.h" 2
# 46 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/sha256.h"
typedef struct {
    uint32_t total[2];
    uint32_t state[8];
    unsigned char buffer[64];
    int is224;
    size_t size;
    void *ali_ctx;
}
mbedtls_sha256_context;






void mbedtls_sha256_init( mbedtls_sha256_context *ctx );






void mbedtls_sha256_free( mbedtls_sha256_context *ctx );







void mbedtls_sha256_clone( mbedtls_sha256_context *dst,
                           const mbedtls_sha256_context *src );







void mbedtls_sha256_starts( mbedtls_sha256_context *ctx, int is224 );
# 94 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/sha256.h"
void mbedtls_sha256_update( mbedtls_sha256_context *ctx, const unsigned char *input,
                            size_t ilen );







void mbedtls_sha256_finish( mbedtls_sha256_context *ctx, unsigned char output[32] );


void mbedtls_sha256_process( mbedtls_sha256_context *ctx, const unsigned char data[64] );


void mbedtls_sha256_init_alt(mbedtls_sha256_context *ctx);
void mbedtls_sha256_free_alt(mbedtls_sha256_context *ctx);

void mbedtls_sha256_clone_alt(mbedtls_sha256_context *dst,
                              const mbedtls_sha256_context *src);

void mbedtls_sha256_starts_alt(mbedtls_sha256_context *ctx, int is224);
void mbedtls_sha256_update_alt(mbedtls_sha256_context *ctx, const unsigned char *input, size_t ilen);
void mbedtls_sha256_finish_alt(mbedtls_sha256_context *ctx, unsigned char output[32]);

void mbedtls_sha256_alt(const unsigned char *input, size_t ilen, unsigned char output[32], int is224);
# 142 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/sha256.h"
void mbedtls_sha256( const unsigned char *input, size_t ilen,
                     unsigned char output[32], int is224 );







int mbedtls_sha256_self_test( int verbose );
# 41 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/entropy.h" 2
# 103 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/entropy.h"
typedef int (*mbedtls_entropy_f_source_ptr)(void *data, unsigned char *output, size_t len,
                            size_t *olen);




typedef struct
{
    mbedtls_entropy_f_source_ptr f_source;
    void * p_source;
    size_t size;
    size_t threshold;
    int strong;
}
mbedtls_entropy_source_state;




typedef struct
{



    mbedtls_sha256_context accumulator;

    int source_count;
    mbedtls_entropy_source_state source[20];
# 140 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/entropy.h"
}
mbedtls_entropy_context;






void mbedtls_entropy_init( mbedtls_entropy_context *ctx );






void mbedtls_entropy_free( mbedtls_entropy_context *ctx );
# 174 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/entropy.h"
int mbedtls_entropy_add_source( mbedtls_entropy_context *ctx,
                        mbedtls_entropy_f_source_ptr f_source, void *p_source,
                        size_t threshold, int strong );
# 186 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/entropy.h"
int mbedtls_entropy_gather( mbedtls_entropy_context *ctx );
# 199 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/entropy.h"
int mbedtls_entropy_func( void *data, unsigned char *output, size_t len );
# 211 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/entropy.h"
int mbedtls_entropy_update_manual( mbedtls_entropy_context *ctx,
                           const unsigned char *data, size_t len );
# 237 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/entropy.h"
int mbedtls_entropy_write_seed_file( mbedtls_entropy_context *ctx, const char *path );
# 251 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/entropy.h"
int mbedtls_entropy_update_seed_file( mbedtls_entropy_context *ctx, const char *path );
# 29 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h" 2
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h" 1
# 26 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h" 1
# 32 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 33 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h" 2
# 58 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h"
typedef struct
{
    int nr;
    uint32_t *rk;
    uint32_t buf[68];
}
mbedtls_aes_context;






void mbedtls_aes_init( mbedtls_aes_context *ctx );






void mbedtls_aes_free( mbedtls_aes_context *ctx );
# 89 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h"
int mbedtls_aes_setkey_enc( mbedtls_aes_context *ctx, const unsigned char *key,
                    unsigned int keybits );
# 101 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h"
int mbedtls_aes_setkey_dec( mbedtls_aes_context *ctx, const unsigned char *key,
                    unsigned int keybits );
# 114 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h"
int mbedtls_aes_crypt_ecb( mbedtls_aes_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] );
# 142 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h"
int mbedtls_aes_crypt_cbc( mbedtls_aes_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output );
# 176 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h"
int mbedtls_aes_crypt_cfb128( mbedtls_aes_context *ctx,
                       int mode,
                       size_t length,
                       size_t *iv_off,
                       unsigned char iv[16],
                       const unsigned char *input,
                       unsigned char *output );
# 208 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h"
int mbedtls_aes_crypt_cfb8( mbedtls_aes_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output );
# 239 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h"
int mbedtls_aes_crypt_ctr( mbedtls_aes_context *ctx,
                       size_t length,
                       size_t *nc_off,
                       unsigned char nonce_counter[16],
                       unsigned char stream_block[16],
                       const unsigned char *input,
                       unsigned char *output );
# 257 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h"
void mbedtls_aes_encrypt( mbedtls_aes_context *ctx,
                          const unsigned char input[16],
                          unsigned char output[16] );
# 270 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h"
void mbedtls_aes_decrypt( mbedtls_aes_context *ctx,
                          const unsigned char input[16],
                          unsigned char output[16] );
# 291 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/aes.h"
int mbedtls_aes_self_test( int verbose );
# 27 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h" 2
# 87 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
typedef struct
{
    unsigned char counter[16];
    int reseed_counter;
    int prediction_resistance;

    size_t entropy_len;

    int reseed_interval;

    mbedtls_aes_context aes_ctx;




    int (*f_entropy)(void *, unsigned char *, size_t);

    void *p_entropy;




}
mbedtls_ctr_drbg_context;
# 119 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_init( mbedtls_ctr_drbg_context *ctx );
# 139 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_seed( mbedtls_ctr_drbg_context *ctx,
                   int (*f_entropy)(void *, unsigned char *, size_t),
                   void *p_entropy,
                   const unsigned char *custom,
                   size_t len );






void mbedtls_ctr_drbg_free( mbedtls_ctr_drbg_context *ctx );
# 161 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_set_prediction_resistance( mbedtls_ctr_drbg_context *ctx,
                                         int resistance );
# 171 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_set_entropy_len( mbedtls_ctr_drbg_context *ctx,
                               size_t len );
# 181 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_set_reseed_interval( mbedtls_ctr_drbg_context *ctx,
                                   int interval );
# 194 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_reseed( mbedtls_ctr_drbg_context *ctx,
                     const unsigned char *additional, size_t len );
# 208 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
void mbedtls_ctr_drbg_update( mbedtls_ctr_drbg_context *ctx,
                      const unsigned char *additional, size_t add_len );
# 226 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_random_with_add( void *p_rng,
                              unsigned char *output, size_t output_len,
                              const unsigned char *additional, size_t add_len );
# 243 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_random( void *p_rng,
                     unsigned char *output, size_t output_len );
# 257 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_write_seed_file( mbedtls_ctr_drbg_context *ctx, const char *path );
# 271 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/ctr_drbg.h"
int mbedtls_ctr_drbg_update_seed_file( mbedtls_ctr_drbg_context *ctx, const char *path );







int mbedtls_ctr_drbg_self_test( int verbose );


int mbedtls_ctr_drbg_seed_entropy_len( mbedtls_ctr_drbg_context *,
                               int (*)(void *, unsigned char *, size_t), void *,
                               const unsigned char *, size_t, size_t );
# 30 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h" 2
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/certs.h" 1
# 26 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/certs.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 27 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/certs.h" 2







extern const char mbedtls_test_cas_pem[];
extern const size_t mbedtls_test_cas_pem_len;



extern const char * mbedtls_test_cas[];
extern const size_t mbedtls_test_cas_len[];





extern const char * mbedtls_test_ca_crt;
extern const size_t mbedtls_test_ca_crt_len;
extern const char * mbedtls_test_ca_key;
extern const size_t mbedtls_test_ca_key_len;
extern const char * mbedtls_test_ca_pwd;
extern const size_t mbedtls_test_ca_pwd_len;
extern const char * mbedtls_test_srv_crt;
extern const size_t mbedtls_test_srv_crt_len;
extern const char * mbedtls_test_srv_key;
extern const size_t mbedtls_test_srv_key_len;
extern const char * mbedtls_test_cli_crt;
extern const size_t mbedtls_test_cli_crt_len;
extern const char * mbedtls_test_cli_key;
extern const size_t mbedtls_test_cli_key_len;
# 79 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/certs.h"
extern const char mbedtls_test_ca_crt_rsa[];
extern const size_t mbedtls_test_ca_crt_rsa_len;
extern const char mbedtls_test_ca_key_rsa[];
extern const size_t mbedtls_test_ca_key_rsa_len;
extern const char mbedtls_test_ca_pwd_rsa[];
extern const size_t mbedtls_test_ca_pwd_rsa_len;
extern const char mbedtls_test_srv_crt_rsa[];
extern const size_t mbedtls_test_srv_crt_rsa_len;
extern const char mbedtls_test_srv_key_rsa[];
extern const size_t mbedtls_test_srv_key_rsa_len;
extern const char mbedtls_test_cli_crt_rsa[];
extern const size_t mbedtls_test_cli_crt_rsa_len;
extern const char mbedtls_test_cli_key_rsa[];
extern const size_t mbedtls_test_cli_key_rsa_len;
# 31 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h" 2
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/x509.h" 1
# 32 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h" 2
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/error.h" 1
# 26 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/error.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 27 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/error.h" 2
# 101 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/error.h"
void mbedtls_strerror( int errnum, char *buffer, size_t buflen );
# 33 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h" 2
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/debug.h" 1
# 103 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_set_threshold( int threshold );
# 120 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_print_msg( const mbedtls_ssl_context *ssl, int level,
                              const char *file, int line,
                              const char *format, ... );
# 139 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_print_ret( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, int ret );
# 160 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_print_buf( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line, const char *text,
                      const unsigned char *buf, size_t len );
# 181 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_print_mpi( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, const mbedtls_mpi *X );
# 203 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_print_ecp( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, const mbedtls_ecp_point *X );
# 224 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/debug.h"
void mbedtls_debug_print_crt( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, const mbedtls_x509_crt *crt );

void mbedtls_debug_print_data(int level,
                const char *file, int line,
                const char *name, const unsigned char *data, int len);
# 34 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h" 2
# 1 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/timing.h" 1
# 45 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/timing.h"
struct mbedtls_timing_hr_time
{
    unsigned char opaque[32];
};




typedef struct
{
    struct mbedtls_timing_hr_time timer;
    uint32_t int_ms;
    uint32_t fin_ms;
} mbedtls_timing_delay_context;

extern volatile int mbedtls_timing_alarmed;
# 69 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/timing.h"
unsigned long mbedtls_timing_hardclock( void );







unsigned long mbedtls_timing_get_timer( struct mbedtls_timing_hr_time *val, int reset );
# 88 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/timing.h"
void mbedtls_set_alarm( int seconds );
# 100 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/timing.h"
void mbedtls_timing_set_delay( void *data, uint32_t int_ms, uint32_t fin_ms );
# 114 "/b-l/bl_iot_sdk/components/security/mbedtls/include/mbedtls/timing.h"
int mbedtls_timing_get_delay( void *data );
# 35 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h" 2
# 46 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/network_platform.h"
typedef struct _TLSDataParams {
    mbedtls_entropy_context entropy;
    mbedtls_ctr_drbg_context ctr_drbg;
    mbedtls_ssl_context ssl;
    mbedtls_ssl_config conf;
    uint32_t flags;
    mbedtls_x509_crt cacert;
    mbedtls_x509_crt clicert;
    mbedtls_pk_context pkey;
    mbedtls_net_context server_fd;
}TLSDataParams;
# 36 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h" 2






typedef struct Network Network;







typedef struct {
 const char *pRootCALocation;
 const char *pDeviceCertLocation;
 const char *pDevicePrivateKeyLocation;
 const char *pDestinationURL;
 uint16_t DestinationPort;
 uint32_t timeout_ms;
 
# 57 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h" 3 4
_Bool 
# 57 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h"
     ServerVerificationFlag;
} TLSConnectParams;






struct Network {
 IoT_Error_t (*connect)(Network *, TLSConnectParams *);

 IoT_Error_t (*read)(Network *, unsigned char *, size_t, Timer *, size_t *);
 IoT_Error_t (*write)(Network *, unsigned char *, size_t, Timer *, size_t *);
 IoT_Error_t (*disconnect)(Network *);
 IoT_Error_t (*isConnected)(Network *);
 IoT_Error_t (*destroy)(Network *);

 TLSConnectParams tlsConnectParams;
 TLSDataParams tlsDataParams;
};
# 96 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h"
IoT_Error_t iot_tls_init(Network *pNetwork, const char *pRootCALocation, const char *pDeviceCertLocation,
       const char *pDevicePrivateKeyLocation, const char *pDestinationURL,
       uint16_t DestinationPort, uint32_t timeout_ms, 
# 98 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h" 3 4
                                                     _Bool 
# 98 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h"
                                                          ServerVerificationFlag);
# 109 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h"
IoT_Error_t iot_tls_connect(Network *pNetwork, TLSConnectParams *TLSParams);
# 121 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h"
IoT_Error_t iot_tls_write(Network *, unsigned char *, size_t, Timer *, size_t *);
# 133 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h"
IoT_Error_t iot_tls_read(Network *, unsigned char *, size_t, Timer *, size_t *);







IoT_Error_t iot_tls_disconnect(Network *pNetwork);
# 151 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h"
IoT_Error_t iot_tls_destroy(Network *pNetwork);
# 161 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/network_interface.h"
IoT_Error_t iot_tls_is_connected(Network *pNetwork);
# 58 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 2



# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/threads_interface.h" 1
# 37 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/threads_interface.h"
# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/threads_platform.h" 1
# 17 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/threads_platform.h"
# 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/threads_interface.h" 1
# 18 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/threads_platform.h" 2
# 27 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/threads_platform.h"
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
# 28 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/port/include/threads_platform.h" 2







struct _IoT_Mutex_t {
    SemaphoreHandle_t mutex;
};
# 38 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/threads_interface.h" 2
# 49 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/threads_interface.h"
typedef struct _IoT_Mutex_t IoT_Mutex_t;
# 59 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/threads_interface.h"
IoT_Error_t aws_iot_thread_mutex_init(IoT_Mutex_t *);
# 70 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/threads_interface.h"
IoT_Error_t aws_iot_thread_mutex_lock(IoT_Mutex_t *);
# 81 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/threads_interface.h"
IoT_Error_t aws_iot_thread_mutex_trylock(IoT_Mutex_t *);
# 91 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/threads_interface.h"
IoT_Error_t aws_iot_thread_mutex_unlock(IoT_Mutex_t *);
# 101 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/threads_interface.h"
IoT_Error_t aws_iot_thread_mutex_destroy(IoT_Mutex_t *);
# 62 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 2




typedef struct _Client AWS_IoT_Client;
# 75 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
typedef enum QoS {
 QOS0 = 0,
 QOS1 = 1
} QoS;







typedef struct {
 QoS qos;
 uint8_t isRetained;
 uint8_t isDup;
 uint16_t id;
 void *payload;
 size_t payloadLen;
} IoT_Publish_Message_Params;







typedef enum {
 MQTT_3_1_1 = 4
} MQTT_Ver_t;
# 112 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
typedef struct {
 char struct_id[4];
 char *pTopicName;
 uint16_t topicNameLen;
 char *pMessage;
 uint16_t msgLen;
 
# 118 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 3 4
_Bool 
# 118 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
     isRetained;
 QoS qos;
} IoT_MQTT_Will_Options;
extern const IoT_MQTT_Will_Options iotMqttWillOptionsDefault;
# 131 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
typedef struct {
 char struct_id[4];
 MQTT_Ver_t MQTTVersion;
 const char *pClientID;
 uint16_t clientIDLen;
 uint16_t keepAliveIntervalInSec;
 
# 137 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 3 4
_Bool 
# 137 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
     isCleanSession;
 
# 138 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 3 4
_Bool 
# 138 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
     isWillMsgPresent;
 IoT_MQTT_Will_Options will;
 char *pUsername;
 uint16_t usernameLen;
 char *pPassword;
 uint16_t passwordLen;
} IoT_Client_Connect_Params;
extern const IoT_Client_Connect_Params iotClientConnectParamsDefault;
# 156 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
typedef void (*iot_disconnect_handler)(AWS_IoT_Client *, void *);
# 165 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
typedef struct {
 
# 166 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 3 4
_Bool 
# 166 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
     enableAutoReconnect;
 char *pHostURL;
 uint16_t port;
 const char *pRootCALocation;
 const char *pDeviceCertLocation;
 const char *pDevicePrivateKeyLocation;
 uint32_t mqttPacketTimeout_ms;
 uint32_t mqttCommandTimeout_ms;
 uint32_t tlsHandshakeTimeout_ms;
 
# 175 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 3 4
_Bool 
# 175 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
     isSSLHostnameVerify;
 iot_disconnect_handler disconnectHandler;
 void *disconnectHandlerData;

 
# 179 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 3 4
_Bool 
# 179 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
     isBlockOnThreadLockEnabled;

} IoT_Client_Init_Params;
extern const IoT_Client_Init_Params iotClientInitParamsDefault;
# 196 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
typedef enum _ClientState {
 CLIENT_STATE_INVALID = 0,
 CLIENT_STATE_INITIALIZED = 1,
 CLIENT_STATE_CONNECTING = 2,
 CLIENT_STATE_CONNECTED_IDLE = 3,
 CLIENT_STATE_CONNECTED_YIELD_IN_PROGRESS = 4,
 CLIENT_STATE_CONNECTED_PUBLISH_IN_PROGRESS = 5,
 CLIENT_STATE_CONNECTED_SUBSCRIBE_IN_PROGRESS = 6,
 CLIENT_STATE_CONNECTED_UNSUBSCRIBE_IN_PROGRESS = 7,
 CLIENT_STATE_CONNECTED_RESUBSCRIBE_IN_PROGRESS = 8,
 CLIENT_STATE_CONNECTED_WAIT_FOR_CB_RETURN = 9,
 CLIENT_STATE_DISCONNECTING = 10,
 CLIENT_STATE_DISCONNECTED_ERROR = 11,
 CLIENT_STATE_DISCONNECTED_MANUALLY = 12,
 CLIENT_STATE_PENDING_RECONNECT = 13
} ClientState;
# 220 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
typedef void (*pApplicationHandler_t)(AWS_IoT_Client *pClient, char *pTopicName, uint16_t topicNameLen,
           IoT_Publish_Message_Params *pParams, void *pClientData);
# 230 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
typedef struct _MessageHandlers {
 const char *topicName;
 uint16_t topicNameLen;
 QoS qos;
 pApplicationHandler_t pApplicationHandler;
 void *pApplicationHandlerData;
} MessageHandlers;
# 245 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
typedef struct _ClientStatus {
 ClientState clientState;
 
# 247 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 3 4
_Bool 
# 247 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
     isPingOutstanding;
 
# 248 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 3 4
_Bool 
# 248 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
     isAutoReconnectEnabled;
} ClientStatus;
# 258 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
typedef struct _ClientData {
 uint16_t nextPacketId;

 uint32_t packetTimeoutMs;
 uint32_t commandTimeoutMs;
 uint16_t keepAliveInterval;
 uint32_t currentReconnectWaitInterval;
 uint32_t counterNetworkDisconnected;




 size_t writeBufSize;
 size_t readBufSize;
    size_t readBufIndex;
 unsigned char writeBuf[512];
 unsigned char readBuf[512];


 
# 277 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 3 4
_Bool 
# 277 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
     isBlockOnThreadLockEnabled;
 IoT_Mutex_t state_change_mutex;
 IoT_Mutex_t tls_read_mutex;
 IoT_Mutex_t tls_write_mutex;


 IoT_Client_Connect_Params options;

 MessageHandlers messageHandlers[5];
 iot_disconnect_handler disconnectHandler;

 void *disconnectHandlerData;
} ClientData;







struct _Client {
 Timer pingTimer;
 Timer reconnectDelayTimer;

 ClientStatus clientStatus;
 ClientData clientData;
 Network networkStack;
};
# 316 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
uint16_t aws_iot_mqtt_get_next_packet_id(AWS_IoT_Client *pClient);
# 330 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
IoT_Error_t aws_iot_mqtt_set_connect_params(AWS_IoT_Client *pClient, const IoT_Client_Connect_Params *pNewConnectParams);
# 342 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"

# 342 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 3 4
_Bool 
# 342 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
    aws_iot_mqtt_is_client_connected(AWS_IoT_Client *pClient);
# 353 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
ClientState aws_iot_mqtt_get_client_state(AWS_IoT_Client *pClient);
# 365 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"

# 365 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 3 4
_Bool 
# 365 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
    aws_iot_is_autoreconnect_enabled(AWS_IoT_Client *pClient);
# 379 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
IoT_Error_t aws_iot_mqtt_set_disconnect_handler(AWS_IoT_Client *pClient, iot_disconnect_handler pDisconnectHandler,
            void *pDisconnectHandlerData);
# 392 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
IoT_Error_t aws_iot_mqtt_autoreconnect_set_status(AWS_IoT_Client *pClient, 
# 392 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h" 3 4
                                                                          _Bool 
# 392 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
                                                                               newStatus);
# 403 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
uint32_t aws_iot_mqtt_get_network_disconnected_count(AWS_IoT_Client *pClient);
# 412 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client.h"
void aws_iot_mqtt_reset_network_disconnected_count(AWS_IoT_Client *pClient);
# 56 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h" 2
# 70 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h"
 IoT_Error_t aws_iot_mqtt_free( AWS_IoT_Client *pClient );
# 82 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h"
IoT_Error_t aws_iot_mqtt_init(AWS_IoT_Client *pClient, const IoT_Client_Init_Params *pInitParams);
# 94 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h"
IoT_Error_t aws_iot_mqtt_connect(AWS_IoT_Client *pClient, const IoT_Client_Connect_Params *pConnectParams);
# 111 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h"
IoT_Error_t aws_iot_mqtt_publish(AWS_IoT_Client *pClient, const char *pTopicName, uint16_t topicNameLen,
         IoT_Publish_Message_Params *pParams);
# 132 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h"
IoT_Error_t aws_iot_mqtt_subscribe(AWS_IoT_Client *pClient, const char *pTopicName, uint16_t topicNameLen,
           QoS qos, pApplicationHandler_t pApplicationHandler, void *pApplicationHandlerData);
# 147 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h"
IoT_Error_t aws_iot_mqtt_resubscribe(AWS_IoT_Client *pClient);
# 162 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h"
IoT_Error_t aws_iot_mqtt_unsubscribe(AWS_IoT_Client *pClient, const char *pTopicFilter, uint16_t topicFilterLen);
# 173 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h"
IoT_Error_t aws_iot_mqtt_disconnect(AWS_IoT_Client *pClient);
# 192 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h"
IoT_Error_t aws_iot_mqtt_yield(AWS_IoT_Client *pClient, uint32_t timeout_ms);
# 207 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_interface.h"
IoT_Error_t aws_iot_mqtt_attempt_reconnect(AWS_IoT_Client *pClient);
# 51 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_common_internal.h" 2


typedef enum msgTypes {
 UNKNOWN = -1,
 CONNECT = 1,
 CONNACK = 2,
 PUBLISH = 3,
 PUBACK = 4,
 PUBREC = 5,
 PUBREL = 6,
 PUBCOMP = 7,
 SUBSCRIBE = 8,
 SUBACK = 9,
 UNSUBSCRIBE = 10,
 UNSUBACK = 11,
 PINGREQ = 12,
 PINGRESP = 13,
 DISCONNECT = 14
} MessageTypes;
# 80 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_mqtt_client_common_internal.h"
typedef union {
 unsigned char byte;
} MQTTHeader;

IoT_Error_t aws_iot_mqtt_internal_init_header(MQTTHeader *pHeader, MessageTypes message_type,
             QoS qos, uint8_t dup, uint8_t retained);

IoT_Error_t aws_iot_mqtt_internal_serialize_ack(unsigned char *pTxBuf, size_t txBufLen,
            MessageTypes msgType, uint8_t dup, uint16_t packetId,
            uint32_t *pSerializedLen);
IoT_Error_t aws_iot_mqtt_internal_deserialize_ack(unsigned char *, unsigned char *,
              uint16_t *, unsigned char *, size_t);

uint32_t aws_iot_mqtt_internal_get_final_packet_length_from_remaining_length(uint32_t rem_len);

size_t aws_iot_mqtt_internal_write_len_to_buffer(unsigned char *buf, uint32_t length);
IoT_Error_t aws_iot_mqtt_internal_decode_remaining_length_from_buffer(unsigned char *buf, uint32_t *decodedLen,
                   uint32_t *readBytesLen);

uint16_t aws_iot_mqtt_internal_read_uint16_t(unsigned char **pptr);
void aws_iot_mqtt_internal_write_uint_16(unsigned char **pptr, uint16_t anInt);

unsigned char aws_iot_mqtt_internal_read_char(unsigned char **pptr);
void aws_iot_mqtt_internal_write_char(unsigned char **pptr, unsigned char c);
void aws_iot_mqtt_internal_write_utf8_string(unsigned char **pptr, const char *string, uint16_t stringLen);

IoT_Error_t aws_iot_mqtt_internal_flushBuffers( AWS_IoT_Client *pClient );
IoT_Error_t aws_iot_mqtt_internal_send_packet(AWS_IoT_Client *pClient, size_t length, Timer *pTimer);
IoT_Error_t aws_iot_mqtt_internal_cycle_read(AWS_IoT_Client *pClient, Timer *pTimer, uint8_t *pPacketType);
IoT_Error_t aws_iot_mqtt_internal_wait_for_read(AWS_IoT_Client *pClient, uint8_t packetType, Timer *pTimer);
IoT_Error_t aws_iot_mqtt_internal_serialize_zero(unsigned char *pTxBuf, size_t txBufLen,
             MessageTypes packetType, size_t *pSerializedLength);
IoT_Error_t aws_iot_mqtt_internal_deserialize_publish(uint8_t *dup, QoS *qos,
               uint8_t *retained, uint16_t *pPacketId,
               char **pTopicName, uint16_t *topicNameLen,
               unsigned char **payload, size_t *payloadLen,
               unsigned char *pRxBuf, size_t rxBufLen);

IoT_Error_t aws_iot_mqtt_set_client_state(AWS_IoT_Client *pClient, ClientState expectedCurrentState,
            ClientState newState);



IoT_Error_t aws_iot_mqtt_client_lock_mutex(AWS_IoT_Client *pClient, IoT_Mutex_t *pMutex);

IoT_Error_t aws_iot_mqtt_client_unlock_mutex(AWS_IoT_Client *pClient, IoT_Mutex_t *pMutex);
# 43 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c" 2




static void _aws_iot_mqtt_force_client_disconnect(AWS_IoT_Client *pClient) {
 pClient->clientStatus.clientState = CLIENT_STATE_DISCONNECTED_ERROR;
 pClient->networkStack.disconnect(&(pClient->networkStack));
 pClient->networkStack.destroy(&(pClient->networkStack));
}

static IoT_Error_t _aws_iot_mqtt_handle_disconnect(AWS_IoT_Client *pClient) {
 IoT_Error_t rc;

 ;

 rc = aws_iot_mqtt_disconnect(pClient);
 if(rc != SUCCESS) {

  _aws_iot_mqtt_force_client_disconnect(pClient);
 }

 if(
# 64 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c" 3 4
   ((void *)0) 
# 64 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c"
        != pClient->clientData.disconnectHandler) {
  pClient->clientData.disconnectHandler(pClient, pClient->clientData.disconnectHandlerData);
 }


 pClient->clientStatus.clientState = CLIENT_STATE_DISCONNECTED_ERROR;
 do { return NETWORK_DISCONNECTED_ERROR; } while(0);
}


static IoT_Error_t _aws_iot_mqtt_handle_reconnect(AWS_IoT_Client *pClient) {
 IoT_Error_t rc;

 ;

 if(!has_timer_expired(&(pClient->reconnectDelayTimer))) {


  do { return NETWORK_ATTEMPTING_RECONNECT; } while(0);
 }

 rc = NETWORK_PHYSICAL_LAYER_DISCONNECTED;
 if(
# 86 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c" 3 4
   ((void *)0) 
# 86 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c"
        != pClient->networkStack.isConnected) {
  rc = pClient->networkStack.isConnected(&(pClient->networkStack));
 }

 if(NETWORK_PHYSICAL_LAYER_CONNECTED == rc) {
  rc = aws_iot_mqtt_attempt_reconnect(pClient);
  if(NETWORK_RECONNECTED == rc) {
   rc = aws_iot_mqtt_set_client_state(pClient, CLIENT_STATE_CONNECTED_IDLE,
              CLIENT_STATE_CONNECTED_YIELD_IN_PROGRESS);
   if(SUCCESS != rc) {
    do { return rc; } while(0);
   }
   do { return NETWORK_RECONNECTED; } while(0);
  }
 }

 pClient->clientData.currentReconnectWaitInterval *= 2;

 if(128000 < pClient->clientData.currentReconnectWaitInterval) {
  do { return NETWORK_RECONNECT_TIMED_OUT_ERROR; } while(0);
 }
 countdown_ms(&(pClient->reconnectDelayTimer), pClient->clientData.currentReconnectWaitInterval);
 do { return rc; } while(0);
}

static IoT_Error_t _aws_iot_mqtt_keep_alive(AWS_IoT_Client *pClient) {
 IoT_Error_t rc = SUCCESS;
 Timer timer;
 size_t serialized_len;

 ;

 if(
# 118 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c" 3 4
   ((void *)0) 
# 118 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c"
        == pClient) {
  do { return NULL_VALUE_ERROR; } while(0);
 }

 if(0 == pClient->clientData.keepAliveInterval) {
  do { return SUCCESS; } while(0);
 }

 if(!has_timer_expired(&pClient->pingTimer)) {
  do { return SUCCESS; } while(0);
 }

 if(pClient->clientStatus.isPingOutstanding) {
  rc = _aws_iot_mqtt_handle_disconnect(pClient);
  do { return rc; } while(0);
 }


 init_timer(&timer);

 countdown_ms(&timer, pClient->clientData.commandTimeoutMs);
 serialized_len = 0;
 rc = aws_iot_mqtt_internal_serialize_zero(pClient->clientData.writeBuf, pClient->clientData.writeBufSize,
             PINGREQ, &serialized_len);
 if(SUCCESS != rc) {
  do { return rc; } while(0);
 }


 rc = aws_iot_mqtt_internal_send_packet(pClient, serialized_len, &timer);
 if(SUCCESS != rc) {

  rc = _aws_iot_mqtt_handle_disconnect(pClient);
  do { return rc; } while(0);
 }

 pClient->clientStatus.isPingOutstanding = 
# 154 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c" 3 4
                                          1
# 154 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c"
                                              ;

 countdown_sec(&pClient->pingTimer, pClient->clientData.keepAliveInterval);

 do { return SUCCESS; } while(0);
}
# 181 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c"
static IoT_Error_t _aws_iot_mqtt_internal_yield(AWS_IoT_Client *pClient, uint32_t timeout_ms) {
 IoT_Error_t yieldRc = SUCCESS;

 uint8_t packet_type;
 ClientState clientState;
 Timer timer;
 init_timer(&timer);
 countdown_ms(&timer, timeout_ms);

 ;


 do {
  clientState = aws_iot_mqtt_get_client_state(pClient);
  if(CLIENT_STATE_PENDING_RECONNECT == clientState) {
   if(128000 < pClient->clientData.currentReconnectWaitInterval) {
    yieldRc = NETWORK_RECONNECT_TIMED_OUT_ERROR;
    break;
   }
   yieldRc = _aws_iot_mqtt_handle_reconnect(pClient);


   continue;
  }

  yieldRc = aws_iot_mqtt_internal_cycle_read(pClient, &timer, &packet_type);
  if(SUCCESS == yieldRc) {
   yieldRc = _aws_iot_mqtt_keep_alive(pClient);
  } else {

   if(NETWORK_SSL_READ_ERROR == yieldRc || NETWORK_SSL_WRITE_ERROR == yieldRc || NETWORK_SSL_WRITE_TIMEOUT_ERROR == yieldRc) {
    yieldRc = _aws_iot_mqtt_handle_disconnect(pClient);
   }
  }

  if(NETWORK_DISCONNECTED_ERROR == yieldRc) {
   pClient->clientData.counterNetworkDisconnected++;
   if(1 == pClient->clientStatus.isAutoReconnectEnabled) {
    yieldRc = aws_iot_mqtt_set_client_state(pClient, CLIENT_STATE_DISCONNECTED_ERROR,
              CLIENT_STATE_PENDING_RECONNECT);
    if(SUCCESS != yieldRc) {
     do { return yieldRc; } while(0);
    }

    pClient->clientData.currentReconnectWaitInterval = 1000;
    countdown_ms(&(pClient->reconnectDelayTimer), pClient->clientData.currentReconnectWaitInterval);



    yieldRc = NETWORK_ATTEMPTING_RECONNECT;
   } else {
    break;
   }
  } else if(SUCCESS != yieldRc) {
   break;
  }
 } while(!has_timer_expired(&timer));

 do { return yieldRc; } while(0);
}
# 261 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c"
IoT_Error_t aws_iot_mqtt_yield(AWS_IoT_Client *pClient, uint32_t timeout_ms) {
 IoT_Error_t rc, yieldRc;
 ClientState clientState;

 if(
# 265 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c" 3 4
   ((void *)0) 
# 265 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_mqtt_client_yield.c"
        == pClient || 0 == timeout_ms) {
  do { return NULL_VALUE_ERROR; } while(0);
 }

 clientState = aws_iot_mqtt_get_client_state(pClient);

 if(CLIENT_STATE_DISCONNECTED_MANUALLY == clientState) {
  do { return NETWORK_MANUALLY_DISCONNECTED; } while(0);
 }



 if(CLIENT_STATE_PENDING_RECONNECT != clientState) {

  if(!aws_iot_mqtt_is_client_connected(pClient)) {
   do { return NETWORK_DISCONNECTED_ERROR; } while(0);
  }


  if(CLIENT_STATE_CONNECTED_IDLE != clientState) {
   do { return MQTT_CLIENT_NOT_IDLE_ERROR; } while(0);
  }

  rc = aws_iot_mqtt_set_client_state(pClient, CLIENT_STATE_CONNECTED_IDLE,
             CLIENT_STATE_CONNECTED_YIELD_IN_PROGRESS);
  if(SUCCESS != rc) {
   do { return rc; } while(0);
  }
 }

 yieldRc = _aws_iot_mqtt_internal_yield(pClient, timeout_ms);

 if(NETWORK_DISCONNECTED_ERROR != yieldRc && NETWORK_ATTEMPTING_RECONNECT != yieldRc) {
  rc = aws_iot_mqtt_set_client_state(pClient, CLIENT_STATE_CONNECTED_YIELD_IN_PROGRESS,
             CLIENT_STATE_CONNECTED_IDLE);
  if(SUCCESS == yieldRc && SUCCESS != rc) {
   yieldRc = rc;
  }
 }

 do { return yieldRc; } while(0);
}
