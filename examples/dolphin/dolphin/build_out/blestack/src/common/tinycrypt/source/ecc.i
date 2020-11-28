# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc.c"
# 1 "/b-l/dolphin/build_out/blestack//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc.c"
# 55 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc.c"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h" 1
# 74 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 1 3 4
# 11 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 3 4
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 1 3 4
# 34 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 3 4

# 34 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 3 4
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
# 12 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 2 3 4
# 75 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h" 2
# 89 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"

# 89 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
typedef int8_t wordcount_t;
typedef int16_t bitcount_t;

typedef int8_t cmpresult_t;

typedef unsigned int uECC_word_t;

typedef uint64_t uECC_dword_t;
# 110 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
struct uECC_Curve_t;
typedef const struct uECC_Curve_t * uECC_Curve;
struct uECC_Curve_t {
  wordcount_t num_words;
  wordcount_t num_bytes;
  bitcount_t num_n_bits;
  uECC_word_t p[8];
  uECC_word_t n[8];
  uECC_word_t G[8 * 2];
  uECC_word_t b[8];
  void (*double_jacobian)(uECC_word_t * X1, uECC_word_t * Y1, uECC_word_t * Z1,
 uECC_Curve curve);
  void (*x_side)(uECC_word_t *result, const uECC_word_t *x, uECC_Curve curve);
  void (*mmod_fast)(uECC_word_t *result, uECC_word_t *product);
};
# 133 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void double_jacobian_default(uECC_word_t * X1, uECC_word_t * Y1,
        uECC_word_t * Z1, uECC_Curve curve);







void x_side_default(uECC_word_t *result, const uECC_word_t *x,
      uECC_Curve curve);







void vli_mmod_fast_secp256r1(unsigned int *result, unsigned int *product);
# 161 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
static const struct uECC_Curve_t curve_secp256r1 = {
 8,
 (4*8),
 256, {
  0xFFFFFFFF, 0xFFFFFFFF,
  0xFFFFFFFF, 0x00000000,
         0x00000000, 0x00000000,
         0x00000001, 0xFFFFFFFF
 }, {
  0xFC632551, 0xF3B9CAC2,
             0xA7179E84, 0xBCE6FAAD,
             0xFFFFFFFF, 0xFFFFFFFF,
             0x00000000, 0xFFFFFFFF
 }, {
  0xD898C296, 0xF4A13945,
                0x2DEB33A0, 0x77037D81,
                0x63A440F2, 0xF8BCE6E5,
                0xE12C4247, 0x6B17D1F2,

                0x37BF51F5, 0xCBB64068,
                0x6B315ECE, 0x2BCE3357,
                0x7C0F9E16, 0x8EE7EB4A,
                0xFE1A7F9B, 0x4FE342E2
 }, {
  0x27D2604B, 0x3BCE3C3E,
                0xCC53B0F6, 0x651D06B0,
                0x769886BC, 0xB3EBBD55,
                0xAA3A93E7, 0x5AC635D8
 },
        &double_jacobian_default,
        &x_side_default,
        &vli_mmod_fast_secp256r1
};

uECC_Curve uECC_secp256r1(void);
# 205 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
int uECC_generate_random_int(uECC_word_t *random, const uECC_word_t *top,
        wordcount_t num_words);
# 225 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
typedef int(*uECC_RNG_Function)(uint8_t *dest, unsigned int size);
# 237 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_set_rng(uECC_RNG_Function rng_function);





uECC_RNG_Function uECC_get_rng(void);






int uECC_curve_private_key_size(uECC_Curve curve);






int uECC_curve_public_key_size(uECC_Curve curve);
# 266 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
int uECC_compute_public_key(const uint8_t *private_key,
       uint8_t *public_key, uECC_Curve curve);
# 276 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
uECC_word_t EccPoint_compute_public_key(uECC_word_t *result,
     uECC_word_t *private_key, uECC_Curve curve);
# 288 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
uECC_word_t regularize_k(const uECC_word_t * const k, uECC_word_t *k0,
    uECC_word_t *k1, uECC_Curve curve);
# 302 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void EccPoint_mult(uECC_word_t * result, const uECC_word_t * point,
     const uECC_word_t * scalar, const uECC_word_t * initial_Z,
     bitcount_t num_bits, uECC_Curve curve);







uECC_word_t uECC_vli_isZero(const uECC_word_t *vli, wordcount_t num_words);







uECC_word_t EccPoint_isZero(const uECC_word_t *point, uECC_Curve curve);
# 329 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
cmpresult_t uECC_vli_cmp(const uECC_word_t *left, const uECC_word_t *right,
    wordcount_t num_words);
# 340 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
cmpresult_t uECC_vli_cmp_unsafe(const uECC_word_t *left, const uECC_word_t *right,
    wordcount_t num_words);
# 353 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_vli_modSub(uECC_word_t *result, const uECC_word_t *left,
       const uECC_word_t *right, const uECC_word_t *mod,
       wordcount_t num_words);
# 367 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void XYcZ_add(uECC_word_t * X1, uECC_word_t * Y1, uECC_word_t * X2,
       uECC_word_t * Y2, uECC_Curve curve);
# 377 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void apply_z(uECC_word_t * X1, uECC_word_t * Y1, const uECC_word_t * const Z,
      uECC_Curve curve);
# 389 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
uECC_word_t uECC_vli_testBit(const uECC_word_t *vli, bitcount_t bit);
# 398 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_vli_mmod(uECC_word_t *result, uECC_word_t *product,
     const uECC_word_t *mod, wordcount_t num_words);
# 408 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_vli_modMult_fast(uECC_word_t *result, const uECC_word_t *left,
      const uECC_word_t *right, uECC_Curve curve);
# 420 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
uECC_word_t uECC_vli_sub(uECC_word_t *result, const uECC_word_t *left,
    const uECC_word_t *right, wordcount_t num_words);
# 430 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
uECC_word_t uECC_vli_equal(const uECC_word_t *left, const uECC_word_t *right,
      wordcount_t num_words);
# 441 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_vli_modMult(uECC_word_t *result, const uECC_word_t *left,
        const uECC_word_t *right, const uECC_word_t *mod,
               wordcount_t num_words);
# 454 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_vli_modInv(uECC_word_t *result, const uECC_word_t *input,
       const uECC_word_t *mod, wordcount_t num_words);







void uECC_vli_set(uECC_word_t *dest, const uECC_word_t *src,
    wordcount_t num_words);
# 476 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
void uECC_vli_modAdd(uECC_word_t *result, const uECC_word_t *left,
           const uECC_word_t *right, const uECC_word_t *mod,
          wordcount_t num_words);







bitcount_t uECC_vli_numBits(const uECC_word_t *vli,
       const wordcount_t max_words);






void uECC_vli_clear(uECC_word_t *vli, wordcount_t num_words);
# 505 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
int uECC_valid_point(const uECC_word_t *point, uECC_Curve curve);
# 521 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
int uECC_valid_public_key(const uint8_t *public_key, uECC_Curve curve);







void uECC_vli_nativeToBytes(uint8_t *bytes, int num_bytes,
           const unsigned int *native);







void uECC_vli_bytesToNative(unsigned int *native, const uint8_t *bytes,
       int num_bytes);
# 56 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc_platform_specific.h" 1
# 79 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc_platform_specific.h"
int default_CSPRNG(uint8_t *dest, unsigned int size);
# 57 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc.c" 2
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 10 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 10 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 1 3
# 14 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/_newlib_version.h" 1 3
# 15 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 2 3
# 11 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 1 3



# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 5 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/features.h" 1 3
# 6 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 12 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 11 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 13 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 14 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 149 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4

# 149 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int wchar_t;
# 15 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 24 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 357 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 1 3






# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 1 3
# 41 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 8 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 2 3
# 28 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


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
# 90 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
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
# 16 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 1 3
# 11 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
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
# 98 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
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
# 292 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
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
# 819 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 47 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 48 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 13 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 18 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3



# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 1 3
# 44 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3


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


# 25 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




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
# 76 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);






char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);
# 100 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
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
# 175 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 1 3
# 15 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 58 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc.c" 2





# 62 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc.c"
static uECC_RNG_Function g_rng_function = &default_CSPRNG;




void uECC_set_rng(uECC_RNG_Function rng_function)
{
 g_rng_function = rng_function;
}

uECC_RNG_Function uECC_get_rng(void)
{
 return g_rng_function;
}

int uECC_curve_private_key_size(uECC_Curve curve)
{
 return ((curve->num_n_bits + 7) / 8);
}

int uECC_curve_public_key_size(uECC_Curve curve)
{
 return 2 * curve->num_bytes;
}

void uECC_vli_clear(uECC_word_t *vli, wordcount_t num_words)
{
 wordcount_t i;
 for (i = 0; i < num_words; ++i) {
   vli[i] = 0;
 }
}

uECC_word_t uECC_vli_isZero(const uECC_word_t *vli, wordcount_t num_words)
{
 uECC_word_t bits = 0;
 wordcount_t i;
 for (i = 0; i < num_words; ++i) {
  bits |= vli[i];
 }
 return (bits == 0);
}

uECC_word_t uECC_vli_testBit(const uECC_word_t *vli, bitcount_t bit)
{
 return (vli[bit >> 5] &
  ((uECC_word_t)1 << (bit & 0x01F)));
}


static wordcount_t vli_numDigits(const uECC_word_t *vli,
     const wordcount_t max_words)
{

 wordcount_t i;


 for (i = max_words - 1; i >= 0 && vli[i] == 0; --i) {
 }

 return (i + 1);
}

bitcount_t uECC_vli_numBits(const uECC_word_t *vli,
       const wordcount_t max_words)
{

 uECC_word_t i;
 uECC_word_t digit;

 wordcount_t num_digits = vli_numDigits(vli, max_words);
 if (num_digits == 0) {
  return 0;
 }

 digit = vli[num_digits - 1];
 for (i = 0; digit; ++i) {
  digit >>= 1;
 }

 return (((bitcount_t)(num_digits - 1) << 5) + i);
}

void uECC_vli_set(uECC_word_t *dest, const uECC_word_t *src,
    wordcount_t num_words)
{
 wordcount_t i;

 for (i = 0; i < num_words; ++i) {
  dest[i] = src[i];
   }
}

cmpresult_t uECC_vli_cmp_unsafe(const uECC_word_t *left,
    const uECC_word_t *right,
    wordcount_t num_words)
{
 wordcount_t i;

 for (i = num_words - 1; i >= 0; --i) {
  if (left[i] > right[i]) {
   return 1;
  } else if (left[i] < right[i]) {
   return -1;
  }
 }
 return 0;
}

uECC_word_t uECC_vli_equal(const uECC_word_t *left, const uECC_word_t *right,
      wordcount_t num_words)
{

 uECC_word_t diff = 0;
 wordcount_t i;

 for (i = num_words - 1; i >= 0; --i) {
  diff |= (left[i] ^ right[i]);
 }
 return !(diff == 0);
}

uECC_word_t cond_set(uECC_word_t p_true, uECC_word_t p_false, unsigned int cond)
{
 return (p_true*(cond)) | (p_false*(!cond));
}



uECC_word_t uECC_vli_sub(uECC_word_t *result, const uECC_word_t *left,
    const uECC_word_t *right, wordcount_t num_words)
{
 uECC_word_t borrow = 0;
 wordcount_t i;
 for (i = 0; i < num_words; ++i) {
  uECC_word_t diff = left[i] - right[i] - borrow;
  uECC_word_t val = (diff > left[i]);
  borrow = cond_set(val, borrow, (diff != left[i]));

  result[i] = diff;
 }
 return borrow;
}



static uECC_word_t uECC_vli_add(uECC_word_t *result, const uECC_word_t *left,
    const uECC_word_t *right, wordcount_t num_words)
{
 uECC_word_t carry = 0;
 wordcount_t i;
 for (i = 0; i < num_words; ++i) {
  uECC_word_t sum = left[i] + right[i] + carry;
  uECC_word_t val = (sum < left[i]);
  carry = cond_set(val, carry, (sum != left[i]));
  result[i] = sum;
 }
 return carry;
}

cmpresult_t uECC_vli_cmp(const uECC_word_t *left, const uECC_word_t *right,
    wordcount_t num_words)
{
 uECC_word_t tmp[8];
 uECC_word_t neg = !!uECC_vli_sub(tmp, left, right, num_words);
 uECC_word_t equal = uECC_vli_isZero(tmp, num_words);
 return (!equal - 2 * neg);
}


static void uECC_vli_rshift1(uECC_word_t *vli, wordcount_t num_words)
{
 uECC_word_t *end = vli;
 uECC_word_t carry = 0;

 vli += num_words;
 while (vli-- > end) {
  uECC_word_t temp = *vli;
  *vli = (temp >> 1) | carry;
  carry = temp << (32 - 1);
 }
}

static void muladd(uECC_word_t a, uECC_word_t b, uECC_word_t *r0,
     uECC_word_t *r1, uECC_word_t *r2)
{

 uECC_dword_t p = (uECC_dword_t)a * b;
 uECC_dword_t r01 = ((uECC_dword_t)(*r1) << 32) | *r0;
 r01 += p;
 *r2 += (r01 < p);
 *r1 = r01 >> 32;
 *r0 = (uECC_word_t)r01;

}


static void uECC_vli_mult(uECC_word_t *result, const uECC_word_t *left,
     const uECC_word_t *right, wordcount_t num_words)
{

 uECC_word_t r0 = 0;
 uECC_word_t r1 = 0;
 uECC_word_t r2 = 0;
 wordcount_t i, k;


 for (k = 0; k < num_words; ++k) {

  for (i = 0; i <= k; ++i) {
   muladd(left[i], right[k - i], &r0, &r1, &r2);
  }

  result[k] = r0;
  r0 = r1;
  r1 = r2;
  r2 = 0;
 }

 for (k = num_words; k < num_words * 2 - 1; ++k) {

  for (i = (k + 1) - num_words; i < num_words; ++i) {
   muladd(left[i], right[k - i], &r0, &r1, &r2);
  }
  result[k] = r0;
  r0 = r1;
  r1 = r2;
  r2 = 0;
 }
 result[num_words * 2 - 1] = r0;
}

void uECC_vli_modAdd(uECC_word_t *result, const uECC_word_t *left,
       const uECC_word_t *right, const uECC_word_t *mod,
       wordcount_t num_words)
{
 uECC_word_t carry = uECC_vli_add(result, left, right, num_words);
 if (carry || uECC_vli_cmp_unsafe(mod, result, num_words) != 1) {


  uECC_vli_sub(result, result, mod, num_words);
 }
}

void uECC_vli_modSub(uECC_word_t *result, const uECC_word_t *left,
       const uECC_word_t *right, const uECC_word_t *mod,
       wordcount_t num_words)
{
 uECC_word_t l_borrow = uECC_vli_sub(result, left, right, num_words);
 if (l_borrow) {


  uECC_vli_add(result, result, mod, num_words);
 }
}



void uECC_vli_mmod(uECC_word_t *result, uECC_word_t *product,
         const uECC_word_t *mod, wordcount_t num_words)
{
 uECC_word_t mod_multiple[2 * 8];
 uECC_word_t tmp[2 * 8];
 uECC_word_t *v[2] = {tmp, product};
 uECC_word_t index;


 bitcount_t shift = (num_words * 2 * 32) -
      uECC_vli_numBits(mod, num_words);
 wordcount_t word_shift = shift / 32;
 wordcount_t bit_shift = shift % 32;
 uECC_word_t carry = 0;
 uECC_vli_clear(mod_multiple, word_shift);
 if (bit_shift > 0) {
  for(index = 0; index < (uECC_word_t)num_words; ++index) {
   mod_multiple[word_shift + index] = (mod[index] << bit_shift) | carry;
   carry = mod[index] >> (32 - bit_shift);
  }
 } else {
  uECC_vli_set(mod_multiple + word_shift, mod, num_words);
 }

 for (index = 1; shift >= 0; --shift) {
  uECC_word_t borrow = 0;
  wordcount_t i;
  for (i = 0; i < num_words * 2; ++i) {
   uECC_word_t diff = v[index][i] - mod_multiple[i] - borrow;
   if (diff != v[index][i]) {
    borrow = (diff > v[index][i]);
   }
   v[1 - index][i] = diff;
  }

  index = !(index ^ borrow);
  uECC_vli_rshift1(mod_multiple, num_words);
  mod_multiple[num_words - 1] |= mod_multiple[num_words] <<
            (32 - 1);
  uECC_vli_rshift1(mod_multiple + num_words, num_words);
 }
 uECC_vli_set(result, v[index], num_words);
}

void uECC_vli_modMult(uECC_word_t *result, const uECC_word_t *left,
        const uECC_word_t *right, const uECC_word_t *mod,
        wordcount_t num_words)
{
 uECC_word_t product[2 * 8];
 uECC_vli_mult(product, left, right, num_words);
 uECC_vli_mmod(result, product, mod, num_words);
}

void uECC_vli_modMult_fast(uECC_word_t *result, const uECC_word_t *left,
      const uECC_word_t *right, uECC_Curve curve)
{
 uECC_word_t product[2 * 8];
 uECC_vli_mult(product, left, right, curve->num_words);

 curve->mmod_fast(result, product);
}

static void uECC_vli_modSquare_fast(uECC_word_t *result,
        const uECC_word_t *left,
        uECC_Curve curve)
{
 uECC_vli_modMult_fast(result, left, left, curve);
}




static void vli_modInv_update(uECC_word_t *uv,
         const uECC_word_t *mod,
         wordcount_t num_words)
{

 uECC_word_t carry = 0;

 if (!(!(uv[0] & 1))) {
  carry = uECC_vli_add(uv, uv, mod, num_words);
 }
 uECC_vli_rshift1(uv, num_words);
 if (carry) {
  uv[num_words - 1] |= 0x80000000;
 }
}

void uECC_vli_modInv(uECC_word_t *result, const uECC_word_t *input,
       const uECC_word_t *mod, wordcount_t num_words)
{
 uECC_word_t a[8], b[8];
 uECC_word_t u[8], v[8];
 cmpresult_t cmpResult;

 if (uECC_vli_isZero(input, num_words)) {
  uECC_vli_clear(result, num_words);
  return;
 }

 uECC_vli_set(a, input, num_words);
 uECC_vli_set(b, mod, num_words);
 uECC_vli_clear(u, num_words);
 u[0] = 1;
 uECC_vli_clear(v, num_words);
 while ((cmpResult = uECC_vli_cmp_unsafe(a, b, num_words)) != 0) {
  if ((!(a[0] & 1))) {
   uECC_vli_rshift1(a, num_words);
         vli_modInv_update(u, mod, num_words);
      } else if ((!(b[0] & 1))) {
   uECC_vli_rshift1(b, num_words);
   vli_modInv_update(v, mod, num_words);
  } else if (cmpResult > 0) {
   uECC_vli_sub(a, a, b, num_words);
   uECC_vli_rshift1(a, num_words);
   if (uECC_vli_cmp_unsafe(u, v, num_words) < 0) {
           uECC_vli_add(u, u, mod, num_words);
         }
         uECC_vli_sub(u, u, v, num_words);
         vli_modInv_update(u, mod, num_words);
      } else {
         uECC_vli_sub(b, b, a, num_words);
         uECC_vli_rshift1(b, num_words);
         if (uECC_vli_cmp_unsafe(v, u, num_words) < 0) {
           uECC_vli_add(v, v, mod, num_words);
         }
         uECC_vli_sub(v, v, u, num_words);
         vli_modInv_update(v, mod, num_words);
      }
   }
   uECC_vli_set(result, u, num_words);
}



void double_jacobian_default(uECC_word_t * X1, uECC_word_t * Y1,
        uECC_word_t * Z1, uECC_Curve curve)
{

 uECC_word_t t4[8];
 uECC_word_t t5[8];
 wordcount_t num_words = curve->num_words;

 if (uECC_vli_isZero(Z1, num_words)) {
  return;
 }

 uECC_vli_modSquare_fast(t4, Y1, curve);
 uECC_vli_modMult_fast(t5, X1, t4, curve);
 uECC_vli_modSquare_fast(t4, t4, curve);
 uECC_vli_modMult_fast(Y1, Y1, Z1, curve);
 uECC_vli_modSquare_fast(Z1, Z1, curve);

 uECC_vli_modAdd(X1, X1, Z1, curve->p, num_words);
 uECC_vli_modAdd(Z1, Z1, Z1, curve->p, num_words);
 uECC_vli_modSub(Z1, X1, Z1, curve->p, num_words);
 uECC_vli_modMult_fast(X1, X1, Z1, curve);

 uECC_vli_modAdd(Z1, X1, X1, curve->p, num_words);
 uECC_vli_modAdd(X1, X1, Z1, curve->p, num_words);
 if (uECC_vli_testBit(X1, 0)) {
  uECC_word_t l_carry = uECC_vli_add(X1, X1, curve->p, num_words);
  uECC_vli_rshift1(X1, num_words);
  X1[num_words - 1] |= l_carry << (32 - 1);
 } else {
  uECC_vli_rshift1(X1, num_words);
 }


 uECC_vli_modSquare_fast(Z1, X1, curve);
 uECC_vli_modSub(Z1, Z1, t5, curve->p, num_words);
 uECC_vli_modSub(Z1, Z1, t5, curve->p, num_words);
 uECC_vli_modSub(t5, t5, Z1, curve->p, num_words);
 uECC_vli_modMult_fast(X1, X1, t5, curve);

 uECC_vli_modSub(t4, X1, t4, curve->p, num_words);

 uECC_vli_set(X1, Z1, num_words);
 uECC_vli_set(Z1, Y1, num_words);
 uECC_vli_set(Y1, t4, num_words);
}

void x_side_default(uECC_word_t *result,
      const uECC_word_t *x,
      uECC_Curve curve)
{
 uECC_word_t _3[8] = {3};
 wordcount_t num_words = curve->num_words;

 uECC_vli_modSquare_fast(result, x, curve);
 uECC_vli_modSub(result, result, _3, curve->p, num_words);
 uECC_vli_modMult_fast(result, result, x, curve);

 uECC_vli_modAdd(result, result, curve->b, curve->p, num_words);
}

uECC_Curve uECC_secp256r1(void)
{
 return &curve_secp256r1;
}

void vli_mmod_fast_secp256r1(unsigned int *result, unsigned int*product)
{
 unsigned int tmp[8];
 int carry;


 uECC_vli_set(result, product, 8);


 tmp[0] = tmp[1] = tmp[2] = 0;
 tmp[3] = product[11];
 tmp[4] = product[12];
 tmp[5] = product[13];
 tmp[6] = product[14];
 tmp[7] = product[15];
 carry = uECC_vli_add(tmp, tmp, tmp, 8);
 carry += uECC_vli_add(result, result, tmp, 8);


 tmp[3] = product[12];
 tmp[4] = product[13];
 tmp[5] = product[14];
 tmp[6] = product[15];
 tmp[7] = 0;
 carry += uECC_vli_add(tmp, tmp, tmp, 8);
 carry += uECC_vli_add(result, result, tmp, 8);


 tmp[0] = product[8];
 tmp[1] = product[9];
 tmp[2] = product[10];
 tmp[3] = tmp[4] = tmp[5] = 0;
 tmp[6] = product[14];
 tmp[7] = product[15];
   carry += uECC_vli_add(result, result, tmp, 8);


 tmp[0] = product[9];
 tmp[1] = product[10];
 tmp[2] = product[11];
 tmp[3] = product[13];
 tmp[4] = product[14];
 tmp[5] = product[15];
 tmp[6] = product[13];
 tmp[7] = product[8];
 carry += uECC_vli_add(result, result, tmp, 8);


 tmp[0] = product[11];
 tmp[1] = product[12];
 tmp[2] = product[13];
 tmp[3] = tmp[4] = tmp[5] = 0;
 tmp[6] = product[8];
 tmp[7] = product[10];
 carry -= uECC_vli_sub(result, result, tmp, 8);


 tmp[0] = product[12];
 tmp[1] = product[13];
 tmp[2] = product[14];
 tmp[3] = product[15];
 tmp[4] = tmp[5] = 0;
 tmp[6] = product[9];
 tmp[7] = product[11];
 carry -= uECC_vli_sub(result, result, tmp, 8);


 tmp[0] = product[13];
 tmp[1] = product[14];
 tmp[2] = product[15];
 tmp[3] = product[8];
 tmp[4] = product[9];
 tmp[5] = product[10];
 tmp[6] = 0;
 tmp[7] = product[12];
 carry -= uECC_vli_sub(result, result, tmp, 8);


 tmp[0] = product[14];
 tmp[1] = product[15];
 tmp[2] = 0;
 tmp[3] = product[9];
 tmp[4] = product[10];
 tmp[5] = product[11];
 tmp[6] = 0;
 tmp[7] = product[13];
 carry -= uECC_vli_sub(result, result, tmp, 8);

 if (carry < 0) {
  do {
   carry += uECC_vli_add(result, result, curve_secp256r1.p, 8);
  }
  while (carry < 0);
 } else {
  while (carry ||
         uECC_vli_cmp_unsafe(curve_secp256r1.p, result, 8) != 1) {
   carry -= uECC_vli_sub(result, result, curve_secp256r1.p, 8);
  }
 }
}

uECC_word_t EccPoint_isZero(const uECC_word_t *point, uECC_Curve curve)
{
 return uECC_vli_isZero(point, curve->num_words * 2);
}

void apply_z(uECC_word_t * X1, uECC_word_t * Y1, const uECC_word_t * const Z,
      uECC_Curve curve)
{
 uECC_word_t t1[8];

 uECC_vli_modSquare_fast(t1, Z, curve);
 uECC_vli_modMult_fast(X1, X1, t1, curve);
 uECC_vli_modMult_fast(t1, t1, Z, curve);
 uECC_vli_modMult_fast(Y1, Y1, t1, curve);
}


static void XYcZ_initial_double(uECC_word_t * X1, uECC_word_t * Y1,
    uECC_word_t * X2, uECC_word_t * Y2,
    const uECC_word_t * const initial_Z,
    uECC_Curve curve)
{
 uECC_word_t z[8];
 wordcount_t num_words = curve->num_words;
 if (initial_Z) {
  uECC_vli_set(z, initial_Z, num_words);
 } else {
  uECC_vli_clear(z, num_words);
  z[0] = 1;
 }

 uECC_vli_set(X2, X1, num_words);
 uECC_vli_set(Y2, Y1, num_words);

 apply_z(X1, Y1, z, curve);
 curve->double_jacobian(X1, Y1, z, curve);
 apply_z(X2, Y2, z, curve);
}

void XYcZ_add(uECC_word_t * X1, uECC_word_t * Y1,
       uECC_word_t * X2, uECC_word_t * Y2,
       uECC_Curve curve)
{

 uECC_word_t t5[8];
 wordcount_t num_words = curve->num_words;

 uECC_vli_modSub(t5, X2, X1, curve->p, num_words);
 uECC_vli_modSquare_fast(t5, t5, curve);
 uECC_vli_modMult_fast(X1, X1, t5, curve);
 uECC_vli_modMult_fast(X2, X2, t5, curve);
 uECC_vli_modSub(Y2, Y2, Y1, curve->p, num_words);
 uECC_vli_modSquare_fast(t5, Y2, curve);

 uECC_vli_modSub(t5, t5, X1, curve->p, num_words);
 uECC_vli_modSub(t5, t5, X2, curve->p, num_words);
 uECC_vli_modSub(X2, X2, X1, curve->p, num_words);
 uECC_vli_modMult_fast(Y1, Y1, X2, curve);
 uECC_vli_modSub(X2, X1, t5, curve->p, num_words);
 uECC_vli_modMult_fast(Y2, Y2, X2, curve);
 uECC_vli_modSub(Y2, Y2, Y1, curve->p, num_words);

 uECC_vli_set(X2, t5, num_words);
}





static void XYcZ_addC(uECC_word_t * X1, uECC_word_t * Y1,
        uECC_word_t * X2, uECC_word_t * Y2,
        uECC_Curve curve)
{

 uECC_word_t t5[8];
 uECC_word_t t6[8];
 uECC_word_t t7[8];
 wordcount_t num_words = curve->num_words;

 uECC_vli_modSub(t5, X2, X1, curve->p, num_words);
 uECC_vli_modSquare_fast(t5, t5, curve);
 uECC_vli_modMult_fast(X1, X1, t5, curve);
 uECC_vli_modMult_fast(X2, X2, t5, curve);
 uECC_vli_modAdd(t5, Y2, Y1, curve->p, num_words);
 uECC_vli_modSub(Y2, Y2, Y1, curve->p, num_words);

 uECC_vli_modSub(t6, X2, X1, curve->p, num_words);
 uECC_vli_modMult_fast(Y1, Y1, t6, curve);
 uECC_vli_modAdd(t6, X1, X2, curve->p, num_words);
 uECC_vli_modSquare_fast(X2, Y2, curve);
 uECC_vli_modSub(X2, X2, t6, curve->p, num_words);

 uECC_vli_modSub(t7, X1, X2, curve->p, num_words);
 uECC_vli_modMult_fast(Y2, Y2, t7, curve);

 uECC_vli_modSub(Y2, Y2, Y1, curve->p, num_words);

 uECC_vli_modSquare_fast(t7, t5, curve);
 uECC_vli_modSub(t7, t7, t6, curve->p, num_words);
 uECC_vli_modSub(t6, t7, X1, curve->p, num_words);
 uECC_vli_modMult_fast(t6, t6, t5, curve);

 uECC_vli_modSub(Y1, t6, Y1, curve->p, num_words);

 uECC_vli_set(X1, t7, num_words);
}

void EccPoint_mult(uECC_word_t * result, const uECC_word_t * point,
     const uECC_word_t * scalar,
     const uECC_word_t * initial_Z,
     bitcount_t num_bits, uECC_Curve curve)
{

 uECC_word_t Rx[2][8];
 uECC_word_t Ry[2][8];
 uECC_word_t z[8];
 bitcount_t i;
 uECC_word_t nb;
 wordcount_t num_words = curve->num_words;

 uECC_vli_set(Rx[1], point, num_words);
   uECC_vli_set(Ry[1], point + num_words, num_words);

 XYcZ_initial_double(Rx[1], Ry[1], Rx[0], Ry[0], initial_Z, curve);

 for (i = num_bits - 2; i > 0; --i) {
  nb = !uECC_vli_testBit(scalar, i);
  XYcZ_addC(Rx[1 - nb], Ry[1 - nb], Rx[nb], Ry[nb], curve);
  XYcZ_add(Rx[nb], Ry[nb], Rx[1 - nb], Ry[1 - nb], curve);
 }

 nb = !uECC_vli_testBit(scalar, 0);
 XYcZ_addC(Rx[1 - nb], Ry[1 - nb], Rx[nb], Ry[nb], curve);


 uECC_vli_modSub(z, Rx[1], Rx[0], curve->p, num_words);
 uECC_vli_modMult_fast(z, z, Ry[1 - nb], curve);
 uECC_vli_modMult_fast(z, z, point, curve);
 uECC_vli_modInv(z, z, curve->p, num_words);

 uECC_vli_modMult_fast(z, z, point + num_words, curve);

 uECC_vli_modMult_fast(z, z, Rx[1 - nb], curve);


 XYcZ_add(Rx[nb], Ry[nb], Rx[1 - nb], Ry[1 - nb], curve);
 apply_z(Rx[0], Ry[0], z, curve);

 uECC_vli_set(result, Rx[0], num_words);
 uECC_vli_set(result + num_words, Ry[0], num_words);
}

uECC_word_t regularize_k(const uECC_word_t * const k, uECC_word_t *k0,
    uECC_word_t *k1, uECC_Curve curve)
{

 wordcount_t num_n_words = ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8));

 bitcount_t num_n_bits = curve->num_n_bits;

 uECC_word_t carry = uECC_vli_add(k0, k, curve->n, num_n_words) ||
        (num_n_bits < ((bitcount_t)num_n_words * 4 * 8) &&
        uECC_vli_testBit(k0, num_n_bits));

 uECC_vli_add(k1, k0, curve->n, num_n_words);

 return carry;
}

uECC_word_t EccPoint_compute_public_key(uECC_word_t *result,
     uECC_word_t *private_key,
     uECC_Curve curve)
{

 uECC_word_t tmp1[8];
  uECC_word_t tmp2[8];
 uECC_word_t *p2[2] = {tmp1, tmp2};
 uECC_word_t carry;



 carry = regularize_k(private_key, tmp1, tmp2, curve);

 EccPoint_mult(result, curve->G, p2[!carry], 0, curve->num_n_bits + 1, curve);

 if (EccPoint_isZero(result, curve)) {
  return 0;
 }
 return 1;
}


void uECC_vli_nativeToBytes(uint8_t *bytes, int num_bytes,
       const unsigned int *native)
{
 wordcount_t i;
 for (i = 0; i < num_bytes; ++i) {
  unsigned b = num_bytes - 1 - i;
  bytes[i] = native[b / 4] >> (8 * (b % 4));
 }
}


void uECC_vli_bytesToNative(unsigned int *native, const uint8_t *bytes,
       int num_bytes)
{
 wordcount_t i;
 uECC_vli_clear(native, (num_bytes + (4 - 1)) / 4);
 for (i = 0; i < num_bytes; ++i) {
  unsigned b = num_bytes - 1 - i;
  native[b / 4] |=
   (uECC_word_t)bytes[i] << (8 * (b % 4));
   }
}

int uECC_generate_random_int(uECC_word_t *random, const uECC_word_t *top,
        wordcount_t num_words)
{
 uECC_word_t mask = (uECC_word_t)-1;
 uECC_word_t tries;
 bitcount_t num_bits = uECC_vli_numBits(top, num_words);

 if (!g_rng_function) {
  return 0;
 }

 for (tries = 0; tries < 64; ++tries) {
  if (!g_rng_function((uint8_t *)random, num_words * 4)) {
         return 0;
      }
  random[num_words - 1] &=
          mask >> ((bitcount_t)(num_words * 4 * 8 - num_bits));
  if (!uECC_vli_isZero(random, num_words) &&
   uECC_vli_cmp(top, random, num_words) == 1) {
   return 1;
  }
 }
 return 0;
}


int uECC_valid_point(const uECC_word_t *point, uECC_Curve curve)
{
 uECC_word_t tmp1[8];
 uECC_word_t tmp2[8];
 wordcount_t num_words = curve->num_words;


 if (EccPoint_isZero(point, curve)) {
  return -1;
 }


 if (uECC_vli_cmp_unsafe(curve->p, point, num_words) != 1 ||
  uECC_vli_cmp_unsafe(curve->p, point + num_words, num_words) != 1) {
  return -2;
 }

 uECC_vli_modSquare_fast(tmp1, point + num_words, curve);
 curve->x_side(tmp2, point, curve);


 if (uECC_vli_equal(tmp1, tmp2, num_words) != 0)
  return -3;

 return 0;
}

int uECC_valid_public_key(const uint8_t *public_key, uECC_Curve curve)
{

 uECC_word_t _public[8 * 2];

 uECC_vli_bytesToNative(_public, public_key, curve->num_bytes);
 uECC_vli_bytesToNative(
 _public + curve->num_words,
 public_key + curve->num_bytes,
 curve->num_bytes);

 if (uECC_vli_cmp_unsafe(_public, curve->G, 8 * 2) == 0) {
  return -4;
 }

 return uECC_valid_point(_public, curve);
}

int uECC_compute_public_key(const uint8_t *private_key, uint8_t *public_key,
       uECC_Curve curve)
{

 uECC_word_t _private[8];
 uECC_word_t _public[8 * 2];

 uECC_vli_bytesToNative(
 _private,
 private_key,
 ((curve->num_n_bits + 7) / 8));


 if (uECC_vli_isZero(_private, ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8)))) {
  return 0;
 }

 if (uECC_vli_cmp(curve->n, _private, ((curve->num_n_bits + ((4 * 8) - 1)) / (4 * 8))) != 1) {
  return 0;
 }


 if (!EccPoint_compute_public_key(_public, _private, curve)) {
  return 0;
 }

 uECC_vli_nativeToBytes(public_key, curve->num_bytes, _public);
 uECC_vli_nativeToBytes(
 public_key +
 curve->num_bytes, curve->num_bytes, _public + curve->num_words);
 return 1;
}
