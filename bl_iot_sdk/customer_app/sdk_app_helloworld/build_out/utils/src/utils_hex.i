# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/src/utils_hex.c"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/utils//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/src/utils_hex.c"
# 30 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/src/utils_hex.c"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 1 3 4
# 11 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 3 4
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 1 3 4
# 34 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 3 4

# 34 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h" 3 4
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
# 12 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint.h" 2 3 4
# 31 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/src/utils_hex.c" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 149 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int wchar_t;
# 32 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/src/utils_hex.c" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_hex.h" 1
# 32 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_hex.h"

# 32 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_hex.h"
char *utils_bin2hex(char *dst, const void *src, size_t count);
# 33 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/src/utils_hex.c" 2

const char hex_asc[] = "0123456789abcdef";
const char hex_asc_upper[] = "0123456789ABCDEF";



static inline char *hex_byte_pack(char *buf, uint8_t byte)
{
    *buf++ = hex_asc_upper[((byte) & 0xf0) >> 4];
    *buf++ = hex_asc_upper[((byte) & 0x0f)];
    return buf;
}

char *utils_bin2hex(char *dst, const void *src, size_t count)
{
    const unsigned char *_src = src;

    while (count--) {
        dst = hex_byte_pack(dst, *_src++);
    }

    return dst;
}
