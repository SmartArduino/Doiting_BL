# 1 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c"
# 1 "/b-l/DoHome_Light_rgbcw/build_out/utils//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c"
# 30 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c"
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
# 31 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c" 2
# 1 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 149 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int wchar_t;
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
# 32 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c" 2
# 1 "/b-l/bl_iot_sdk/components/utils/include/utils_memp.h" 1
# 34 "/b-l/bl_iot_sdk/components/utils/include/utils_memp.h"
struct utils_memp_node {
    struct utils_memp_node *next;
};

typedef struct pool {
    uint32_t node_size;
    uint32_t pool_cap;
    uint32_t pool_size;
    uint8_t align_req;
    uint32_t padded_node_size;
    void *first_node;
    void *last_node;
    struct utils_memp_node *mem;
}utils_memp_pool_t;

int utils_memp_init(utils_memp_pool_t **pool, uint16_t node_size, uint16_t pool_cap, uint8_t align_req);
int utils_memp_deinit(utils_memp_pool_t *pool);
void *utils_memp_malloc(utils_memp_pool_t *pool);
int utils_memp_free(utils_memp_pool_t *pool, void *node);
# 33 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c" 2





int utils_memp_init(utils_memp_pool_t **pool, uint16_t node_size, uint16_t pool_cap, uint8_t align_req)
{
    utils_memp_pool_t *npool;
    struct utils_memp_node *node;
    struct utils_memp_node *pool_mem;
    size_t size;
    uint16_t padded_node_size;
    uint16_t i;

    align_req = (((align_req) + (sizeof(void *)) -1) & ~((sizeof(void *))-1));
    padded_node_size = (((node_size + sizeof(struct utils_memp_node)) + (align_req) -1) & ~((align_req)-1));

    size = sizeof(utils_memp_pool_t);
    size = (((size) + (align_req) -1) & ~((align_req)-1));
    size += padded_node_size * pool_cap;

    npool = pvPortMalloc(size);

    if (!npool) {
        return -1;
    }

    node = (struct utils_memp_node *)((uint8_t *)npool + (size - padded_node_size * pool_cap));
    npool->first_node = node;
    npool->node_size = node_size;
    npool->pool_cap = pool_cap;
    npool->pool_size = 0;
    npool->align_req = align_req;
    npool->padded_node_size = padded_node_size;
    npool->mem = 
# 67 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c" 3 4
                ((void *)0)
# 67 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c"
                    ;
    pool_mem = npool->mem;

    for(i = 0; i < pool_cap; ++i) {
        node->next = pool_mem;
        pool_mem = node;
        node = (struct utils_memp_node *)((uint8_t *)node + padded_node_size);
    }
    npool->mem = pool_mem;
    npool->last_node = npool->mem;
    *pool = npool;

    return 0;
}

int utils_memp_deinit(utils_memp_pool_t *pool)
{
    if (!pool) {
        return -1;
    }
    vPortFree(pool);

    return 0;
}

void *utils_memp_malloc(utils_memp_pool_t *pool)
{
    struct utils_memp_node *node;
    uint32_t *pat;
    if (!pool) {
        return 
# 97 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c" 3 4
              ((void *)0)
# 97 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c"
                  ;
    }
    if (pool->pool_size == pool->pool_cap) {
        return 
# 100 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c" 3 4
              ((void *)0)
# 100 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c"
                  ;
    }
    node = pool->mem;
    if (node != 
# 103 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c" 3 4
               ((void *)0)
# 103 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c"
                   ) {
        pool->mem = node->next;
        pool->pool_size++;
        pat = (uint32_t *)&node->next;
        *pat = 0XA5;
        return (void *)node + sizeof(struct utils_memp_node);
    } else {
        return 
# 110 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c" 3 4
              ((void *)0)
# 110 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c"
                  ;
    }
}

int utils_memp_free(utils_memp_pool_t *pool, void *node)
{
    struct utils_memp_node *utils_memp_node;
    node = node - sizeof(struct utils_memp_node);
    uint32_t *pat;
    int diff;

    if (!pool || !node) {
        return -1;
    }
    if (pool->pool_size == 0) {
        return -1;
    }
    if (!(node >= pool->first_node && node <= pool->last_node)) {
        return -1;
    }
    diff = node - pool->first_node;
    if (diff % pool->padded_node_size) {
        return -1;
    }

    pat = (uint32_t *)(&((struct utils_memp_node *)node)->next);
    if (*pat != 0XA5) {
        return -1;
    }
    utils_memp_node = (struct utils_memp_node*)node;
    utils_memp_node->next = pool->mem;
    pool->mem = utils_memp_node;
    pool->pool_size--;
    return 0;
}
