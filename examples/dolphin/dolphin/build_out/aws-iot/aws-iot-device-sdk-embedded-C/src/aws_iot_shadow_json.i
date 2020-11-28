# 1 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
# 1 "/b-l/dolphin/build_out/aws-iot//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
# 25 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
# 1 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h" 1
# 22 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h"
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
# 23 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h" 2
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdbool.h" 1 3 4
# 24 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h" 2
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 1 3 4
# 40 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 99 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 25 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h" 2

# 1 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_error.h" 1
# 40 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_error.h"

# 40 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_error.h"
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
# 27 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h" 2
# 1 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json_data.h" 1
# 28 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json_data.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 149 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4

# 149 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int wchar_t;
# 29 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json_data.h" 2






# 34 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json_data.h"
typedef struct jsonStruct jsonStruct_t;




typedef void (*jsonStructCallback_t)(const char *pJsonValueBuffer, uint32_t valueLength, jsonStruct_t *pJsonStruct_t);






typedef enum {
 SHADOW_JSON_INT32,
 SHADOW_JSON_INT16,
 SHADOW_JSON_INT8,
 SHADOW_JSON_UINT32,
 SHADOW_JSON_UINT16,
 SHADOW_JSON_UINT8,
 SHADOW_JSON_FLOAT,
 SHADOW_JSON_DOUBLE,
 SHADOW_JSON_BOOL,
 SHADOW_JSON_STRING,
 SHADOW_JSON_OBJECT
} JsonPrimitiveType;




struct jsonStruct {
 const char *pKey;
 void *pData;
 size_t dataLength;
 JsonPrimitiveType type;
 jsonStructCallback_t cb;
};
# 85 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json_data.h"
IoT_Error_t aws_iot_shadow_init_json_document(char *pJsonDocument, size_t maxSizeOfJsonDocument);
# 101 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json_data.h"
IoT_Error_t aws_iot_shadow_add_reported(char *pJsonDocument, size_t maxSizeOfJsonDocument, uint8_t count, ...);
# 117 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json_data.h"
IoT_Error_t aws_iot_shadow_add_desired(char *pJsonDocument, size_t maxSizeOfJsonDocument, uint8_t count, ...);
# 131 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json_data.h"
IoT_Error_t aws_iot_finalize_json_document(char *pJsonDocument, size_t maxSizeOfJsonDocument);
# 144 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json_data.h"
IoT_Error_t aws_iot_fill_with_client_token(char *pBufferToBeUpdatedWithClientToken, size_t maxSizeOfJsonDocument);
# 28 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h" 2


# 29 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h" 3 4
_Bool 
# 29 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h"
    isJsonValidAndParse(const char *pJsonDocument, size_t jsonSize, void *pJsonHandler, int32_t *pTokenCount);


# 31 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h" 3 4
_Bool 
# 31 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h"
    isJsonKeyMatchingAndUpdateValue(const char *pJsonDocument, void *pJsonHandler, int32_t tokenCount,
          jsonStruct_t *pDataStruct, uint32_t *pDataLength, int32_t *pDataPosition);

IoT_Error_t aws_iot_shadow_internal_get_request_json(char *pBuffer, size_t bufferSize);

IoT_Error_t aws_iot_shadow_internal_delete_request_json(char *pBuffer, size_t bufferSize);

void resetClientTokenSequenceNum(void);



# 41 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h" 3 4
_Bool 
# 41 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h"
    isReceivedJsonValid(const char *pJsonDocument, size_t jsonSize);


# 43 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h" 3 4
_Bool 
# 43 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h"
    extractClientToken(const char *pJsonDocument, size_t jsonSize, char *pExtractedClientToken, size_t clientTokenSize);


# 45 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h" 3 4
_Bool 
# 45 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h"
    extractVersionNumber(const char *pJsonDocument, void *pJsonHandler, int32_t tokenCount, uint32_t *pVersionNumber);
# 26 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 2

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
# 15 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 24 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 357 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4

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


# 28 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 2


# 1 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h" 1
# 36 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
# 1 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn/jsmn.h" 1
# 34 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn/jsmn.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 35 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn/jsmn.h" 2
# 47 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn/jsmn.h"

# 47 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn/jsmn.h"
typedef enum {
 JSMN_UNDEFINED = 0,
 JSMN_OBJECT = 1,
 JSMN_ARRAY = 2,
 JSMN_STRING = 3,
 JSMN_PRIMITIVE = 4
} jsmntype_t;

enum jsmnerr {

 JSMN_ERROR_NOMEM = -1,

 JSMN_ERROR_INVAL = -2,

 JSMN_ERROR_PART = -3
};







typedef struct {
 jsmntype_t type;
 int start;
 int end;
 int size;



} jsmntok_t;





typedef struct {
 unsigned int pos;
 unsigned int toknext;
 int toksuper;
} jsmn_parser;




void jsmn_init(jsmn_parser *parser);





int jsmn_parse(jsmn_parser *parser, const char *js, size_t len,
  jsmntok_t *tokens, unsigned int num_tokens);
# 37 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h" 2
# 51 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
int8_t jsoneq(const char *json, jsmntok_t *tok, const char *s);
# 65 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
IoT_Error_t parseInteger32Value(int32_t *i, const char *jsonString, jsmntok_t *token);
# 79 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
IoT_Error_t parseInteger16Value(int16_t *i, const char *jsonString, jsmntok_t *token);
# 93 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
IoT_Error_t parseInteger8Value(int8_t *i, const char *jsonString, jsmntok_t *token);
# 107 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
IoT_Error_t parseUnsignedInteger32Value(uint32_t *i, const char *jsonString, jsmntok_t *token);
# 121 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
IoT_Error_t parseUnsignedInteger16Value(uint16_t *i, const char *jsonString, jsmntok_t *token);
# 135 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
IoT_Error_t parseUnsignedInteger8Value(uint8_t *i, const char *jsonString, jsmntok_t *token);
# 149 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
IoT_Error_t parseFloatValue(float *f, const char *jsonString, jsmntok_t *token);
# 163 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
IoT_Error_t parseDoubleValue(double *d, const char *jsonString, jsmntok_t *token);
# 177 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
IoT_Error_t parseBooleanValue(
# 177 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h" 3 4
                             _Bool 
# 177 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
                                  *b, const char *jsonString, jsmntok_t *token);
# 192 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
IoT_Error_t parseStringValue(char *buf, size_t bufLen, const char *jsonString, jsmntok_t *token);
# 206 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_json_utils.h"
jsmntok_t *findToken(const char *key, const char *jsonString, jsmntok_t *token);
# 31 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/port/include/aws_iot_log.h" 1
       

# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 36 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 37 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 61 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 1 3
# 28 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3

# 28 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;






# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 1 3
# 20 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 3
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
# 47 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3


# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 1 3





# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_endian.h" 1 3
# 7 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 2 3
# 50 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 1 3
# 14 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 1 3
# 41 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 15 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 1 3
# 35 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef __int_least64_t time_t;
# 52 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 1 3
# 38 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 1 3
# 45 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 2 3
# 58 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 34 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef unsigned long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 60 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3


int select (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 51 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3




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
# 119 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 157 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
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
# 220 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __int64_t sbintime_t;


# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 1 3
# 23 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 1 3
# 48 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
struct sched_param {
  int sched_priority;
# 61 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
};
# 24 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 2 3
# 32 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_t;
# 61 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
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
# 154 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 168 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
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
# 224 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/types.h" 1 3
# 225 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 62 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stdio.h" 1 3
# 80 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 181 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 257 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 284 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 339 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 374 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 396 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 577 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 601 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 687 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 797 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3

# 4 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/port/include/aws_iot_log.h" 2
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 1 3
# 10 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 11 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3





# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 17 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3



# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/stdlib.h" 1 3
# 21 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3

# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/alloca.h" 1 3
# 23 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3
# 33 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3


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
# 191 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
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
# 224 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
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
# 312 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
void qsort_r (void *__base, size_t __nmemb, size_t __size, void *__thunk, int (*_compar)(void *, const void *, const void *))
             __asm__ ("" "__bsd_qsort_r");
# 322 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 339 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3

# 5 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/port/include/aws_iot_log.h" 2
# 32 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_key.h" 1
# 33 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/port/include/aws_iot_config.h" 1
# 34 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 2


# 35 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
extern char mqttClientID[80];

static uint32_t clientTokenNum = 0;


static IoT_Error_t convertDataToString(char *pStringBuffer, size_t maxSizoStringBuffer, JsonPrimitiveType type,
            void *pData);

void resetClientTokenSequenceNum(void) {
 clientTokenNum = 0;
}

static IoT_Error_t emptyJsonWithClientToken(char *pBuffer, size_t bufferSize) {

    IoT_Error_t rc = SUCCESS;
    size_t dataLenInBuffer = 0;

 if(pBuffer != 
# 52 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
              ((void *)0)
# 52 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                  )
    {
        dataLenInBuffer = (size_t)snprintf(pBuffer, bufferSize, "{\"clientToken\":\"");
    }else
 {
     ;
        rc = FAILURE;
 }

 if(rc == SUCCESS)
 {
     if ( dataLenInBuffer < bufferSize )
     {
         dataLenInBuffer += (size_t)snprintf(pBuffer + dataLenInBuffer, bufferSize - dataLenInBuffer, "%s-%d", mqttClientID, ( int )clientTokenNum++);
     }
     else
     {
         rc = FAILURE;
         ;
     }
    }

 if(rc == SUCCESS)
 {
     if ( dataLenInBuffer < bufferSize )
     {
         dataLenInBuffer += (size_t)snprintf( pBuffer + dataLenInBuffer, bufferSize - dataLenInBuffer, "\"}" );
         if ( dataLenInBuffer > bufferSize )
         {
             rc = FAILURE;
             ;
         }
     }
     else
     {
         rc = FAILURE;
         ;
     }
    }

    do { return rc; } while(0);
}

IoT_Error_t aws_iot_shadow_internal_get_request_json(char *pBuffer, size_t bufferSize) {
 return emptyJsonWithClientToken( pBuffer, bufferSize);
}

IoT_Error_t aws_iot_shadow_internal_delete_request_json(char *pBuffer, size_t bufferSize ) {
 return emptyJsonWithClientToken( pBuffer, bufferSize);
}

static inline IoT_Error_t checkReturnValueOfSnPrintf(int32_t snPrintfReturn, size_t maxSizeOfJsonDocument) {
 if(snPrintfReturn < 0) {
  return SHADOW_JSON_ERROR;
 } else if((size_t) snPrintfReturn >= maxSizeOfJsonDocument) {
  return SHADOW_JSON_BUFFER_TRUNCATED;
 }
 return SUCCESS;
}

IoT_Error_t aws_iot_shadow_init_json_document(char *pJsonDocument, size_t maxSizeOfJsonDocument) {

 IoT_Error_t ret_val = SUCCESS;
 int32_t snPrintfReturn = 0;

 if(pJsonDocument == 
# 117 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                    ((void *)0)
# 117 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                        ) {
  return NULL_VALUE_ERROR;
 }
 snPrintfReturn = snprintf(pJsonDocument, maxSizeOfJsonDocument, "{\"state\":{");

 ret_val = checkReturnValueOfSnPrintf(snPrintfReturn, maxSizeOfJsonDocument);

 return ret_val;

}

IoT_Error_t aws_iot_shadow_add_desired(char *pJsonDocument, size_t maxSizeOfJsonDocument, uint8_t count, ...) {
 IoT_Error_t ret_val = SUCCESS;
 size_t tempSize = 0;
 int8_t i;
 size_t remSizeOfJsonBuffer = maxSizeOfJsonDocument;
 int32_t snPrintfReturn = 0;
 va_list pArgs;
 jsonStruct_t *pTemporary = 
# 135 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                           ((void *)0)
# 135 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                               ;
 
# 136 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
__builtin_va_start(
# 136 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
pArgs
# 136 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
,
# 136 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
count
# 136 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
)
# 136 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                      ;

 if(pJsonDocument == 
# 138 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                    ((void *)0)
# 138 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                        ) {
  
# 139 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
 __builtin_va_end(
# 139 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
 pArgs
# 139 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
 )
# 139 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
              ;
  return NULL_VALUE_ERROR;
 }

 tempSize = maxSizeOfJsonDocument - strlen(pJsonDocument);
 if(tempSize <= 1) {
  
# 145 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
 __builtin_va_end(
# 145 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
 pArgs
# 145 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
 )
# 145 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
              ;
  return SHADOW_JSON_ERROR;
 }
 remSizeOfJsonBuffer = tempSize;

 snPrintfReturn = snprintf(pJsonDocument + strlen(pJsonDocument), remSizeOfJsonBuffer, "\"desired\":{");
 ret_val = checkReturnValueOfSnPrintf(snPrintfReturn, remSizeOfJsonBuffer);

 if(ret_val != SUCCESS) {
  
# 154 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
 __builtin_va_end(
# 154 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
 pArgs
# 154 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
 )
# 154 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
              ;
  return ret_val;
 }

 for(i = 0; i < count; i++) {
  tempSize = maxSizeOfJsonDocument - strlen(pJsonDocument);
  if(tempSize <= 1) {
   
# 161 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
  __builtin_va_end(
# 161 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
  pArgs
# 161 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
  )
# 161 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
               ;
   return SHADOW_JSON_ERROR;
  }
  remSizeOfJsonBuffer = tempSize;
  pTemporary = 
# 165 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
              __builtin_va_arg(
# 165 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
              pArgs
# 165 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
              ,
# 165 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
              jsonStruct_t *
# 165 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
              )
# 165 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                                            ;
  if(pTemporary != 
# 166 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                  ((void *)0)
# 166 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                      ) {
   snPrintfReturn = snprintf(pJsonDocument + strlen(pJsonDocument), remSizeOfJsonBuffer, "\"%s\":",
           pTemporary->pKey);
   ret_val = checkReturnValueOfSnPrintf(snPrintfReturn, remSizeOfJsonBuffer);
   if(ret_val != SUCCESS) {
    
# 171 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
   __builtin_va_end(
# 171 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
   pArgs
# 171 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
   )
# 171 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                ;
    return ret_val;
   }
   if(pTemporary->pKey != 
# 174 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                         ((void *)0) 
# 174 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                              && pTemporary->pData != 
# 174 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                                                      ((void *)0)
# 174 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                                                          ) {
    ret_val = convertDataToString(pJsonDocument + strlen(pJsonDocument), remSizeOfJsonBuffer,
             pTemporary->type, pTemporary->pData);
   } else {
    
# 178 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
   __builtin_va_end(
# 178 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
   pArgs
# 178 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
   )
# 178 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                ;
    return NULL_VALUE_ERROR;
   }
   if(ret_val != SUCCESS) {
    
# 182 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
   __builtin_va_end(
# 182 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
   pArgs
# 182 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
   )
# 182 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                ;
    return ret_val;
   }
  } else {
   
# 186 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
  __builtin_va_end(
# 186 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
  pArgs
# 186 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
  )
# 186 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
               ;
   return NULL_VALUE_ERROR;
  }
 }

 
# 191 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
__builtin_va_end(
# 191 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
pArgs
# 191 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
)
# 191 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
             ;
 snPrintfReturn = snprintf(pJsonDocument + strlen(pJsonDocument) - 1, remSizeOfJsonBuffer, "},");
 ret_val = checkReturnValueOfSnPrintf(snPrintfReturn, remSizeOfJsonBuffer);
 return ret_val;
}

IoT_Error_t aws_iot_shadow_add_reported(char *pJsonDocument, size_t maxSizeOfJsonDocument, uint8_t count, ...) {
 IoT_Error_t ret_val = SUCCESS;

 int8_t i;
 size_t remSizeOfJsonBuffer = maxSizeOfJsonDocument;
 int32_t snPrintfReturn = 0;
 size_t tempSize = 0;
 jsonStruct_t *pTemporary;
 va_list pArgs;
 
# 206 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
__builtin_va_start(
# 206 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
pArgs
# 206 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
,
# 206 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
count
# 206 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
)
# 206 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                      ;

 if(pJsonDocument == 
# 208 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                    ((void *)0)
# 208 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                        ) {
  
# 209 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
 __builtin_va_end(
# 209 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
 pArgs
# 209 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
 )
# 209 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
              ;
  return NULL_VALUE_ERROR;
 }


 tempSize = maxSizeOfJsonDocument - strlen(pJsonDocument);
 if(tempSize <= 1) {
  
# 216 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
 __builtin_va_end(
# 216 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
 pArgs
# 216 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
 )
# 216 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
              ;
  return SHADOW_JSON_ERROR;
 }
 remSizeOfJsonBuffer = tempSize;

 snPrintfReturn = snprintf(pJsonDocument + strlen(pJsonDocument), remSizeOfJsonBuffer, "\"reported\":{");
 ret_val = checkReturnValueOfSnPrintf(snPrintfReturn, remSizeOfJsonBuffer);

 if(ret_val != SUCCESS) {
  
# 225 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
 __builtin_va_end(
# 225 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
 pArgs
# 225 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
 )
# 225 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
              ;
  return ret_val;
 }

 for(i = 0; i < count; i++) {
  tempSize = maxSizeOfJsonDocument - strlen(pJsonDocument);
  if(tempSize <= 1) {
   
# 232 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
  __builtin_va_end(
# 232 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
  pArgs
# 232 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
  )
# 232 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
               ;
   return SHADOW_JSON_ERROR;
  }
  remSizeOfJsonBuffer = tempSize;

  pTemporary = 
# 237 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
              __builtin_va_arg(
# 237 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
              pArgs
# 237 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
              ,
# 237 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
              jsonStruct_t *
# 237 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
              )
# 237 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                                            ;
  if(pTemporary != 
# 238 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                  ((void *)0)
# 238 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                      ) {
   snPrintfReturn = snprintf(pJsonDocument + strlen(pJsonDocument), remSizeOfJsonBuffer, "\"%s\":",
           pTemporary->pKey);
   ret_val = checkReturnValueOfSnPrintf(snPrintfReturn, remSizeOfJsonBuffer);
   if(ret_val != SUCCESS) {
    
# 243 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
   __builtin_va_end(
# 243 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
   pArgs
# 243 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
   )
# 243 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                ;
    return ret_val;
   }
   if(pTemporary->pKey != 
# 246 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                         ((void *)0) 
# 246 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                              && pTemporary->pData != 
# 246 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                                                      ((void *)0)
# 246 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                                                          ) {
    ret_val = convertDataToString(pJsonDocument + strlen(pJsonDocument), remSizeOfJsonBuffer,
             pTemporary->type, pTemporary->pData);
   } else {
    
# 250 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
   __builtin_va_end(
# 250 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
   pArgs
# 250 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
   )
# 250 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                ;
    return NULL_VALUE_ERROR;
   }
   if(ret_val != SUCCESS) {
    
# 254 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
   __builtin_va_end(
# 254 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
   pArgs
# 254 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
   )
# 254 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                ;
    return ret_val;
   }
  } else {
   
# 258 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
  __builtin_va_end(
# 258 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
  pArgs
# 258 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
  )
# 258 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
               ;
   return NULL_VALUE_ERROR;
  }
 }

 
# 263 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
__builtin_va_end(
# 263 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
pArgs
# 263 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
)
# 263 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
             ;
 snPrintfReturn = snprintf(pJsonDocument + strlen(pJsonDocument) - 1, remSizeOfJsonBuffer, "},");
 ret_val = checkReturnValueOfSnPrintf(snPrintfReturn, remSizeOfJsonBuffer);
 return ret_val;
}


int32_t FillWithClientTokenSize(char *pBufferToBeUpdatedWithClientToken, size_t maxSizeOfJsonDocument) {
 int32_t snPrintfReturn;
 snPrintfReturn = snprintf(pBufferToBeUpdatedWithClientToken, maxSizeOfJsonDocument, "%s-%d", mqttClientID,
      (int) clientTokenNum++);

 return snPrintfReturn;
}

IoT_Error_t aws_iot_fill_with_client_token(char *pBufferToBeUpdatedWithClientToken, size_t maxSizeOfJsonDocument) {

 int32_t snPrintfRet = 0;
 snPrintfRet = FillWithClientTokenSize(pBufferToBeUpdatedWithClientToken, maxSizeOfJsonDocument);
 return checkReturnValueOfSnPrintf(snPrintfRet, maxSizeOfJsonDocument);

}

IoT_Error_t aws_iot_finalize_json_document(char *pJsonDocument, size_t maxSizeOfJsonDocument) {
 size_t remSizeOfJsonBuffer = maxSizeOfJsonDocument;
 int32_t snPrintfReturn = 0;
 size_t tempSize = 0;
 IoT_Error_t ret_val = SUCCESS;

 if(pJsonDocument == 
# 292 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                    ((void *)0)
# 292 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                        ) {
  return NULL_VALUE_ERROR;
 }

 tempSize = maxSizeOfJsonDocument - strlen(pJsonDocument);
 if(tempSize <= 1) {
  return SHADOW_JSON_ERROR;
 }
 remSizeOfJsonBuffer = tempSize;


 snPrintfReturn = snprintf(pJsonDocument + strlen(pJsonDocument) - 1, remSizeOfJsonBuffer, "}, \"%s\":\"",
         "clientToken");
 ret_val = checkReturnValueOfSnPrintf(snPrintfReturn, remSizeOfJsonBuffer);

 if(ret_val != SUCCESS) {
  return ret_val;
 }

 tempSize = maxSizeOfJsonDocument - strlen(pJsonDocument);
 if(tempSize <= 1) {
  return SHADOW_JSON_ERROR;
 }
 remSizeOfJsonBuffer = tempSize;


 snPrintfReturn = FillWithClientTokenSize(pJsonDocument + strlen(pJsonDocument), remSizeOfJsonBuffer);
 ret_val = checkReturnValueOfSnPrintf(snPrintfReturn, remSizeOfJsonBuffer);

 if(ret_val != SUCCESS) {
  return ret_val;
 }
 tempSize = maxSizeOfJsonDocument - strlen(pJsonDocument);
 if(tempSize <= 1) {
  return SHADOW_JSON_ERROR;
 }
 remSizeOfJsonBuffer = tempSize;


 snPrintfReturn = snprintf(pJsonDocument + strlen(pJsonDocument), remSizeOfJsonBuffer, "\"}");
 ret_val = checkReturnValueOfSnPrintf(snPrintfReturn, remSizeOfJsonBuffer);

 return ret_val;
}

static IoT_Error_t convertDataToString(char *pStringBuffer, size_t maxSizoStringBuffer, JsonPrimitiveType type,
            void *pData) {
 int32_t snPrintfReturn = 0;
 IoT_Error_t ret_val = SUCCESS;

 if(maxSizoStringBuffer == 0) {
  return SHADOW_JSON_ERROR;
 }

 if(type == SHADOW_JSON_INT32) {
  snPrintfReturn = snprintf(pStringBuffer, maxSizoStringBuffer, "%li,", *(int32_t *) (pData));
 } else if(type == SHADOW_JSON_INT16) {
  snPrintfReturn = snprintf(pStringBuffer, maxSizoStringBuffer, "%hi,", *(int16_t *) (pData));
 } else if(type == SHADOW_JSON_INT8) {
  snPrintfReturn = snprintf(pStringBuffer, maxSizoStringBuffer, "%hhi,", *(int8_t *) (pData));
 } else if(type == SHADOW_JSON_UINT32) {
  snPrintfReturn = snprintf(pStringBuffer, maxSizoStringBuffer, "%lu,", *(uint32_t *) (pData));
 } else if(type == SHADOW_JSON_UINT16) {
  snPrintfReturn = snprintf(pStringBuffer, maxSizoStringBuffer, "%hu,", *(uint16_t *) (pData));
 } else if(type == SHADOW_JSON_UINT8) {
  snPrintfReturn = snprintf(pStringBuffer, maxSizoStringBuffer, "%hhu,", *(uint8_t *) (pData));
 } else if(type == SHADOW_JSON_DOUBLE) {
  snPrintfReturn = snprintf(pStringBuffer, maxSizoStringBuffer, "%f,", *(double *) (pData));
 } else if(type == SHADOW_JSON_FLOAT) {
  snPrintfReturn = snprintf(pStringBuffer, maxSizoStringBuffer, "%f,", *(float *) (pData));
 } else if(type == SHADOW_JSON_BOOL) {
  snPrintfReturn = snprintf(pStringBuffer, maxSizoStringBuffer, "%s,", *(
# 363 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                                                                        _Bool 
# 363 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                                                                             *) (pData) ? "true" : "false");
 } else if(type == SHADOW_JSON_STRING) {
  snPrintfReturn = snprintf(pStringBuffer, maxSizoStringBuffer, "\"%s\",", (char *) (pData));
 } else if(type == SHADOW_JSON_OBJECT) {
  snPrintfReturn = snprintf(pStringBuffer, maxSizoStringBuffer, "%s,", (char *) (pData));
 }


 ret_val = checkReturnValueOfSnPrintf(snPrintfReturn, maxSizoStringBuffer);

 return ret_val;
}

static jsmn_parser shadowJsonParser;
static jsmntok_t jsonTokenStruct[120];


# 379 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
_Bool 
# 379 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
    isJsonValidAndParse(const char *pJsonDocument, size_t jsonSize, void *pJsonHandler, int32_t *pTokenCount) {
 int32_t tokenCount;

 (void)(pJsonHandler);

 jsmn_init(&shadowJsonParser);

 tokenCount = jsmn_parse(&shadowJsonParser, pJsonDocument, jsonSize, jsonTokenStruct,
       sizeof(jsonTokenStruct) / sizeof(jsonTokenStruct[0]));

 if(tokenCount < 0) {
  ;
  return 
# 391 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
        0
# 391 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
             ;
 }


 if(tokenCount < 1 || jsonTokenStruct[0].type != JSMN_OBJECT) {
  ;
  return 
# 397 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
        0
# 397 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
             ;
 }

 *pTokenCount = tokenCount;

 return 
# 402 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
       1
# 402 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
           ;
}

static IoT_Error_t UpdateValueIfNoObject(const char *pJsonString, jsonStruct_t *pDataStruct, jsmntok_t token) {
 IoT_Error_t ret_val = SHADOW_JSON_ERROR;
 if(pDataStruct->type == SHADOW_JSON_BOOL && pDataStruct->dataLength >= sizeof(
# 407 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                                                                              _Bool
# 407 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                                                                                  )) {
  ret_val = parseBooleanValue((
# 408 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                              _Bool 
# 408 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                                   *) pDataStruct->pData, pJsonString, &token);
 } else if(pDataStruct->type == SHADOW_JSON_INT32 && pDataStruct->dataLength >= sizeof(int32_t)) {
  ret_val = parseInteger32Value((int32_t *) pDataStruct->pData, pJsonString, &token);
 } else if(pDataStruct->type == SHADOW_JSON_INT16 && pDataStruct->dataLength >= sizeof(int16_t)) {
  ret_val = parseInteger16Value((int16_t *) pDataStruct->pData, pJsonString, &token);
 } else if(pDataStruct->type == SHADOW_JSON_INT8 && pDataStruct->dataLength >= sizeof(int8_t)) {
  ret_val = parseInteger8Value((int8_t *) pDataStruct->pData, pJsonString, &token);
 } else if(pDataStruct->type == SHADOW_JSON_UINT32 && pDataStruct->dataLength >= sizeof(uint32_t)) {
  ret_val = parseUnsignedInteger32Value((uint32_t *) pDataStruct->pData, pJsonString, &token);
 } else if(pDataStruct->type == SHADOW_JSON_UINT16 && pDataStruct->dataLength >= sizeof(uint16_t)) {
  ret_val = parseUnsignedInteger16Value((uint16_t *) pDataStruct->pData, pJsonString, &token);
 } else if(pDataStruct->type == SHADOW_JSON_UINT8 && pDataStruct->dataLength >= sizeof(uint8_t)) {
  ret_val = parseUnsignedInteger8Value((uint8_t *) pDataStruct->pData, pJsonString, &token);
 } else if(pDataStruct->type == SHADOW_JSON_FLOAT && pDataStruct->dataLength >= sizeof(float)) {
  ret_val = parseFloatValue((float *) pDataStruct->pData, pJsonString, &token);
 } else if(pDataStruct->type == SHADOW_JSON_DOUBLE && pDataStruct->dataLength >= sizeof(double)) {
  ret_val = parseDoubleValue((double *) pDataStruct->pData, pJsonString, &token);
 } else if(pDataStruct->type == SHADOW_JSON_STRING) {
  ret_val = parseStringValue((char *) pDataStruct->pData, pDataStruct->dataLength, pJsonString, &token);
        }

 return ret_val;
}


# 432 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
_Bool 
# 432 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
    isJsonKeyMatchingAndUpdateValue(const char *pJsonDocument, void *pJsonHandler, int32_t tokenCount,
          jsonStruct_t *pDataStruct, uint32_t *pDataLength, int32_t *pDataPosition) {
 int32_t i;
 uint32_t dataLength;
 jsmntok_t dataToken;

 (void)(pJsonHandler);

 for(i = 1; i < tokenCount; i++) {
  if(jsoneq(pJsonDocument, &(jsonTokenStruct[i]), pDataStruct->pKey) == 0) {
   dataToken = jsonTokenStruct[i + 1];
   dataLength = (uint32_t) (dataToken.end - dataToken.start);
   UpdateValueIfNoObject(pJsonDocument, pDataStruct, dataToken);
   *pDataPosition = dataToken.start;
   *pDataLength = dataLength;
   return 
# 447 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
         1
# 447 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
             ;
  } else if(jsoneq(pJsonDocument, &(jsonTokenStruct[i]), "metadata") == 0) {
   return 
# 449 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
         0
# 449 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
              ;
  }
 }
 return 
# 452 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
       0
# 452 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
            ;
}


# 455 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
_Bool 
# 455 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
    isReceivedJsonValid(const char *pJsonDocument, size_t jsonSize ) {
 int32_t tokenCount;

 jsmn_init(&shadowJsonParser);

 tokenCount = jsmn_parse(&shadowJsonParser, pJsonDocument, jsonSize, jsonTokenStruct,
       sizeof(jsonTokenStruct) / sizeof(jsonTokenStruct[0]));

 if(tokenCount < 0) {
  ;
  return 
# 465 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
        0
# 465 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
             ;
 }


 if(tokenCount < 1 || jsonTokenStruct[0].type != JSMN_OBJECT) {
  return 
# 470 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
        0
# 470 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
             ;
 }

 return 
# 473 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
       1
# 473 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
           ;
}


# 476 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
_Bool 
# 476 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
    extractClientToken(const char *pJsonDocument, size_t jsonSize, char *pExtractedClientToken, size_t clientTokenSize) {
 int32_t tokenCount, i;
 size_t length;
 jsmntok_t ClientJsonToken;
 jsmn_init(&shadowJsonParser);

 tokenCount = jsmn_parse(&shadowJsonParser, pJsonDocument, jsonSize, jsonTokenStruct,
       sizeof(jsonTokenStruct) / sizeof(jsonTokenStruct[0]));

 if(tokenCount < 0) {
  ;
  return 
# 487 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
        0
# 487 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
             ;
 }


 if(tokenCount < 1 || jsonTokenStruct[0].type != JSMN_OBJECT) {
  return 
# 492 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
        0
# 492 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
             ;
 }

 for(i = 1; i < tokenCount; i++) {
  if(jsoneq(pJsonDocument, &jsonTokenStruct[i], "clientToken") == 0) {
   ClientJsonToken = jsonTokenStruct[i + 1];
   length = (uint8_t) (ClientJsonToken.end - ClientJsonToken.start);
            if (clientTokenSize >= length + 1)
            {
                strncpy( pExtractedClientToken, pJsonDocument + ClientJsonToken.start, length);
                pExtractedClientToken[length] = '\0';
                return 
# 503 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                      1
# 503 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                          ;
            }else{
                ;
                return 
# 506 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
                      0
# 506 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
                           ;
            }
  }
 }

 return 
# 511 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
       0
# 511 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
            ;
}


# 514 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
_Bool 
# 514 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
    extractVersionNumber(const char *pJsonDocument, void *pJsonHandler, int32_t tokenCount, uint32_t *pVersionNumber) {
 int32_t i;
 IoT_Error_t ret_val = SUCCESS;

 (void)(pJsonHandler);

 for(i = 1; i < tokenCount; i++) {
  if(jsoneq(pJsonDocument, &(jsonTokenStruct[i]), "version") == 0) {
   ret_val = parseUnsignedInteger32Value(pVersionNumber, pJsonDocument, &jsonTokenStruct[i + 1]);
   if(ret_val == SUCCESS) {
    return 
# 524 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
          1
# 524 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
              ;
   }
  }
 }
 return 
# 528 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c" 3 4
       0
# 528 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_json.c"
            ;
}
