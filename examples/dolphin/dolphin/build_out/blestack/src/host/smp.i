# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
# 1 "/b-l/dolphin/build_out/blestack//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
# 13 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h" 1


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
# 4 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 149 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int wchar_t;
# 5 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h" 2

# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/zephyr/types.h" 1
# 16 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/zephyr/types.h"

# 16 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/zephyr/types.h"
typedef signed char s8_t;
typedef signed short s16_t;
typedef signed int s32_t;
typedef signed long long s64_t;

typedef unsigned char u8_t;
typedef unsigned short u16_t;
typedef unsigned int u32_t;
typedef unsigned long long u64_t;
# 7 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 1
# 20 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 21 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 2
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdbool.h" 1 3 4
# 22 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 2






struct _snode {
 struct _snode *next;
};

typedef struct _snode sys_snode_t;

struct _slist {
 sys_snode_t *head;
 sys_snode_t *tail;
};

typedef struct _slist sys_slist_t;
# 192 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_init(sys_slist_t *list)
{
 list->head = 
# 194 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             ((void *)0)
# 194 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
                 ;
 list->tail = 
# 195 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             ((void *)0)
# 195 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
                 ;
}
# 207 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline 
# 207 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             _Bool 
# 207 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
                  sys_slist_is_empty(sys_slist_t *list)
{
 return (!list->head);
}
# 219 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_peek_head(sys_slist_t *list)
{
 return list->head;
}
# 231 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_peek_tail(sys_slist_t *list)
{
 return list->tail;
}
# 245 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_peek_next_no_check(sys_snode_t *node)
{
 return node->next;
}
# 257 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_peek_next(sys_snode_t *node)
{
 return node ? sys_slist_peek_next_no_check(node) : 
# 259 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
                                                   ((void *)0)
# 259 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
                                                       ;
}
# 270 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_prepend(sys_slist_t *list,
         sys_snode_t *node)
{
 node->next = list->head;
 list->head = node;

 if (!list->tail) {
  list->tail = list->head;
 }
}
# 289 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_append(sys_slist_t *list,
        sys_snode_t *node)
{
 node->next = 
# 292 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             ((void *)0)
# 292 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
                 ;

 if (!list->tail) {
  list->tail = node;
  list->head = node;
 } else {
  list->tail->next = node;
  list->tail = node;
 }
}
# 314 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_append_list(sys_slist_t *list,
      void *head, void *tail)
{
 if (!list->tail) {
  list->head = (sys_snode_t *)head;
  list->tail = (sys_snode_t *)tail;
 } else {
  list->tail->next = (sys_snode_t *)head;
  list->tail = (sys_snode_t *)tail;
 }
}
# 335 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_merge_slist(sys_slist_t *list,
      sys_slist_t *list_to_append)
{
 sys_slist_append_list(list, list_to_append->head,
        list_to_append->tail);
 sys_slist_init(list_to_append);
}
# 352 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_insert(sys_slist_t *list,
        sys_snode_t *prev,
        sys_snode_t *node)
{
 if (!prev) {
  sys_slist_prepend(list, node);
 } else if (!prev->next) {
  sys_slist_append(list, node);
 } else {
  node->next = prev->next;
  prev->next = node;
 }
}
# 376 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_get_not_empty(sys_slist_t *list)
{
 sys_snode_t *node = list->head;

 list->head = node->next;
 if (list->tail == node) {
  list->tail = list->head;
 }

 return node;
}
# 397 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline sys_snode_t *sys_slist_get(sys_slist_t *list)
{
 return sys_slist_is_empty(list) ? 
# 399 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
                                  ((void *)0) 
# 399 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
                                       : sys_slist_get_not_empty(list);
}
# 412 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline void sys_slist_remove(sys_slist_t *list,
        sys_snode_t *prev_node,
        sys_snode_t *node)
{
 if (!prev_node) {
  list->head = node->next;


  if (list->tail == node) {
   list->tail = list->head;
  }
 } else {
  prev_node->next = node->next;


  if (list->tail == node) {
   list->tail = prev_node;
  }
 }

 node->next = 
# 432 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             ((void *)0)
# 432 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
                 ;
}
# 445 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
static inline 
# 445 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
             _Bool 
# 445 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
                  sys_slist_find_and_remove(sys_slist_t *list,
          sys_snode_t *node)
{
 sys_snode_t *prev = 
# 448 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
                    ((void *)0)
# 448 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
                        ;
 sys_snode_t *test;

 for (test = sys_slist_peek_head(list); test; test = sys_slist_peek_next(test)) {
  if (test == node) {
   sys_slist_remove(list, prev, node);
   return 
# 454 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
         1
# 454 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
             ;
  }

  prev = test;
 }

 return 
# 460 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h" 3 4
       0
# 460 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
            ;
}
# 8 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h" 1
# 23 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 24 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h" 2





struct _dnode {
 union {
  struct _dnode *head;
  struct _dnode *next;
 };
 union {
  struct _dnode *tail;
  struct _dnode *prev;
 };
};

typedef struct _dnode sys_dlist_t;
typedef struct _dnode sys_dnode_t;
# 188 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_init(sys_dlist_t *list)
{
 list->head = (sys_dnode_t *)list;
 list->tail = (sys_dnode_t *)list;
}
# 205 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline int sys_dlist_is_head(sys_dlist_t *list, sys_dnode_t *node)
{
 return list->head == node;
}
# 219 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline int sys_dlist_is_tail(sys_dlist_t *list, sys_dnode_t *node)
{
 return list->tail == node;
}
# 232 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline int sys_dlist_is_empty(sys_dlist_t *list)
{
 return list->head == list;
}
# 247 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline int sys_dlist_has_multiple_nodes(sys_dlist_t *list)
{
 return list->head != list->tail;
}
# 260 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_head(sys_dlist_t *list)
{
 return sys_dlist_is_empty(list) ? 
# 262 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
                                  ((void *)0) 
# 262 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
                                       : list->head;
}
# 275 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_head_not_empty(sys_dlist_t *list)
{
 return list->head;
}
# 291 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_next_no_check(sys_dlist_t *list,
       sys_dnode_t *node)
{
 return (node == list->tail) ? 
# 294 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
                              ((void *)0) 
# 294 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
                                   : node->next;
}
# 307 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_next(sys_dlist_t *list,
            sys_dnode_t *node)
{
 return node ? sys_dlist_peek_next_no_check(list, node) : 
# 310 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
                                                         ((void *)0)
# 310 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
                                                             ;
}
# 321 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_peek_tail(sys_dlist_t *list)
{
 return sys_dlist_is_empty(list) ? 
# 323 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
                                  ((void *)0) 
# 323 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
                                       : list->tail;
}
# 337 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_append(sys_dlist_t *list, sys_dnode_t *node)
{
 node->next = list;
 node->prev = list->tail;

 list->tail->next = node;
 list->tail = node;
}
# 357 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_prepend(sys_dlist_t *list, sys_dnode_t *node)
{
 node->next = list->head;
 node->prev = list;

 list->head->prev = node;
 list->head = node;
}
# 379 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_insert_after(sys_dlist_t *list,
 sys_dnode_t *insert_point, sys_dnode_t *node)
{
 if (!insert_point) {
  sys_dlist_prepend(list, node);
 } else {
  node->next = insert_point->next;
  node->prev = insert_point;
  insert_point->next->prev = node;
  insert_point->next = node;
 }
}
# 405 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_insert_before(sys_dlist_t *list,
 sys_dnode_t *insert_point, sys_dnode_t *node)
{
 if (!insert_point) {
  sys_dlist_append(list, node);
 } else {
  node->prev = insert_point->prev;
  node->next = insert_point;
  insert_point->prev->next = node;
  insert_point->prev = node;
 }
}
# 435 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_insert_at(sys_dlist_t *list, sys_dnode_t *node,
 int (*cond)(sys_dnode_t *, void *), void *data)
{
 if (sys_dlist_is_empty(list)) {
  sys_dlist_append(list, node);
 } else {
  sys_dnode_t *pos = sys_dlist_peek_head(list);

  while (pos && !cond(pos, data)) {
   pos = sys_dlist_peek_next(list, pos);
  }
  sys_dlist_insert_before(list, pos, node);
 }
}
# 461 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline void sys_dlist_remove(sys_dnode_t *node)
{
 node->prev->next = node->next;
 node->next->prev = node->prev;
}
# 477 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
static inline sys_dnode_t *sys_dlist_get(sys_dlist_t *list)
{
 sys_dnode_t *node;

 if (sys_dlist_is_empty(list)) {
  return 
# 482 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h" 3 4
        ((void *)0)
# 482 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/dlist.h"
            ;
 }

 node = list->head;
 sys_dlist_remove(node);
 return node;
}
# 9 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h" 1


# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/config.h" 1



# 1 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 74 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
# 1 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/platform.h" 1
# 127 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/platform.h"
unsigned long get_cpu_freq(void);
unsigned long get_timer_freq(void);
uint64_t get_timer_value(void);
# 75 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 2
# 149 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
void vAssertCalled( void );
# 5 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/config.h" 2
# 4 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h" 2

# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 1 3
# 9 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 3
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
# 10 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 2 3
# 39 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 3

# 39 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 3
void __assert (const char *, int, const char *)
     __attribute__ ((__noreturn__));
void __assert_func (const char *, int, const char *, const char *)
     __attribute__ ((__noreturn__));
# 6 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h" 2
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 7 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h" 2

# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 11 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
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


# 9 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/zephyr/types.h" 1
# 10 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h" 1
# 11 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h" 2







# 17 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h"
typedef struct {
    void *hdl;
} bl_hdl_t;

typedef bl_hdl_t _queue_t;
typedef bl_hdl_t _sem_t;
typedef uint32_t _stack_element_t;
typedef bl_hdl_t _mutex_t;
typedef bl_hdl_t bl_timer_t;
typedef uint32_t _task_t;
# 48 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h"
typedef sys_dlist_t _wait_q_t;

struct k_queue {
        void *hdl;
        sys_dlist_t poll_events;
};





void k_queue_init(struct k_queue *queue, int size);
void k_queue_free(struct k_queue *queue);
void k_queue_append(struct k_queue *queue, void *data);
void k_queue_prepend(struct k_queue *queue, void *data);
void k_queue_insert(struct k_queue *queue, void *prev, void *data);
void k_queue_append_list(struct k_queue *queue, void *head, void *tail);
void *k_queue_get(struct k_queue *queue, s32_t timeout);
int k_queue_is_empty(struct k_queue *queue);
int k_queue_get_cnt(struct k_queue *queue);

struct k_lifo {
    struct k_queue _queue;
};
# 94 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h"
struct k_fifo {
        struct k_queue _queue;
};
# 125 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h"
struct k_sem {
    _sem_t sem;
    sys_dlist_t poll_events;
};




int k_sem_init(struct k_sem *sem, unsigned int initial_count, unsigned int limit);




int k_sem_take(struct k_sem *sem, uint32_t timeout);




int k_sem_give(struct k_sem *sem);




int k_sem_delete(struct k_sem *sem);




unsigned int k_sem_count_get(struct k_sem *sem);

struct k_mutex {
    _mutex_t mutex;
    sys_dlist_t poll_events;
};

typedef void (*k_timer_handler_t)(void *timer);

typedef struct k_timer {
    bl_timer_t timer;
    k_timer_handler_t handler;
    void *args;
    uint32_t timeout;
    uint32_t start_ms;
} k_timer_t;




void k_timer_init(k_timer_t *timer, k_timer_handler_t handle, void *args);





void k_timer_start(k_timer_t *timer, uint32_t timeout);




void k_timer_stop(k_timer_t *timer);





void k_timer_delete(k_timer_t *timer);
# 206 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/bl_port.h"
int64_t k_uptime_get();
u32_t k_uptime_get_32(void);

struct k_thread {
    _task_t task;
};

typedef _stack_element_t k_thread_stack_t;

inline void k_call_stacks_analyze(void) { }




static inline char *K_THREAD_STACK_BUFFER(k_thread_stack_t *sym)
{
    return (char *)sym;
}

typedef void (*k_thread_entry_t)(void *args);

int k_thread_create(struct k_thread *new_thread, const char *name,
                    size_t stack_size, k_thread_entry_t entry,
                    int prio);

void k_thread_delete(struct k_thread *new_thread);




int k_yield();





void k_sleep(s32_t duration);




unsigned int irq_lock();




void irq_unlock(unsigned int key);

int k_is_in_isr(void);


long long k_now_ms(void);
void k_get_random_byte_array(uint8_t *buf, size_t len);
void *k_malloc(size_t size);
void k_free(void *buf);
# 10 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/work_q.h" 1


# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h" 1
# 18 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
typedef int atomic_t;
typedef atomic_t atomic_val_t;
# 49 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
extern int atomic_cas(atomic_t *target, atomic_val_t old_value,
        atomic_val_t new_value);
# 70 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_add(atomic_t *target, atomic_val_t value);
# 90 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_sub(atomic_t *target, atomic_val_t value);
# 109 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_inc(atomic_t *target);
# 128 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_dec(atomic_t *target);
# 147 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_get(const atomic_t *target);
# 172 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_set(atomic_t *target, atomic_val_t value);
# 192 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_clear(atomic_t *target);
# 213 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_or(atomic_t *target, atomic_val_t value);
# 234 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_xor(atomic_t *target, atomic_val_t value);
# 255 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_and(atomic_t *target, atomic_val_t value);
# 276 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
extern atomic_val_t atomic_nand(atomic_t *target, atomic_val_t value);
# 329 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
static inline int atomic_test_bit(const atomic_t *target, int bit)
{
 atomic_val_t val = atomic_get(((target) + ((bit) / (sizeof(atomic_val_t) * 8))));

 return (1 & (val >> (bit & ((sizeof(atomic_val_t) * 8) - 1))));
}
# 347 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
static inline int atomic_test_and_clear_bit(atomic_t *target, int bit)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));
 atomic_val_t old;

 old = atomic_and(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), ~mask);

 return (old & mask) != 0;
}
# 368 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
static inline int atomic_test_and_set_bit(atomic_t *target, int bit)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));
 atomic_val_t old;

 old = atomic_or(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), mask);

 return (old & mask) != 0;
}
# 389 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
static inline void atomic_clear_bit(atomic_t *target, int bit)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));

 atomic_and(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), ~mask);
}
# 407 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
static inline void atomic_set_bit(atomic_t *target, int bit)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));

 atomic_or(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), mask);
}
# 426 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
static inline void atomic_set_bit_to(atomic_t *target, int bit, 
# 426 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h" 3 4
                                                               _Bool 
# 426 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h"
                                                                    val)
{
 atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));

 if (val) {
  (void)atomic_or(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), mask);
 } else {
  (void)atomic_and(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), ~mask);
 }
}
# 4 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/work_q.h" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h" 1
# 5 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/work_q.h" 2


struct k_work_q {
    struct k_fifo fifo;
};

typedef struct{
    bl_timer_t timer;
    struct k_delayed_work *delay_work;
}timer_rec_d;

int k_work_q_start();

enum {
    K_WORK_STATE_PENDING,
};
struct k_work;

typedef void (*k_work_handler_t)(struct k_work *work);
struct k_work {
    void *_reserved;
    k_work_handler_t handler;
    atomic_t flags[1];
};
# 40 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/work_q.h"
int k_work_init(struct k_work *work, k_work_handler_t handler);
void k_work_submit(struct k_work *work);


struct k_delayed_work {
    struct k_work work;
    struct k_work_q *work_q;
    k_timer_t timer;
};

void k_delayed_work_init(struct k_delayed_work *work, k_work_handler_t handler);
int k_delayed_work_submit(struct k_delayed_work *work, uint32_t delay);
int k_delayed_work_submit_periodic(struct k_delayed_work *work, s32_t period);
int k_delayed_work_cancel(struct k_delayed_work *work);
s32_t k_delayed_work_remaining_get(struct k_delayed_work *work);
void k_delayed_work_del_timer(struct k_delayed_work *work);
int k_delayed_work_free(struct k_delayed_work *work);

int add_timer_record(struct k_delayed_work *delay_work);
timer_rec_d *get_timer_record(void *hdl);
int remv_timer_record(struct k_delayed_work *delay_work);
# 11 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h" 2
# 54 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h"
enum _poll_types_bits {
    _POLL_TYPE_IGNORE,
    _POLL_TYPE_SIGNAL,
    _POLL_TYPE_SEM_AVAILABLE,
    _POLL_TYPE_DATA_AVAILABLE,
    _POLL_NUM_TYPES
};



enum _poll_states_bits {
    _POLL_STATE_NOT_READY,
    _POLL_STATE_SIGNALED,
    _POLL_STATE_SEM_AVAILABLE,
    _POLL_STATE_DATA_AVAILABLE,
    _POLL_NUM_STATES
};
# 89 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h"
struct k_poll_event {
    sys_dnode_t _node;
    struct _poller *poller;
    u32_t tag:8;
    u32_t type:_POLL_NUM_TYPES;
    u32_t state:_POLL_NUM_STATES;
    u32_t mode:1;
    u32_t unused:(32 - (0 + 8 + _POLL_NUM_TYPES + _POLL_NUM_STATES + 1 ));
    union {
        void *obj;
        struct k_poll_signal *signal;
        struct k_sem *sem;
        struct k_fifo *fifo;
        struct k_queue *queue;
    };
};

struct k_poll_signal {
    sys_dlist_t poll_events;
    unsigned int signaled;
    int result;
};
# 136 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h"
extern int k_poll_signal_raise(struct k_poll_signal *signal, int result);
extern int k_poll(struct k_poll_event *events, int num_events, s32_t timeout);
extern void k_poll_event_init(struct k_poll_event *event, u32_t type, int mode, void *obj);


enum k_poll_modes {

        K_POLL_MODE_NOTIFY_ONLY = 0,

        K_POLL_NUM_MODES
};
# 14 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 15 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/errno.h" 1
# 25 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/errno.h"
extern int *__errno(void);
# 16 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2

# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/atomic.h" 1
# 18 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/util.h" 1
# 25 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/util.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 26 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/util.h" 2
# 1 "/b-l/bl_iot_sdk_new/components/utils/include/utils_string.h" 1
# 32 "/b-l/bl_iot_sdk_new/components/utils/include/utils_string.h"
void get_bytearray_from_string(char** params, uint8_t *result,int array_size);
void get_uint8_from_string(char** params, uint8_t *result);
void get_uint16_from_string(char** params, uint16_t *result);
void get_uint32_from_string(char** params, uint32_t *result);
# 27 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/util.h" 2
# 87 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/util.h"
void get_bytearray_from_string(char** params, uint8_t *result,int array_size);
void get_uint8_from_string(char** params, uint8_t *result);
void get_uint16_from_string(char** params, uint16_t *result);
void get_uint32_from_string(char** params, uint32_t *result);
void reverse_bytearray(uint8_t *src, uint8_t *result, int array_size);
void reverse_bytearray(uint8_t *src, uint8_t *result, int array_size);
unsigned int find_lsb_set(uint32_t data);

static inline int is_power_of_two(unsigned int x)
{
 return (x != 0) && !(x & (x - 1));
}

static inline s64_t arithmetic_shift_right(s64_t value, u8_t shift)
{
 s64_t sign_ext;

 if (shift == 0) {
  return value;
 }


 sign_ext = (value >> 63) & 1;


 sign_ext = -sign_ext;


 return (value >> shift) | (sign_ext << (64 - shift));
}
# 322 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/util.h"
int char2hex(char c, u8_t *x);
# 332 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/util.h"
int hex2char(u8_t x, char *c);
# 344 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/util.h"
size_t bin2hex(const u8_t *buf, size_t buflen, char *hex, size_t hexlen);
# 362 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/util.h"
size_t hex2bin(const char *hex, size_t hexlen, u8_t *buf, size_t buflen);
# 377 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/util.h"
u8_t u8_to_dec(char *buf, u8_t buflen, u8_t value);
# 19 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h" 1
# 15 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 16 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/__assert.h" 1
# 17 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h" 2
# 157 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_be16(u16_t val, u8_t dst[2])
{
 dst[0] = val >> 8;
 dst[1] = val;
}
# 172 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_be24(uint32_t val, uint8_t dst[3])
{
 dst[0] = val >> 16;
 sys_put_be16(val, &dst[1]);
}
# 187 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_be32(u32_t val, u8_t dst[4])
{
 sys_put_be16(val >> 16, dst);
 sys_put_be16(val, &dst[2]);
}
# 202 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_le16(u16_t val, u8_t dst[2])
{
 dst[0] = val;
 dst[1] = val >> 8;
}
# 217 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_le24(uint32_t val, uint8_t dst[3])
{
 sys_put_le16(val, dst);
 dst[2] = val >> 16;
}
# 232 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_le32(u32_t val, u8_t dst[4])
{
 sys_put_le16(val, dst);
 sys_put_le16(val >> 16, &dst[2]);
}
# 247 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_put_le64(u64_t val, u8_t dst[8])
{
 sys_put_le32(val, dst);
 sys_put_le32(val >> 32, &dst[4]);
}
# 263 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline u16_t sys_get_be16(const u8_t src[2])
{
 return ((u16_t)src[0] << 8) | src[1];
}
# 278 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline uint32_t sys_get_be24(const uint8_t src[3])
{
 return ((uint32_t)src[0] << 16) | sys_get_be16(&src[1]);
}
# 293 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline u32_t sys_get_be32(const u8_t src[4])
{
 return ((u32_t)sys_get_be16(&src[0]) << 16) | sys_get_be16(&src[2]);
}
# 308 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline u16_t sys_get_le16(const u8_t src[2])
{
 return ((u16_t)src[1] << 8) | src[0];
}
# 323 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline uint32_t sys_get_le24(const uint8_t src[3])
{
 return ((uint32_t)src[2] << 16) | sys_get_le16(&src[0]);
}
# 338 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline u32_t sys_get_le32(const u8_t src[4])
{
 return ((u32_t)sys_get_le16(&src[2]) << 16) | sys_get_le16(&src[0]);
}
# 353 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline u64_t sys_get_le64(const u8_t src[8])
{
 return ((u64_t)sys_get_le32(&src[4]) << 32) | sys_get_le32(&src[0]);
}
# 371 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_memcpy_swap(void *dst, const void *src, size_t length)
{
 do { } while ((0))

                                                     ;

 src += length - 1;

 for (; length > 0; length--) {
  *((u8_t *)dst++) = *((u8_t *)src--);
 }
}
# 394 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/byteorder.h"
static inline void sys_mem_swap(void *buf, size_t length)
{
 size_t i;

 for (i = 0; i < (length/2); i++) {
  u8_t tmp = ((u8_t *)buf)[i];

  ((u8_t *)buf)[i] = ((u8_t *)buf)[length - 1 - i];
  ((u8_t *)buf)[length - 1 - i] = tmp;
 }
}
# 20 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/stack.h" 1
# 15 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/stack.h"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/printk.h" 1
# 11 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/printk.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 12 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/printk.h" 2
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 1 3 4
# 40 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 3 4

# 40 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 99 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 13 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/printk.h" 2
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 36 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 37 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 61 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 1 3
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

# 14 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/printk.h" 2
# 16 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/stack.h" 2
# 56 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/stack.h"

# 56 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/stack.h"
static inline size_t stack_unused_space_get(const char *stack, size_t size)
{
 return 0;
}
# 77 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/stack.h"
static inline void stack_analyze(const char *name, const char *stack,
     unsigned int size)
{
}
# 21 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2

# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h" 1
# 13 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 14 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h" 2



# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/config.h" 1
# 18 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h" 2
# 82 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf_simple {

 u8_t *data;


 u16_t len;


 u16_t size;




 u8_t *__buf;
};
# 129 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_simple_init(struct net_buf_simple *buf,
           size_t reserve_head)
{
 if (!buf->__buf) {
  buf->__buf = (u8_t *)buf + sizeof(*buf);
 }

 buf->data = buf->__buf + reserve_head;
 buf->len = 0;
}
# 149 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_init_with_data(struct net_buf_simple *buf,
       void *data, size_t size);
# 160 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_simple_reset(struct net_buf_simple *buf)
{
 buf->len = 0;
 buf->data = buf->__buf;
}
# 176 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_clone(const struct net_buf_simple *original,
     struct net_buf_simple *clone);
# 190 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_add(struct net_buf_simple *buf, size_t len);
# 204 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_add_mem(struct net_buf_simple *buf, const void *mem,
        size_t len);
# 218 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
u8_t *net_buf_simple_add_u8(struct net_buf_simple *buf, u8_t val);
# 230 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_le16(struct net_buf_simple *buf, u16_t val);
# 242 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_be16(struct net_buf_simple *buf, u16_t val);
# 254 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_le24(struct net_buf_simple *buf, uint32_t val);
# 266 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_be24(struct net_buf_simple *buf, uint32_t val);
# 278 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_le32(struct net_buf_simple *buf, u32_t val);
# 290 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_add_be32(struct net_buf_simple *buf, u32_t val);
# 303 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_push(struct net_buf_simple *buf, size_t len);
# 314 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_le16(struct net_buf_simple *buf, u16_t val);
# 325 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_be16(struct net_buf_simple *buf, u16_t val);
# 335 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_u8(struct net_buf_simple *buf, u8_t val);
# 346 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_le24(struct net_buf_simple *buf, uint32_t val);
# 357 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_push_be24(struct net_buf_simple *buf, uint32_t val);
# 370 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_pull(struct net_buf_simple *buf, size_t len);
# 383 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void *net_buf_simple_pull_mem(struct net_buf_simple *buf, size_t len);
# 395 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
u8_t net_buf_simple_pull_u8(struct net_buf_simple *buf);
# 407 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
u16_t net_buf_simple_pull_le16(struct net_buf_simple *buf);
# 419 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
u16_t net_buf_simple_pull_be16(struct net_buf_simple *buf);
# 431 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
u32_t net_buf_simple_pull_le32(struct net_buf_simple *buf);
# 443 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
u32_t net_buf_simple_pull_be32(struct net_buf_simple *buf);
# 454 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
static inline u8_t *net_buf_simple_tail(struct net_buf_simple *buf)
{
 return buf->data + buf->len;
}
# 468 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
size_t net_buf_simple_headroom(struct net_buf_simple *buf);
# 479 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
size_t net_buf_simple_tailroom(struct net_buf_simple *buf);
# 488 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf_simple_state {

 u16_t offset;

 u16_t len;
};
# 503 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_simple_save(struct net_buf_simple *buf,
           struct net_buf_simple_state *state)
{
 state->offset = net_buf_simple_headroom(buf);
 state->len = buf->len;
}
# 519 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_simple_restore(struct net_buf_simple *buf,
       struct net_buf_simple_state *state)
{
 buf->data = buf->__buf + state->offset;
 buf->len = state->len;
}
# 550 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf {
 union {

  sys_snode_t node;


  struct net_buf *frags;
 };


 u8_t ref;


 u8_t flags;


 u8_t pool_id;




 union {

  struct {

   u8_t *data;


   u16_t len;


   u16_t size;





   u8_t *__buf;
  };

  struct net_buf_simple b;
 };


 u8_t user_data[10] 
# 594 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h" 3
                                              __attribute__((__aligned__(
# 594 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
                                              sizeof(int)
# 594 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h" 3
                                              )))
# 594 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
                                                             ;
};

struct net_buf_data_cb {
 u8_t * (*alloc)(struct net_buf *buf, size_t *size, s32_t timeout);
 u8_t * (*ref)(struct net_buf *buf, u8_t *data);
 void (*unref)(struct net_buf *buf, u8_t *data);
};

struct net_buf_data_alloc {
 const struct net_buf_data_cb *cb;
 void *alloc_data;
};

struct net_buf_pool {

 struct k_lifo free;


 const u16_t buf_count;


 u16_t uninit_count;
# 630 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
 void (*const destroy)(struct net_buf *buf);


 const struct net_buf_data_alloc *alloc;


 struct net_buf * const __bufs;
};
# 663 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
extern const struct net_buf_data_alloc net_buf_heap_alloc;
# 697 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf_pool_fixed {
 size_t data_size;
 u8_t *data_pool;
};

extern const struct net_buf_data_cb net_buf_fixed_cb;
# 814 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf_pool *net_buf_pool_get(int id);
# 828 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
int net_buf_id(struct net_buf *buf);
# 853 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_alloc_fixed(struct net_buf_pool *pool, s32_t timeout);
# 882 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_alloc_len(struct net_buf_pool *pool, size_t size,
      s32_t timeout);
# 914 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_alloc_with_data(struct net_buf_pool *pool,
     void *data, size_t size,
     s32_t timeout);
# 938 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_get(struct k_fifo *fifo, s32_t timeout);
# 950 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void net_buf_destroy(struct net_buf *buf)
{
 struct net_buf_pool *pool = net_buf_pool_get(buf->pool_id);

 k_queue_prepend((struct k_queue *) &pool->free, buf);
}
# 964 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_reset(struct net_buf *buf);
# 975 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_simple_reserve(struct net_buf_simple *buf, size_t reserve);
# 987 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_slist_put(sys_slist_t *list, struct net_buf *buf);
# 1000 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_slist_get(sys_slist_t *list);
# 1012 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_put(struct k_fifo *fifo, struct net_buf *buf);
# 1027 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_unref(struct net_buf *buf);
# 1037 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_ref(struct net_buf *buf);
# 1052 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_clone(struct net_buf *buf, s32_t timeout);
# 1061 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
static inline void *net_buf_user_data(const struct net_buf *buf)
{
 return (void *)buf->user_data;
}
# 1356 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_frag_last(struct net_buf *frags);
# 1368 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
void net_buf_frag_insert(struct net_buf *parent, struct net_buf *frag);
# 1383 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_frag_add(struct net_buf *head, struct net_buf *frag);
# 1400 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
struct net_buf *net_buf_frag_del(struct net_buf *parent, struct net_buf *frag);
# 1417 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
size_t net_buf_linearize(void *dst, size_t dst_len, struct net_buf *src,
                size_t offset, size_t len);
# 1434 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
typedef struct net_buf *(*net_buf_allocator_cb)(s32_t timeout, void *user_data);
# 1456 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
size_t net_buf_append_bytes(struct net_buf *buf, size_t len,
       const void *value, s32_t timeout,
       net_buf_allocator_cb allocate_cb, void *user_data);
# 1475 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
static inline struct net_buf *net_buf_skip(struct net_buf *buf, u16_t len)
{
 while (buf && len--) {
  net_buf_simple_pull_u8(&(buf)->b);
  if (!buf->len) {
   buf = net_buf_frag_del(
# 1480 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h" 3 4
                         ((void *)0)
# 1480 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
                             , buf);
  }
 }

 return buf;
}
# 1496 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
static inline size_t net_buf_frags_len(struct net_buf *buf)
{
 size_t bytes = 0;

 while (buf) {
  bytes += buf->len;
  buf = buf->frags;
 }

 return bytes;
}
# 23 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 1
# 11 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/toolchain.h" 1
# 21 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/toolchain.h"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/toolchain/gcc.h" 1
# 65 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/toolchain/gcc.h"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/toolchain/common.h" 1
# 66 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/toolchain/gcc.h" 2
# 22 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/toolchain.h" 2
# 12 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 2




# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/addr.h" 1
# 31 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/addr.h"
typedef struct {
 u8_t val[6];
} bt_addr_t;


typedef struct {
 u8_t type;
 bt_addr_t a;
} bt_addr_le_t;
# 48 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/addr.h"
static inline int bt_addr_cmp(const bt_addr_t *a, const bt_addr_t *b)
{
 return memcmp(a, b, sizeof(*a));
}

static inline int bt_addr_le_cmp(const bt_addr_le_t *a, const bt_addr_le_t *b)
{
 return memcmp(a, b, sizeof(*a));
}

static inline void bt_addr_copy(bt_addr_t *dst, const bt_addr_t *src)
{
 memcpy(dst, src, sizeof(*dst));
}

static inline void bt_addr_le_copy(bt_addr_le_t *dst, const bt_addr_le_t *src)
{
 memcpy(dst, src, sizeof(*dst));
}
# 76 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/addr.h"
int bt_addr_le_create_nrpa(bt_addr_le_t *addr);
int bt_addr_le_create_static(bt_addr_le_t *addr);

static inline 
# 79 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/addr.h" 3 4
             _Bool 
# 79 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/addr.h"
                  bt_addr_le_is_rpa(const bt_addr_le_t *addr)
{
 if (addr->type != 0x01) {
  return 
# 82 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/addr.h" 3 4
        0
# 82 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/addr.h"
             ;
 }

 return (((&addr->a)->val[5] & 0xc0) == 0x40);
}

static inline 
# 88 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/addr.h" 3 4
             _Bool 
# 88 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/addr.h"
                  bt_addr_le_is_identity(const bt_addr_le_t *addr)
{
 if (addr->type == 0x00) {
  return 
# 91 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/addr.h" 3 4
        1
# 91 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/addr.h"
            ;
 }

 return (((&addr->a)->val[5] & 0xc0) == 0xc0);
}
# 17 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_err.h" 1
# 18 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 2


# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/buf.h" 1
# 23 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/buf.h"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 1
# 24 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/buf.h" 2


enum bt_buf_type {

 BT_BUF_CMD,

 BT_BUF_EVT,

 BT_BUF_ACL_OUT,

 BT_BUF_ACL_IN,
};
# 49 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/buf.h"
int bt_buf_get_rx_avail_cnt(void);
# 62 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/buf.h"
struct net_buf *bt_buf_get_rx(enum bt_buf_type type, s32_t timeout);
# 73 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/buf.h"
struct net_buf *bt_buf_get_cmd_complete(s32_t timeout);
# 86 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/buf.h"
struct net_buf *bt_buf_get_evt(u8_t evt, 
# 86 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/buf.h" 3 4
                                        _Bool 
# 86 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/buf.h"
                                             discardable, s32_t timeout);






static inline void bt_buf_set_type(struct net_buf *buf, enum bt_buf_type type)
{
 *(u8_t *)net_buf_user_data(buf) = type;
}







static inline enum bt_buf_type bt_buf_get_type(struct net_buf *buf)
{






 return (enum bt_buf_type)(*(u8_t *)net_buf_user_data(buf));
}
# 21 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 2
# 36 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_evt_hdr {
 u8_t evt;
 u8_t len;
} 
# 39 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 39 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 50 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_acl_hdr {
 u16_t handle;
 u16_t len;
} 
# 53 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 53 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cmd_hdr {
 u16_t opcode;
 u8_t param_len;
} 
# 59 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 59 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 197 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_op_inquiry {
 u8_t lap[3];
 u8_t length;
 u8_t num_rsp;
} 
# 201 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 201 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_connect {
 bt_addr_t bdaddr;
 u16_t packet_type;
 u8_t pscan_rep_mode;
 u8_t reserved;
 u16_t clock_offset;
 u8_t allow_role_switch;
} 
# 213 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 213 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_disconnect {
 u16_t handle;
 u8_t reason;
} 
# 219 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 219 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_connect_cancel {
 bt_addr_t bdaddr;
} 
# 224 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 224 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_connect_cancel {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 228 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 228 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_accept_conn_req {
 bt_addr_t bdaddr;
 u8_t role;
} 
# 234 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 234 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_setup_sync_conn {
 u16_t handle;
 u32_t tx_bandwidth;
 u32_t rx_bandwidth;
 u16_t max_latency;
 u16_t content_format;
 u8_t retrans_effort;
 u16_t pkt_type;
} 
# 245 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 245 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_accept_sync_conn_req {
 bt_addr_t bdaddr;
 u32_t tx_bandwidth;
 u32_t rx_bandwidth;
 u16_t max_latency;
 u16_t content_format;
 u8_t retrans_effort;
 u16_t pkt_type;
} 
# 256 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 256 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_reject_conn_req {
 bt_addr_t bdaddr;
 u8_t reason;
} 
# 262 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 262 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_link_key_reply {
 bt_addr_t bdaddr;
 u8_t link_key[16];
} 
# 268 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 268 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_link_key_neg_reply {
 bt_addr_t bdaddr;
} 
# 273 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 273 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_pin_code_reply {
 bt_addr_t bdaddr;
 u8_t pin_len;
 u8_t pin_code[16];
} 
# 280 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 280 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_pin_code_reply {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 284 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 284 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_pin_code_neg_reply {
 bt_addr_t bdaddr;
} 
# 289 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 289 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_pin_code_neg_reply {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 293 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 293 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_auth_requested {
 u16_t handle;
} 
# 298 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 298 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_set_conn_encrypt {
 u16_t handle;
 u8_t encrypt;
} 
# 304 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 304 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_remote_name_request {
 bt_addr_t bdaddr;
 u8_t pscan_rep_mode;
 u8_t reserved;
 u16_t clock_offset;
} 
# 312 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 312 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_remote_name_cancel {
 bt_addr_t bdaddr;
} 
# 317 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 317 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_remote_name_cancel {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 321 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 321 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_remote_features {
 u16_t handle;
} 
# 326 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 326 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_remote_ext_features {
 u16_t handle;
 u8_t page;
} 
# 332 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 332 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_remote_version_info {
 u16_t handle;
} 
# 337 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 337 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_io_capability_reply {
 bt_addr_t bdaddr;
 u8_t capability;
 u8_t oob_data;
 u8_t authentication;
} 
# 345 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 345 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;



struct bt_hci_cp_user_confirm_reply {
 bt_addr_t bdaddr;
} 
# 351 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 351 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_user_confirm_reply {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 355 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 355 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_user_passkey_reply {
 bt_addr_t bdaddr;
 u32_t passkey;
} 
# 361 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 361 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_user_passkey_neg_reply {
 bt_addr_t bdaddr;
} 
# 366 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 366 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_io_capability_neg_reply {
 bt_addr_t bdaddr;
 u8_t reason;
} 
# 372 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 372 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_set_event_mask {
 u8_t events[8];
} 
# 377 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 377 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_write_local_name {
 u8_t local_name[248];
} 
# 384 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 384 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 396 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_read_tx_power_level {
 u16_t handle;
 u8_t type;
} 
# 399 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 399 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_read_tx_power_level {
 u8_t status;
 u16_t handle;
 s8_t tx_power_level;
} 
# 405 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 405 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_set_ctl_to_host_flow {
 u8_t flow_enable;
} 
# 412 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 412 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_host_buffer_size {
 u16_t acl_mtu;
 u8_t sco_mtu;
 u16_t acl_pkts;
 u16_t sco_pkts;
} 
# 420 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 420 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_handle_count {
 u16_t handle;
 u16_t count;
} 
# 425 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 425 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_host_num_completed_packets {
 u8_t num_handles;
 struct bt_hci_handle_count h[0];
} 
# 431 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 431 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_inquiry_mode {
 u8_t mode;
} 
# 436 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 436 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_ssp_mode {
 u8_t mode;
} 
# 441 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 441 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_set_event_mask_page_2 {
 u8_t events_page_2[8];
} 
# 446 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 446 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_le_host_supp {
 u8_t le;
 u8_t simul;
} 
# 452 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 452 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_sc_host_supp {
 u8_t sc_support;
} 
# 457 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 457 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_auth_payload_timeout {
 u16_t handle;
} 
# 462 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 462 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_read_auth_payload_timeout {
 u8_t status;
 u16_t handle;
 u16_t auth_payload_timeout;
} 
# 468 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 468 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_write_auth_payload_timeout {
 u16_t handle;
 u16_t auth_payload_timeout;
} 
# 474 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 474 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_rp_write_auth_payload_timeout {
 u8_t status;
 u16_t handle;
} 
# 479 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 479 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 495 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_rp_read_local_version_info {
 u8_t status;
 u8_t hci_version;
 u16_t hci_revision;
 u8_t lmp_version;
 u16_t manufacturer;
 u16_t lmp_subversion;
} 
# 502 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 502 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_read_supported_commands {
 u8_t status;
 u8_t commands[64];
} 
# 508 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 508 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_local_ext_features {
 u8_t page;
};
struct bt_hci_rp_read_local_ext_features {
 u8_t status;
 u8_t page;
 u8_t max_page;
 u8_t ext_features[8];
} 
# 519 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 519 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_read_local_features {
 u8_t status;
 u8_t features[8];
} 
# 525 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 525 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_read_buffer_size {
 u8_t status;
 u16_t acl_max_len;
 u8_t sco_max_len;
 u16_t acl_max_num;
 u16_t sco_max_num;
} 
# 534 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 534 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_read_bd_addr {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 540 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 540 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_read_rssi {
 u16_t handle;
} 
# 545 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 545 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_rssi {
 u8_t status;
 u16_t handle;
 s8_t rssi;
} 
# 550 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 550 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_read_encryption_key_size {
 u16_t handle;
} 
# 558 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 558 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_read_encryption_key_size {
 u8_t status;
 u16_t handle;
 u8_t key_size;
} 
# 563 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 563 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_set_event_mask {
 u8_t events[8];
} 
# 570 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 570 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_buffer_size {
 u8_t status;
 u16_t le_max_len;
 u8_t le_max_num;
} 
# 577 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 577 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_local_features {
 u8_t status;
 u8_t features[8];
} 
# 583 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 583 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_random_address {
 bt_addr_t bdaddr;
} 
# 588 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 588 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 605 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_adv_param {
 u16_t min_interval;
 u16_t max_interval;
 u8_t type;
 u8_t own_addr_type;
 bt_addr_le_t direct_addr;
 u8_t channel_map;
 u8_t filter_policy;
} 
# 613 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 613 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_chan_tx_power {
 u8_t status;
 s8_t tx_power_level;
} 
# 619 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 619 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_adv_data {
 u8_t len;
 u8_t data[31];
} 
# 625 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 625 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_scan_rsp_data {
 u8_t len;
 u8_t data[31];
} 
# 631 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 631 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_adv_enable {
 u8_t enable;
} 
# 639 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 639 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 649 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_scan_param {
 u8_t scan_type;
 u16_t interval;
 u16_t window;
 u8_t addr_type;
 u8_t filter_policy;
} 
# 655 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 655 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 665 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_scan_enable {
 u8_t enable;
 u8_t filter_dup;
} 
# 668 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 668 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_cp_le_create_conn {
 u16_t scan_interval;
 u16_t scan_window;
 u8_t filter_policy;
 bt_addr_le_t peer_addr;
 u8_t own_addr_type;
 u16_t conn_interval_min;
 u16_t conn_interval_max;
 u16_t conn_latency;
 u16_t supervision_timeout;
 u16_t min_ce_len;
 u16_t max_ce_len;
} 
# 687 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 687 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_rp_le_read_wl_size {
 u8_t status;
 u8_t wl_size;
} 
# 695 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 695 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_add_dev_to_wl {
 bt_addr_le_t addr;
} 
# 702 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 702 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_rem_dev_from_wl {
 bt_addr_le_t addr;
} 
# 707 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 707 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct hci_cp_le_conn_update {
 u16_t handle;
 u16_t conn_interval_min;
 u16_t conn_interval_max;
 u16_t conn_latency;
 u16_t supervision_timeout;
 u16_t min_ce_len;
 u16_t max_ce_len;
} 
# 718 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 718 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_host_chan_classif {
 u8_t ch_map[5];
} 
# 723 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 723 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_chan_map {
 u16_t handle;
} 
# 728 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 728 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_read_chan_map {
 u8_t status;
 u16_t handle;
 u8_t ch_map[5];
} 
# 733 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 733 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_remote_features {
 u16_t handle;
} 
# 738 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 738 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_encrypt {
 u8_t key[16];
 u8_t plaintext[16];
} 
# 744 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 744 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_encrypt {
 u8_t status;
 u8_t enc_data[16];
} 
# 748 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 748 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_rand {
 u8_t status;
 u8_t rand[8];
} 
# 754 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 754 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_start_encryption {
 u16_t handle;
 u64_t rand;
 u16_t ediv;
 u8_t ltk[16];
} 
# 762 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 762 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_ltk_req_reply {
 u16_t handle;
 u8_t ltk[16];
} 
# 768 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 768 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_ltk_req_reply {
 u8_t status;
 u16_t handle;
} 
# 772 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 772 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_ltk_req_neg_reply {
 u16_t handle;
} 
# 777 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 777 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_ltk_req_neg_reply {
 u8_t status;
 u16_t handle;
} 
# 781 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 781 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_supp_states {
 u8_t status;
 u8_t le_states[8];
} 
# 787 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 787 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_rx_test {
 u8_t rx_ch;
} 
# 792 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 792 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_tx_test {
 u8_t tx_ch;
 u8_t test_data_len;
 u8_t pkt_payload;
} 
# 799 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 799 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_test_end {
 u8_t status;
 u16_t rx_pkt_count;
} 
# 805 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 805 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_conn_param_req_reply {
 u16_t handle;
 u16_t interval_min;
 u16_t interval_max;
 u16_t latency;
 u16_t timeout;
 u16_t min_ce_len;
 u16_t max_ce_len;
} 
# 816 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 816 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_conn_param_req_reply {
 u8_t status;
 u16_t handle;
} 
# 820 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 820 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_conn_param_req_neg_reply {
 u16_t handle;
 u8_t reason;
} 
# 826 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 826 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_conn_param_req_neg_reply {
 u8_t status;
 u16_t handle;
} 
# 830 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 830 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_data_len {
 u16_t handle;
 u16_t tx_octets;
 u16_t tx_time;
} 
# 837 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 837 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_set_data_len {
 u8_t status;
 u16_t handle;
} 
# 841 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 841 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_default_data_len {
 u8_t status;
 u16_t max_tx_octets;
 u16_t max_tx_time;
} 
# 848 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 848 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_write_default_data_len {
 u16_t max_tx_octets;
 u16_t max_tx_time;
} 
# 854 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 854 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_generate_dhkey {
 u8_t key[64];
} 
# 861 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 861 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_add_dev_to_rl {
 bt_addr_le_t peer_id_addr;
 u8_t peer_irk[16];
 u8_t local_irk[16];
} 
# 868 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 868 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_rem_dev_from_rl {
 bt_addr_le_t peer_id_addr;
} 
# 873 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 873 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_rp_le_read_rl_size {
 u8_t status;
 u8_t rl_size;
} 
# 881 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 881 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_peer_rpa {
 bt_addr_le_t peer_id_addr;
} 
# 886 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 886 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_read_peer_rpa {
 u8_t status;
 bt_addr_t peer_rpa;
} 
# 890 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 890 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_read_local_rpa {
 bt_addr_le_t peer_id_addr;
} 
# 895 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 895 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_read_local_rpa {
 u8_t status;
 bt_addr_t local_rpa;
} 
# 899 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 899 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_addr_res_enable {
 u8_t enable;
} 
# 907 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 907 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_rpa_timeout {
 u16_t rpa_timeout;
} 
# 912 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 912 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_max_data_len {
 u8_t status;
 u16_t max_tx_octets;
 u16_t max_tx_time;
 u16_t max_rx_octets;
 u16_t max_rx_time;
} 
# 921 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 921 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_cp_le_read_phy {
 u16_t handle;
} 
# 930 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 930 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_read_phy {
 u8_t status;
 u16_t handle;
 u8_t tx_phy;
 u8_t rx_phy;
} 
# 936 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 936 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 946 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_default_phy {
 u8_t all_phys;
 u8_t tx_phys;
 u8_t rx_phys;
} 
# 950 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 950 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_cp_le_set_phy {
 u16_t handle;
 u8_t all_phys;
 u8_t tx_phys;
 u8_t rx_phys;
 u16_t phy_opts;
} 
# 963 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 963 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_enh_rx_test {
 u8_t rx_ch;
 u8_t phy;
 u8_t mod_index;
} 
# 973 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 973 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_cp_le_enh_tx_test {
 u8_t tx_ch;
 u8_t test_data_len;
 u8_t pkt_payload;
 u8_t phy;
} 
# 985 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 985 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_adv_set_random_addr {
 u8_t handle;
 bt_addr_t bdaddr;
} 
# 991 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 991 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1002 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_ext_adv_param {
 u8_t handle;
 u16_t props;
 u8_t prim_min_interval[3];
 u8_t prim_max_interval[3];
 u8_t prim_channel_map;
 u8_t own_addr_type;
 bt_addr_le_t peer_addr;
 u8_t filter_policy;
 s8_t tx_power;
 u8_t prim_adv_phy;
 u8_t sec_adv_max_skip;
 u8_t sec_adv_phy;
 u8_t sid;
 u8_t scan_req_notify_enable;
} 
# 1017 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1017 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_rp_le_set_ext_adv_param {
 u8_t status;
 s8_t tx_power;
} 
# 1021 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1021 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1033 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_cp_le_set_ext_adv_data {
 u8_t handle;
 u8_t op;
 u8_t frag_pref;
 u8_t len;
 u8_t data[251];
} 
# 1039 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1039 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_ext_scan_rsp_data {
 u8_t handle;
 u8_t op;
 u8_t frag_pref;
 u8_t len;
 u8_t data[251];
} 
# 1048 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1048 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_ext_adv_set {
 u8_t handle;
 u16_t duration;
 u8_t max_ext_adv_evts;
} 
# 1055 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1055 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_cp_le_set_ext_adv_enable {
 u8_t enable;
 u8_t set_num;
 struct bt_hci_ext_adv_set s[0];
} 
# 1061 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1061 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_max_adv_data_len {
 u8_t status;
 u16_t max_adv_data_len;
} 
# 1067 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1067 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_num_adv_sets {
 u8_t status;
 u8_t num_sets;
} 
# 1073 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1073 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_remove_adv_set {
 u8_t handle;
} 
# 1078 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1078 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_set_per_adv_param {
 u8_t handle;
 u16_t min_interval;
 u16_t max_interval;
 u16_t props;
} 
# 1088 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1088 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_per_adv_data {
 u8_t handle;
 u8_t op;
 u8_t len;
 u8_t data[251];
} 
# 1096 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1096 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_set_per_adv_enable {
 u8_t enable;
 u8_t handle;
} 
# 1102 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1102 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_ext_scan_phy {
 u8_t type;
 u16_t interval;
 u16_t window;
} 
# 1109 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1109 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_ext_scan_param {
 u8_t own_addr_type;
 u8_t filter_policy;
 u8_t phys;
 struct bt_hci_ext_scan_phy p[0];
} 
# 1120 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1120 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_ext_scan_enable {
 u8_t enable;
 u8_t filter_dup;
 u16_t duration;
 u16_t period;
} 
# 1131 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1131 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_ext_conn_phy {
 u16_t interval;
 u16_t window;
 u16_t conn_interval_min;
 u16_t conn_interval_max;
 u16_t conn_latency;
 u16_t supervision_timeout;
 u16_t min_ce_len;
 u16_t max_ce_len;
} 
# 1143 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1143 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_cp_le_ext_create_conn {
 u8_t filter_policy;
 u8_t own_addr_type;
 bt_addr_le_t peer_addr;
 u8_t phys;
 struct bt_hci_ext_conn_phy p[0];
} 
# 1151 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1151 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_per_adv_create_sync {
 u8_t filter_policy;
 u8_t sid;
 bt_addr_le_t addr;
 u16_t skip;
 u16_t sync_timeout;
 u8_t unused;
} 
# 1161 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1161 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_cp_le_per_adv_terminate_sync {
 u16_t handle;
} 
# 1168 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1168 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_add_dev_to_per_adv_list {
 bt_addr_le_t addr;
 u8_t sid;
} 
# 1174 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1174 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_rem_dev_from_per_adv_list {
 bt_addr_le_t addr;
 u8_t sid;
} 
# 1180 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1180 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_rp_le_read_per_adv_list_size {
 u8_t status;
 u8_t list_size;
} 
# 1188 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1188 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_tx_power {
 u8_t status;
 s8_t min_tx_power;
 s8_t max_tx_power;
} 
# 1195 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1195 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_rp_le_read_rf_path_comp {
 u8_t status;
 s16_t tx_path_comp;
 s16_t rx_path_comp;
} 
# 1202 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1202 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_cp_le_write_rf_path_comp {
 s16_t tx_path_comp;
 s16_t rx_path_comp;
} 
# 1208 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1208 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_cp_le_set_privacy_mode {
 bt_addr_le_t id_addr;
 u8_t mode;
} 
# 1217 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1217 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1232 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_evt_inquiry_complete {
 u8_t status;
} 
# 1234 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1234 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_conn_complete {
 u8_t status;
 u16_t handle;
 bt_addr_t bdaddr;
 u8_t link_type;
 u8_t encr_enabled;
} 
# 1243 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1243 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_conn_request {
 bt_addr_t bdaddr;
 u8_t dev_class[3];
 u8_t link_type;
} 
# 1250 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1250 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_disconn_complete {
 u8_t status;
 u16_t handle;
 u8_t reason;
} 
# 1257 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1257 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_auth_complete {
 u8_t status;
 u16_t handle;
} 
# 1263 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1263 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_remote_name_req_complete {
 u8_t status;
 bt_addr_t bdaddr;
 u8_t name[248];
} 
# 1270 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1270 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_encrypt_change {
 u8_t status;
 u16_t handle;
 u8_t encrypt;
} 
# 1277 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1277 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_remote_features {
 u8_t status;
 u16_t handle;
 u8_t features[8];
} 
# 1284 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1284 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_remote_version_info {
 u8_t status;
 u16_t handle;
 u8_t version;
 u16_t manufacturer;
 u16_t subversion;
} 
# 1293 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1293 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_cmd_complete {
 u8_t ncmd;
 u16_t opcode;
} 
# 1299 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1299 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;

struct bt_hci_evt_cc_status {
 u8_t status;
} 
# 1303 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1303 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_cmd_status {
 u8_t status;
 u8_t ncmd;
 u16_t opcode;
} 
# 1310 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1310 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_role_change {
 u8_t status;
 bt_addr_t bdaddr;
 u8_t role;
} 
# 1317 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1317 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_num_completed_packets {
 u8_t num_handles;
 struct bt_hci_handle_count h[0];
} 
# 1323 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1323 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_pin_code_req {
 bt_addr_t bdaddr;
} 
# 1328 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1328 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_link_key_req {
 bt_addr_t bdaddr;
} 
# 1333 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1333 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1347 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct bt_hci_evt_link_key_notify {
 bt_addr_t bdaddr;
 u8_t link_key[16];
 u8_t key_type;
} 
# 1351 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1351 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;






struct bt_hci_evt_data_buf_overflow {
 u8_t link_type;
} 
# 1360 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1360 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_inquiry_result_with_rssi {
 bt_addr_t addr;
 u8_t pscan_rep_mode;
 u8_t reserved;
 u8_t cod[3];
 u16_t clock_offset;
 s8_t rssi;
} 
# 1370 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1370 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_remote_ext_features {
 u8_t status;
 u16_t handle;
 u8_t page;
 u8_t max_page;
 u8_t features[8];
} 
# 1379 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1379 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_sync_conn_complete {
 u8_t status;
 u16_t handle;
 bt_addr_t bdaddr;
 u8_t link_type;
 u8_t tx_interval;
 u8_t retansmission_window;
 u16_t rx_pkt_length;
 u16_t tx_pkt_length;
 u8_t air_mode;
} 
# 1392 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1392 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_extended_inquiry_result {
 u8_t num_reports;
 bt_addr_t addr;
 u8_t pscan_rep_mode;
 u8_t reserved;
 u8_t cod[3];
 u16_t clock_offset;
 s8_t rssi;
 u8_t eir[240];
} 
# 1404 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1404 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_encrypt_key_refresh_complete {
 u8_t status;
 u16_t handle;
} 
# 1410 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1410 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_io_capa_req {
 bt_addr_t bdaddr;
} 
# 1415 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1415 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_io_capa_resp {
 bt_addr_t bdaddr;
 u8_t capability;
 u8_t oob_data;
 u8_t authentication;
} 
# 1423 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1423 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_user_confirm_req {
 bt_addr_t bdaddr;
 u32_t passkey;
} 
# 1429 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1429 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_user_passkey_req {
 bt_addr_t bdaddr;
} 
# 1434 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1434 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_ssp_complete {
 u8_t status;
 bt_addr_t bdaddr;
} 
# 1440 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1440 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_user_passkey_notify {
 bt_addr_t bdaddr;
 u32_t passkey;
} 
# 1446 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1446 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_meta_event {
 u8_t subevent;
} 
# 1451 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1451 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_auth_payload_timeout_exp {
 u16_t handle;
} 
# 1456 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1456 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_evt_le_conn_complete {
 u8_t status;
 u16_t handle;
 u8_t role;
 bt_addr_le_t peer_addr;
 u16_t interval;
 u16_t latency;
 u16_t supv_timeout;
 u8_t clock_accuracy;
} 
# 1471 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1471 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_advertising_info {
 u8_t evt_type;
 bt_addr_le_t addr;
 u8_t length;
 u8_t data[0];
} 
# 1479 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1479 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_evt_le_advertising_report {
 u8_t num_reports;
 struct bt_hci_evt_le_advertising_info adv_info[0];
} 
# 1483 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1483 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_conn_update_complete {
 u8_t status;
 u16_t handle;
 u16_t interval;
 u16_t latency;
 u16_t supv_timeout;
} 
# 1492 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1492 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_remote_feat_complete {
 u8_t status;
 u16_t handle;
 u8_t features[8];
} 
# 1499 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1499 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_ltk_request {
 u16_t handle;
 u64_t rand;
 u16_t ediv;
} 
# 1506 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1506 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_conn_param_req {
 u16_t handle;
 u16_t interval_min;
 u16_t interval_max;
 u16_t latency;
 u16_t timeout;
} 
# 1515 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1515 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_data_len_change {
 u16_t handle;
 u16_t max_tx_octets;
 u16_t max_tx_time;
 u16_t max_rx_octets;
 u16_t max_rx_time;
} 
# 1524 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1524 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_p256_public_key_complete {
 u8_t status;
 u8_t key[64];
} 
# 1530 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1530 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_generate_dhkey_complete {
 u8_t status;
 u8_t dhkey[32];
} 
# 1536 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1536 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_enh_conn_complete {
 u8_t status;
 u16_t handle;
 u8_t role;
 bt_addr_le_t peer_addr;
 bt_addr_t local_rpa;
 bt_addr_t peer_rpa;
 u16_t interval;
 u16_t latency;
 u16_t supv_timeout;
 u8_t clock_accuracy;
} 
# 1550 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1550 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_direct_adv_info {
 u8_t evt_type;
 bt_addr_le_t addr;
 bt_addr_le_t dir_addr;
 s8_t rssi;
} 
# 1558 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1558 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_evt_le_direct_adv_report {
 u8_t num_reports;
 struct bt_hci_evt_le_direct_adv_info direct_adv_info[0];
} 
# 1562 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1562 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_phy_update_complete {
 u8_t status;
 u16_t handle;
 u8_t tx_phy;
 u8_t rx_phy;
} 
# 1570 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1570 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_ext_advertising_info {
 u8_t evt_type;
 bt_addr_le_t addr;
 u8_t prim_phy;
 u8_t sec_phy;
 u8_t sid;
 s8_t tx_power;
 s8_t rssi;
 u16_t interval;
 bt_addr_le_t direct_addr;
 u8_t length;
 u8_t data[0];
} 
# 1585 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1585 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
struct bt_hci_evt_le_ext_advertising_report {
 u8_t num_reports;
 struct bt_hci_evt_le_ext_advertising_info adv_info[0];
} 
# 1589 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1589 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_per_adv_sync_established {
 u8_t status;
 u16_t handle;
 u8_t sid;
 bt_addr_le_t adv_addr;
 u8_t phy;
 u16_t interval;
 u8_t clock_accuracy;
} 
# 1600 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1600 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_per_advertising_report {
 u16_t handle;
 s8_t tx_power;
 s8_t rssi;
 u8_t unused;
 u8_t data_status;
 u8_t length;
 u8_t data[0];
} 
# 1611 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1611 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_per_adv_sync_lost {
 u16_t handle;
} 
# 1616 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1616 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;




struct bt_hci_evt_le_per_adv_set_terminated {
 u8_t status;
 u8_t adv_handle;
 u16_t conn_handle;
 u8_t num_completed_ext_adv_evts;
} 
# 1626 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1626 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;


struct bt_hci_evt_le_scan_req_received {
 u8_t handle;
 bt_addr_le_t addr;
} 
# 1632 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1632 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;





struct bt_hci_evt_le_chan_sel_algo {
 u16_t handle;
 u8_t chan_sel_algo;
} 
# 1641 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3
 __attribute__((__packed__))
# 1641 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
         ;
# 1735 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
struct net_buf *bt_hci_cmd_create(u16_t opcode, u8_t param_len);
# 1754 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
int bt_hci_cmd_send(u16_t opcode, struct net_buf *buf);
# 1779 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
int bt_hci_cmd_send_sync(u16_t opcode, struct net_buf *buf,
    struct net_buf **rsp);
# 1805 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
typedef 
# 1805 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h" 3 4
       _Bool 
# 1805 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
            bt_hci_vnd_evt_cb_t(struct net_buf_simple *buf);
# 1814 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
int bt_hci_register_vnd_evt_cb(bt_hci_vnd_evt_cb_t cb);
# 24 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 1
# 26 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/gap.h" 1
# 27 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 2
# 55 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
typedef void (*bt_ready_cb_t)(int err);
# 67 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_enable(bt_ready_cb_t cb);
# 77 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_set_name(const char *name);







const char *bt_get_name(void);
# 100 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_set_id_addr(const bt_addr_le_t *addr);
# 117 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
void bt_id_get(bt_addr_le_t *addrs, size_t *count);
# 156 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_id_create(bt_addr_le_t *addr, u8_t *irk);
# 189 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_id_reset(u8_t id, bt_addr_le_t *addr, u8_t *irk);
# 206 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_id_delete(u8_t id);







struct bt_data {
 u8_t type;
 u8_t data_len;
 const u8_t *data;
};
# 249 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
enum {

 BT_LE_ADV_OPT_NONE = 0,




 BT_LE_ADV_OPT_CONNECTABLE = (1UL << (0)),
# 266 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
 BT_LE_ADV_OPT_ONE_TIME = (1UL << (1)),





 BT_LE_ADV_OPT_USE_IDENTITY = (1UL << (2)),


 BT_LE_ADV_OPT_USE_NAME = (1UL << (3)),





 BT_LE_ADV_OPT_DIR_MODE_LOW_DUTY = (1UL << (4)),
# 292 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
 BT_LE_ADV_OPT_DIR_ADDR_RPA = (1UL << (5)),




 BT_LE_ADV_OPT_FILTER_SCAN_REQ = (1UL << (6)),


 BT_LE_ADV_OPT_FILTER_CONN = (1UL << (7)),
};


struct bt_le_adv_param {

 u8_t id;


 u8_t options;


 u16_t interval_min;


 u16_t interval_max;




};
# 377 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_adv_start(const struct bt_le_adv_param *param,
      const struct bt_data *ad, size_t ad_len,
      const struct bt_data *sd, size_t sd_len);
# 392 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_adv_update_data(const struct bt_data *ad, size_t ad_len,
     const struct bt_data *sd, size_t sd_len);







int bt_le_adv_stop(void);
# 414 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
typedef void bt_le_scan_cb_t(const bt_addr_le_t *addr, s8_t rssi,
        u8_t adv_type, struct net_buf_simple *buf);

enum {

 BT_LE_SCAN_FILTER_DUPLICATE = (1UL << (0)),


 BT_LE_SCAN_FILTER_WHITELIST = (1UL << (1)),


 BT_LE_SCAN_FILTER_EXTENDED = (1UL << (2)),
};

enum {

 BT_LE_SCAN_TYPE_PASSIVE = 0x00,


 BT_LE_SCAN_TYPE_ACTIVE = 0x01,
};


struct bt_le_scan_param {

 u8_t type;


 u8_t filter_dup;


 u16_t interval;


 u16_t window;
};
# 497 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_scan_start(const struct bt_le_scan_param *param, bt_le_scan_cb_t cb);
# 507 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_scan_stop(void);
# 522 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_whitelist_add(const bt_addr_le_t *addr);
# 537 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_whitelist_rem(const bt_addr_le_t *addr);
# 550 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_whitelist_clear(void);
# 559 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_set_chan_map(u8_t chan_map[5]);
# 574 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
void bt_data_parse(struct net_buf_simple *ad,
     
# 575 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 3 4
    _Bool 
# 575 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
         (*func)(struct bt_data *data, void *user_data),
     void *user_data);


struct bt_le_oob_sc_data {

 u8_t r[16];


 u8_t c[16];
};


struct bt_le_oob {



 bt_addr_le_t addr;


 struct bt_le_oob_sc_data le_sc_data;
};
# 614 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_le_oob_get_local(u8_t id, struct bt_le_oob *oob);


struct bt_br_discovery_result {

 u8_t _priv[4];


 bt_addr_t addr;


 s8_t rssi;


 u8_t cod[3];


 u8_t eir[240];
};
# 645 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
typedef void bt_br_discovery_cb_t(struct bt_br_discovery_result *results,
      size_t count);


struct bt_br_discovery_param {



 u8_t length;


 
# 656 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 3 4
_Bool 
# 656 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
     limited;
};
# 675 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_discovery_start(const struct bt_br_discovery_param *param,
     struct bt_br_discovery_result *results, size_t count,
     bt_br_discovery_cb_t cb);
# 687 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_discovery_stop(void);

int bt_disable(void);


struct bt_br_oob {

 bt_addr_t addr;
};
# 705 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_oob_get_local(struct bt_br_oob *oob);
# 737 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
static inline int bt_addr_to_str(const bt_addr_t *addr, char *str, size_t len)
{
 return snprintf(str, len, "%02X:%02X:%02X:%02X:%02X:%02X",
   addr->val[5], addr->val[4], addr->val[3],
   addr->val[2], addr->val[1], addr->val[0]);
}
# 754 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
static inline int bt_addr_le_to_str(const bt_addr_le_t *addr, char *str,
        size_t len)
{
 char type[10];

 switch (addr->type) {
 case 0x00:
  strcpy(type, "public");
  break;
 case 0x01:
  strcpy(type, "random");
  break;
 case 0x02:
  strcpy(type, "public-id");
  break;
 case 0x03:
  strcpy(type, "random-id");
  break;
 default:
  snprintf(type, sizeof(type), "0x%02x", addr->type);
  break;
 }

 return snprintf(str, len, "%02X:%02X:%02X:%02X:%02X:%02X (%s)",
   addr->a.val[5], addr->a.val[4], addr->a.val[3],
   addr->a.val[2], addr->a.val[1], addr->a.val[0], type);
}
# 790 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_addr_from_str(const char *str, bt_addr_t *addr);
# 801 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_addr_le_from_str(const char *str, const char *type, bt_addr_le_t *addr);
# 814 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_set_discoverable(
# 814 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 3 4
                          _Bool 
# 814 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
                               enable);
# 827 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_br_set_connectable(
# 827 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h" 3 4
                         _Bool 
# 827 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
                              enable);
# 837 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
int bt_unpair(u8_t id, const bt_addr_le_t *addr);


struct bt_bond_info {

 bt_addr_le_t addr;
};







void bt_foreach_bond(u8_t id, void (*func)(const struct bt_bond_info *info,
        void *user_data),
       void *user_data);
# 25 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h" 1
# 30 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn;


struct bt_le_conn_param {
 u16_t interval_min;
 u16_t interval_max;
 u16_t latency;
 u16_t timeout;




};
# 75 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn *bt_conn_ref(struct bt_conn *conn);







void bt_conn_unref(struct bt_conn *conn);







void bt_conn_foreach(int type, void (*func)(struct bt_conn *conn, void *data),
       void *data);
# 105 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn *bt_conn_lookup_addr_le(u8_t id, const bt_addr_le_t *peer);



# 108 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h" 3 4
_Bool 
# 108 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
    le_check_valid_conn(void);
# 117 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
const bt_addr_le_t *bt_conn_get_dst(const struct bt_conn *conn);
# 129 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
u8_t bt_conn_index(struct bt_conn *conn);


enum {

 BT_CONN_TYPE_LE = (1UL << (0)),

 BT_CONN_TYPE_BR = (1UL << (1)),

 BT_CONN_TYPE_SCO = (1UL << (2)),

 BT_CONN_TYPE_ALL = BT_CONN_TYPE_LE | BT_CONN_TYPE_BR | BT_CONN_TYPE_SCO,
};


struct bt_conn_le_info {

 const bt_addr_le_t *src;



 const bt_addr_le_t *dst;

 const bt_addr_le_t *local;

 const bt_addr_le_t *remote;
 u16_t interval;
 u16_t latency;
 u16_t timeout;
};


struct bt_conn_br_info {
 const bt_addr_t *dst;
};


enum {
 BT_CONN_ROLE_MASTER,
 BT_CONN_ROLE_SLAVE,
};
# 180 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn_info {
 u8_t type;

 u8_t role;

 u8_t id;

 union {
  struct bt_conn_le_info le;

  struct bt_conn_br_info br;
 };
};
# 201 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_get_info(const struct bt_conn *conn, struct bt_conn_info *info);







 int bt_conn_get_remote_dev_info(struct bt_conn_info *info);
# 222 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_le_param_update(struct bt_conn *conn,
       const struct bt_le_conn_param *param);
# 234 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_disconnect(struct bt_conn *conn, u8_t reason);
# 248 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn *bt_conn_create_le(const bt_addr_le_t *peer,
      const struct bt_le_conn_param *param);
# 259 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_create_auto_le(const struct bt_le_conn_param *param);





int bt_conn_create_auto_stop(void);
# 281 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_le_set_auto_conn(const bt_addr_le_t *addr,
   const struct bt_le_conn_param *param);
# 305 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn *bt_conn_create_slave_le(const bt_addr_le_t *peer,
     const struct bt_le_adv_param *param);


typedef enum 
# 309 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h" 3
            __attribute__((__packed__)) 
# 309 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
                     {

 BT_SECURITY_L0,

 BT_SECURITY_L1,

 BT_SECURITY_L2,

 BT_SECURITY_L3,

 BT_SECURITY_L4,

 BT_SECURITY_NONE __attribute__((deprecated)) = BT_SECURITY_L0,
 BT_SECURITY_LOW __attribute__((deprecated)) = BT_SECURITY_L1,
 BT_SECURITY_MEDIUM __attribute__((deprecated)) = BT_SECURITY_L2,
 BT_SECURITY_HIGH __attribute__((deprecated)) = BT_SECURITY_L3,
 BT_SECURITY_FIPS __attribute__((deprecated)) = BT_SECURITY_L4,




 BT_SECURITY_FORCE_PAIR = (1UL << (7)),
} bt_security_t;
# 356 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_set_security(struct bt_conn *conn, bt_security_t sec);





bt_security_t bt_conn_get_security(struct bt_conn *conn);

static inline int __attribute__((deprecated)) bt_conn_security(struct bt_conn *conn,
      bt_security_t sec)
{
 return bt_conn_set_security(conn, sec);
}
# 379 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
u8_t bt_conn_enc_key_size(struct bt_conn *conn);

enum bt_security_err {

 BT_SECURITY_ERR_SUCCESS,


 BT_SECURITY_ERR_AUTH_FAIL,


 BT_SECURITY_ERR_PIN_OR_KEY_MISSING,


 BT_SECURITY_ERR_OOB_NOT_AVAILABLE,


 BT_SECURITY_ERR_AUTH_REQUIREMENT,


 BT_SECURITY_ERR_PAIR_NOT_SUPPORTED,


 BT_SECURITY_ERR_PAIR_NOT_ALLOWED,


 BT_SECURITY_ERR_INVALID_PARAM,


 BT_SECURITY_ERR_UNSPECIFIED,
};
# 420 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn_cb {
# 439 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*connected)(struct bt_conn *conn, u8_t err);
# 449 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*disconnected)(struct bt_conn *conn, u8_t reason);
# 472 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 
# 472 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h" 3 4
_Bool 
# 472 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
     (*le_param_req)(struct bt_conn *conn,
        struct bt_le_conn_param *param);
# 485 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*le_param_updated)(struct bt_conn *conn, u16_t interval,
     u16_t latency, u16_t timeout);
# 497 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*identity_resolved)(struct bt_conn *conn,
      const bt_addr_le_t *rpa,
      const bt_addr_le_t *identity);
# 511 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*security_changed)(struct bt_conn *conn, bt_security_t level,
     enum bt_security_err err);

 struct bt_conn_cb *_next;
};
# 540 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
void bt_conn_cb_register(struct bt_conn_cb *cb);
# 552 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
void bt_set_bondable(
# 552 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h" 3 4
                    _Bool 
# 552 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
                         enable);
# 562 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
void bt_set_oob_data_flag(
# 562 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h" 3 4
                         _Bool 
# 562 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
                              enable);
# 583 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_le_oob_set_sc_data(struct bt_conn *conn,
     const struct bt_le_oob_sc_data *oobd_local,
     const struct bt_le_oob_sc_data *oobd_remote);
# 603 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_le_oob_get_sc_data(struct bt_conn *conn,
     const struct bt_le_oob_sc_data **oobd_local,
     const struct bt_le_oob_sc_data **oobd_remote);
# 627 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_passkey_set(unsigned int passkey);


struct bt_conn_oob_info {

 enum {

  BT_CONN_OOB_LE_LEGACY,


  BT_CONN_OOB_LE_SC,
 } type;

 union {

  struct {

   enum {

    BT_CONN_OOB_LOCAL_ONLY,


    BT_CONN_OOB_REMOTE_ONLY,


    BT_CONN_OOB_BOTH_PEERS,


    BT_CONN_OOB_NO_DATA,
   } oob_config;
  } lesc;
 };
};


struct bt_conn_auth_cb {
# 681 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*passkey_display)(struct bt_conn *conn, unsigned int passkey);
# 701 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*passkey_entry)(struct bt_conn *conn);
# 724 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*passkey_confirm)(struct bt_conn *conn, unsigned int passkey);
# 741 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*oob_data_request)(struct bt_conn *conn,
     struct bt_conn_oob_info *info);
# 756 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*cancel)(struct bt_conn *conn);
# 776 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*pairing_confirm)(struct bt_conn *conn);
# 808 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
 void (*pairing_complete)(struct bt_conn *conn, 
# 808 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h" 3 4
                                               _Bool 
# 808 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
                                                    bonded);






 void (*pairing_failed)(struct bt_conn *conn,
          enum bt_security_err reason);
};
# 828 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_auth_cb_register(const struct bt_conn_auth_cb *cb);
# 840 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_auth_passkey_entry(struct bt_conn *conn, unsigned int passkey);
# 850 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_auth_cancel(struct bt_conn *conn);
# 861 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_auth_passkey_confirm(struct bt_conn *conn);
# 872 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_auth_pairing_confirm(struct bt_conn *conn);
# 884 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
int bt_conn_auth_pincode_entry(struct bt_conn *conn, const char *pin);


struct bt_br_conn_param {
 
# 888 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h" 3 4
_Bool 
# 888 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
     allow_role_switch;
};
# 916 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn *bt_conn_create_br(const bt_addr_t *peer,
      const struct bt_br_conn_param *param);
# 928 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/conn.h"
struct bt_conn *bt_conn_create_sco(const bt_addr_t *peer);
# 26 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/../include/bluetooth/crypto.h" 1
# 38 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/../include/bluetooth/crypto.h"
int bt_rand(void *buf, size_t len);
# 52 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/../include/bluetooth/crypto.h"
int bt_encrypt_le(const u8_t key[16], const u8_t plaintext[16],
    u8_t enc_data[16]);
# 67 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/../include/bluetooth/crypto.h"
int bt_encrypt_be(const u8_t key[16], const u8_t plaintext[16],
    u8_t enc_data[16]);
# 27 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/../include/bluetooth/buf.h" 1
# 28 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2

# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/constants.h" 1
# 30 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h" 1
# 64 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
typedef struct tc_aes_key_sched_struct {
 unsigned int words[(4)*((10)+1)];
} *TCAesKeySched_t;
# 79 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
int tc_aes128_set_encrypt_key(TCAesKeySched_t s, const uint8_t *k);
# 93 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
int tc_aes_encrypt(uint8_t *out, const uint8_t *in,
     const TCAesKeySched_t s);
# 110 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
int tc_aes128_set_decrypt_key(TCAesKeySched_t s, const uint8_t *k);
# 123 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
int tc_aes_decrypt(uint8_t *out, const uint8_t *in,
     const TCAesKeySched_t s);
# 31 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h" 1
# 43 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 44 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h" 2
# 61 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
unsigned int _copy(uint8_t *to, unsigned int to_len,
            const uint8_t *from, unsigned int from_len);
# 71 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
void _set(void *to, uint8_t val, unsigned int len);
# 89 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
static inline void _set_secure(void *to, uint8_t val, unsigned int len)
{
  (void) memset(to, val, len);

  __asm__ __volatile__("" :: "g"(to) : "memory");

}
# 105 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
uint8_t _double_byte(uint8_t a);
# 115 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
int _compare(const uint8_t *a, const uint8_t *b, size_t size);
# 32 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/cmac_mode.h" 1
# 102 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/cmac_mode.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 103 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/cmac_mode.h" 2
# 112 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/cmac_mode.h"
typedef struct tc_cmac_struct {

 uint8_t iv[((4)*(4))];

 uint8_t K1[((4)*(4))];

 uint8_t K2[((4)*(4))];

 uint8_t leftover[((4)*(4))];

 unsigned int keyid;

 unsigned int leftover_offset;

 TCAesKeySched_t sched;

 uint64_t countdown;
} *TCCmacState_t;
# 142 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/cmac_mode.h"
int tc_cmac_setup(TCCmacState_t s, const uint8_t *key,
        TCAesKeySched_t sched);
# 153 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/cmac_mode.h"
int tc_cmac_erase(TCCmacState_t s);
# 163 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/cmac_mode.h"
int tc_cmac_init(TCCmacState_t s);
# 176 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/cmac_mode.h"
int tc_cmac_update(TCCmacState_t s, const uint8_t *data, size_t dlen);
# 188 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/cmac_mode.h"
int tc_cmac_final(uint8_t *tag, TCCmacState_t s);
# 33 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2



# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/log.h" 1
# 19 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/log.h"
# 1 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 35 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 56 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 57 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/projdefs.h" 1
# 35 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 60 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/portable.h" 1
# 45 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/deprecated_definitions.h" 1
# 46 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/portable.h" 2






# 1 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h" 1
# 62 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
typedef uint32_t StackType_t;
typedef int32_t BaseType_t;
typedef uint32_t UBaseType_t;
typedef uint32_t TickType_t;
# 84 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern BaseType_t TrapNetCounter;
extern void vTaskSwitchContext( void );
# 94 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskEnterCritical( void );
extern void vTaskExitCritical( void );
# 149 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
inline __attribute__(( always_inline)) static BaseType_t xPortIsInsideInterrupt( void )
{
    return TrapNetCounter ? 1 : 0;
}
# 53 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/portable.h" 2
# 99 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/mpu_wrappers.h" 1
# 100 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/portable.h" 2
# 117 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/portable.h"
  StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;




typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 139 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 63 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 1044 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1095 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1130 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;


  uint8_t uxDummy20;
# 1143 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
} StaticTask_t;
# 1159 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1203 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;


  UBaseType_t uxDummy3;



   uint8_t ucDummy4;


} StaticEventGroup_t;
# 1232 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1260 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;

  UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 20 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/log.h" 2
# 1 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h" 1
# 36 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
# 1 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/list.h" 1
# 139 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/list.h"
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
# 345 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h" 2
# 69 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
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
# 330 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 446 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
 TaskHandle_t xTaskCreateStatic( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         StackType_t * const puxStackBuffer,
         StaticTask_t * const pxTaskBuffer ) ;
# 665 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 706 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 758 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 817 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 842 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 889 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 915 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 971 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1013 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1064 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1113 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1142 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1175 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskStartScheduler( void ) ;
# 1231 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskEndScheduler( void ) ;
# 1282 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspendAll( void ) ;
# 1336 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1351 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCount( void ) ;
BaseType_t xTaskGetTickCount2( TickType_t *ticks, BaseType_t *overflow ) ;
# 1368 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1382 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1395 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1411 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1438 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1465 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;
# 1529 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1538 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1637 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
# 1684 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1738 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1768 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetIdleRunTimeCounter( void ) ;
# 1849 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1940 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2017 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2118 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2187 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2203 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2224 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2257 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2271 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2297 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2308 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2364 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2385 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
void vTaskStepTickSafe( const TickType_t xTicksToJump ) ;
# 2402 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 21 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/log.h" 2
# 72 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/log.h"
extern void user_vAssertCalled(void);
# 93 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/log.h"
static inline char *log_strdup(const char *str)
{
 return (char *)str;
}






const char *bt_hex_real(const void *buf, size_t len);
const char *bt_addr_str_real(const bt_addr_t *addr);
const char *bt_addr_le_str_real(const bt_addr_le_t *addr);
# 37 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2

# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h" 1
# 23 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h"
enum {
 BT_EVENT_CMD_TX,
 BT_EVENT_CONN_TX_QUEUE,
};


enum {
 BT_DEV_ENABLE,
 BT_DEV_READY,
 BT_DEV_PRESET_ID,
 BT_DEV_USER_ID_ADDR,
 BT_DEV_HAS_PUB_KEY,
 BT_DEV_PUB_KEY_BUSY,

 BT_DEV_ADVERTISING,
 BT_DEV_ADVERTISING_NAME,
 BT_DEV_ADVERTISING_CONNECTABLE,
 BT_DEV_KEEP_ADVERTISING,
 BT_DEV_SCANNING,
 BT_DEV_EXPLICIT_SCAN,
 BT_DEV_ACTIVE_SCAN,
 BT_DEV_SCAN_FILTER_DUP,
 BT_DEV_SCAN_WL,
 BT_DEV_AUTO_CONN,

 BT_DEV_RPA_VALID,

 BT_DEV_ID_PENDING,
# 63 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h"
 BT_DEV_NUM_FLAGS,
};






struct bt_dev_le {

 u8_t features[8];

 u64_t states;



 u16_t mtu;
 struct k_sem pkts;




 u8_t rl_size;



 u8_t rl_entries;




 u8_t wl_size;

 u8_t wl_entries;

};
# 118 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h"
struct bt_dev {

 bt_addr_le_t id_addr[1];
 u8_t id_count;


 u8_t adv_id;


 bt_addr_le_t random_addr;


 u8_t hci_version;
 u8_t lmp_version;
 u16_t hci_revision;
 u16_t lmp_subversion;
 u16_t manufacturer;


 u8_t features[1][8];


 u8_t supported_commands[64];







 struct k_work init;

 atomic_t flags[1 + ((BT_DEV_NUM_FLAGS) - 1) / (sizeof(atomic_val_t) * 8)];


 struct bt_dev_le le;







 struct k_sem ncmd_sem;


 struct net_buf *sent_cmd;







 struct k_fifo cmd_tx_queue;


 const struct bt_hci_driver *drv;
# 187 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h"
 char name[29 + 1];

};
# 215 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h"
extern struct bt_dev bt_dev;

extern const struct bt_conn_auth_cb *bt_auth;



# 220 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h" 3 4
_Bool 
# 220 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h"
    bt_le_conn_params_valid(const struct bt_le_conn_param *param);

int bt_le_scan_update(
# 222 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h" 3 4
                     _Bool 
# 222 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h"
                          fast_scan);

int bt_le_auto_conn(const struct bt_le_conn_param *conn_param);
int bt_le_auto_conn_cancel(void);


# 227 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h" 3 4
_Bool 
# 227 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h"
    bt_addr_le_is_bonded(u8_t id, const bt_addr_le_t *addr);
const bt_addr_le_t *bt_lookup_id_addr(u8_t id, const bt_addr_le_t *addr);

int bt_send(struct net_buf *buf);


struct bt_keys;
void bt_id_add(struct bt_keys *keys);
void bt_id_del(struct bt_keys *keys);

int bt_setup_id_addr(void);
void bt_finalize_init(void);

int bt_le_adv_start_internal(const struct bt_le_adv_param *param,
        const struct bt_data *ad, size_t ad_len,
        const struct bt_data *sd, size_t sd_len,
        const bt_addr_le_t *peer);
# 252 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h"
int bt_le_read_rssi(u16_t handle,int8_t *rssi);
int set_ad_and_rsp_d(u16_t hci_op, u8_t *data, u32_t ad_len);
int set_adv_enable(
# 254 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h" 3 4
                  _Bool 
# 254 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/hci_core.h"
                       enable);
int set_adv_param(const struct bt_le_adv_param *param);
int set_adv_channel_map(u8_t channel);
int bt_get_local_public_address(bt_addr_le_t *adv_addr);
int bt_get_local_ramdon_address(bt_addr_le_t *adv_addr);
int bt_le_set_data_len(struct bt_conn *conn, u16_t tx_octets, u16_t tx_time);


int bt_set_tx_pwr(int8_t power);
# 39 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/ecc.h" 1
# 10 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/ecc.h"
struct bt_pub_key_cb {
# 19 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/ecc.h"
 void (*func)(const u8_t key[64]);

 struct bt_pub_key_cb *_next;
};
# 35 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/ecc.h"
int bt_pub_key_gen(struct bt_pub_key_cb *cb);







const u8_t *bt_pub_key_get(void);
# 52 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/ecc.h"
typedef void (*bt_dh_key_cb_t)(const u8_t key[32]);
# 63 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/ecc.h"
int bt_dh_key_gen(const u8_t remote_pk[64], bt_dh_key_cb_t cb);
# 40 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/keys.h" 1
# 9 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/keys.h"
enum {
 BT_KEYS_SLAVE_LTK = (1UL << (0)),
 BT_KEYS_IRK = (1UL << (1)),
 BT_KEYS_LTK = (1UL << (2)),
 BT_KEYS_LOCAL_CSRK = (1UL << (3)),
 BT_KEYS_REMOTE_CSRK = (1UL << (4)),
 BT_KEYS_LTK_P256 = (1UL << (5)),

 BT_KEYS_ALL = (BT_KEYS_SLAVE_LTK | BT_KEYS_IRK |
      BT_KEYS_LTK | BT_KEYS_LOCAL_CSRK |
      BT_KEYS_REMOTE_CSRK | BT_KEYS_LTK_P256),
};

enum {
 BT_KEYS_AUTHENTICATED = (1UL << (0)),
 BT_KEYS_DEBUG = (1UL << (1)),
 BT_KEYS_ID_PENDING_ADD = (1UL << (2)),
 BT_KEYS_ID_PENDING_DEL = (1UL << (3)),
 BT_KEYS_SC = (1UL << (4)),
};

struct bt_ltk {
 u8_t rand[8];
 u8_t ediv[2];
 u8_t val[16];
};

struct bt_irk {
 u8_t val[16];
 bt_addr_t rpa;
};

struct bt_csrk {
 u8_t val[16];
 u32_t cnt;
};

struct bt_keys {
 u8_t id;
 bt_addr_le_t addr;



 u8_t enc_size;
 u8_t flags;
 u16_t keys;
 struct bt_ltk ltk;
 struct bt_irk irk;

 struct bt_csrk local_csrk;
 struct bt_csrk remote_csrk;


 struct bt_ltk slave_ltk;


 u32_t aging_counter;

};






void bt_keys_foreach(int type, void (*func)(struct bt_keys *keys, void *data),
       void *data);

struct bt_keys *bt_keys_get_addr(u8_t id, const bt_addr_le_t *addr);
struct bt_keys *bt_keys_get_type(int type, u8_t id, const bt_addr_le_t *addr);
struct bt_keys *bt_keys_find(int type, u8_t id, const bt_addr_le_t *addr);
struct bt_keys *bt_keys_find_irk(u8_t id, const bt_addr_le_t *addr);
struct bt_keys *bt_keys_find_addr(u8_t id, const bt_addr_le_t *addr);

void bt_keys_add_type(struct bt_keys *keys, int type);
void bt_keys_clear(struct bt_keys *keys);
void bt_keys_clear_all(u8_t id);

int keys_commit(void);
int bt_keys_load(void);





static inline int bt_keys_store(struct bt_keys *keys)
{
 return 0;
}


enum {
 BT_LINK_KEY_AUTHENTICATED = (1UL << (0)),
 BT_LINK_KEY_DEBUG = (1UL << (1)),
 BT_LINK_KEY_SC = (1UL << (2)),
};

struct bt_keys_link_key {
 bt_addr_t addr;
 u8_t flags;
 u8_t val[16];
};

struct bt_keys_link_key *bt_keys_get_link_key(const bt_addr_t *addr);
struct bt_keys_link_key *bt_keys_find_link_key(const bt_addr_t *addr);
void bt_keys_link_key_clear(struct bt_keys_link_key *link_key);
void bt_keys_link_key_clear_addr(const bt_addr_t *addr);




void bt_keys_update_usage(u8_t id, const bt_addr_le_t *addr);
# 41 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h" 1
# 10 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h"
typedef enum 
# 10 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h" 3
            __attribute__((__packed__)) 
# 10 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h"
                     {
 BT_CONN_DISCONNECTED,
 BT_CONN_CONNECT_SCAN,
 BT_CONN_CONNECT_DIR_ADV,
 BT_CONN_CONNECT,
 BT_CONN_CONNECTED,
 BT_CONN_DISCONNECT,
} bt_conn_state_t;


enum {
 BT_CONN_AUTO_CONNECT,
 BT_CONN_BR_LEGACY_SECURE,
 BT_CONN_USER,
 BT_CONN_BR_PAIRING,
 BT_CONN_BR_NOBOND,
 BT_CONN_BR_PAIRING_INITIATOR,
 BT_CONN_CLEANUP,
 BT_CONN_AUTO_PHY_UPDATE,
 BT_CONN_SLAVE_PARAM_UPDATE,
 BT_CONN_SLAVE_PARAM_SET,
 BT_CONN_SLAVE_PARAM_L2CAP,
 BT_CONN_FORCE_PAIR,

 BT_CONN_AUTO_PHY_COMPLETE,
 BT_CONN_AUTO_FEATURE_EXCH,
 BT_CONN_AUTO_VERSION_INFO,


 BT_CONN_NUM_FLAGS,
};

struct bt_conn_le {
 bt_addr_le_t dst;

 bt_addr_le_t init_addr;
 bt_addr_le_t resp_addr;

 u16_t interval;
 u16_t interval_min;
 u16_t interval_max;

 u16_t latency;
 u16_t timeout;
 u16_t pending_latency;
 u16_t pending_timeout;

 u8_t features[8];

 struct bt_keys *keys;





};
# 89 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h"
typedef void (*bt_conn_tx_cb_t)(struct bt_conn *conn, void *user_data);

struct bt_conn_tx {
 sys_snode_t node;

 bt_conn_tx_cb_t cb;
 void *user_data;


 u32_t pending_no_cb;
};

struct bt_conn {
 u16_t handle;
 u8_t type;
 u8_t role;

 atomic_t flags[1 + ((BT_CONN_NUM_FLAGS) - 1) / (sizeof(atomic_val_t) * 8)];


 u8_t id;


 bt_security_t sec_level;
 bt_security_t required_sec_level;
 u8_t encrypt;



 u8_t err;

 bt_conn_state_t state;

 u16_t rx_len;
 struct net_buf *rx;


 sys_slist_t tx_pending;



 u32_t pending_no_cb;


 sys_slist_t tx_complete;
 struct k_work tx_complete_work;



 struct k_fifo tx_queue;


 sys_slist_t channels;

 atomic_t ref;


 struct k_delayed_work update_work;

 union {
  struct bt_conn_le le;




 };
# 163 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h"
};


void bt_conn_recv(struct bt_conn *conn, struct net_buf *buf, u8_t flags);


int bt_conn_send_cb(struct bt_conn *conn, struct net_buf *buf,
      bt_conn_tx_cb_t cb, void *user_data);

static inline int bt_conn_send(struct bt_conn *conn, struct net_buf *buf)
{
 return bt_conn_send_cb(conn, buf, 
# 174 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h" 3 4
                                  ((void *)0)
# 174 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h"
                                      , 
# 174 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h" 3 4
                                        ((void *)0)
# 174 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h"
                                            );
}


struct bt_conn *bt_conn_add_le(u8_t id, const bt_addr_le_t *peer);


struct bt_conn *bt_conn_add_br(const bt_addr_t *peer);


struct bt_conn *bt_conn_add_sco(const bt_addr_t *peer, int link_type);


void bt_sco_cleanup(struct bt_conn *sco_conn);


struct bt_conn *bt_conn_lookup_addr_sco(const bt_addr_t *peer);


struct bt_conn *bt_conn_lookup_addr_br(const bt_addr_t *peer);

void bt_conn_pin_code_req(struct bt_conn *conn);
u8_t bt_conn_get_io_capa(void);
u8_t bt_conn_ssp_get_auth(const struct bt_conn *conn);
void bt_conn_ssp_auth(struct bt_conn *conn, u32_t passkey);
void bt_conn_ssp_auth_complete(struct bt_conn *conn, u8_t status);

void bt_conn_disconnect_all(u8_t id);


struct bt_conn *bt_conn_lookup_handle(u16_t handle);


int bt_conn_addr_le_cmp(const struct bt_conn *conn, const bt_addr_le_t *peer);







struct bt_conn *bt_conn_lookup_id(u8_t id);




struct bt_conn *bt_conn_lookup_state_le(const bt_addr_le_t *peer,
     const bt_conn_state_t state);


void bt_conn_set_state(struct bt_conn *conn, bt_conn_state_t state);

int bt_conn_le_conn_update(struct bt_conn *conn,
      const struct bt_le_conn_param *param);

void notify_remote_info(struct bt_conn *conn);

void notify_le_param_updated(struct bt_conn *conn);


# 233 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h" 3 4
_Bool 
# 233 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h"
    le_param_req(struct bt_conn *conn, struct bt_le_conn_param *param);



int bt_conn_le_start_encryption(struct bt_conn *conn, u8_t rand[8],
    u8_t ediv[2], const u8_t *ltk, size_t len);


void bt_conn_identity_resolved(struct bt_conn *conn);




void bt_conn_security_changed(struct bt_conn *conn, enum bt_security_err err);
# 262 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h"
struct net_buf *bt_conn_create_pdu_timeout(struct net_buf_pool *pool,
        size_t reserve, s32_t timeout);
# 282 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h"
struct net_buf *bt_conn_create_frag_timeout(size_t reserve, s32_t timeout);






int bt_conn_init(void);


struct k_sem *bt_conn_get_pkts(struct bt_conn *conn);


int bt_conn_prepare_events(struct k_poll_event events[]);
void bt_conn_process_tx(struct bt_conn *conn);
# 306 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/conn_internal.h"
int bt_hci_get_conn_handle(const struct bt_conn *conn, u16_t *conn_handle);
# 42 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 1
# 11 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h" 1
# 21 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/../bluetooth/buf.h" 1
# 22 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h" 2
# 44 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
struct bt_l2cap_chan;






typedef void (*bt_l2cap_chan_destroy_t)(struct bt_l2cap_chan *chan);





typedef enum bt_l2cap_chan_state {

 BT_L2CAP_DISCONNECTED,

 BT_L2CAP_CONNECT,

 BT_L2CAP_CONFIG,

 BT_L2CAP_CONNECTED,

 BT_L2CAP_DISCONNECT,

} 
# 69 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h" 3
 __attribute__((__packed__)) 
# 69 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
          bt_l2cap_chan_state_t;


typedef enum bt_l2cap_chan_status {

 BT_L2CAP_STATUS_OUT,


 BT_L2CAP_NUM_STATUS,
} 
# 78 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h" 3
 __attribute__((__packed__)) 
# 78 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
          bt_l2cap_chan_status_t;


struct bt_l2cap_chan {

 struct bt_conn *conn;

 struct bt_l2cap_chan_ops *ops;
 sys_snode_t node;
 bt_l2cap_chan_destroy_t destroy;

 struct k_delayed_work rtx_work;
 atomic_t status[1 + ((BT_L2CAP_NUM_STATUS) - 1) / (sizeof(atomic_val_t) * 8)];


 bt_l2cap_chan_state_t state;

 u16_t psm;

 u8_t ident;
 bt_security_t required_sec_level;

};


struct bt_l2cap_le_endpoint {

 u16_t cid;

 u16_t mtu;

 u16_t mps;

 u16_t init_credits;

 struct k_sem credits;
};


struct bt_l2cap_le_chan {

 struct bt_l2cap_chan chan;

 struct bt_l2cap_le_endpoint rx;

 struct bt_l2cap_le_endpoint tx;

 struct k_fifo tx_queue;

 struct net_buf *tx_buf;

 struct net_buf *_sdu;
 u16_t _sdu_len;

 struct k_work rx_work;
 struct k_fifo rx_queue;
};
# 148 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
struct bt_l2cap_br_endpoint {

 u16_t cid;

 u16_t mtu;
};


struct bt_l2cap_br_chan {

 struct bt_l2cap_chan chan;

 struct bt_l2cap_br_endpoint rx;

 struct bt_l2cap_br_endpoint tx;

 atomic_t flags[1];
};


struct bt_l2cap_chan_ops {







 void (*connected)(struct bt_l2cap_chan *chan);
# 186 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 void (*disconnected)(struct bt_l2cap_chan *chan);
# 203 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 void (*encrypt_change)(struct bt_l2cap_chan *chan, u8_t hci_status);
# 214 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 struct net_buf *(*alloc_buf)(struct bt_l2cap_chan *chan);
# 227 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 int (*recv)(struct bt_l2cap_chan *chan, struct net_buf *buf);
# 236 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 void (*sent)(struct bt_l2cap_chan *chan);
# 246 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 void (*status)(struct bt_l2cap_chan *chan, atomic_t *status);
};







struct bt_l2cap_server {
# 268 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 u16_t psm;


 bt_security_t sec_level;
# 287 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
 int (*accept)(struct bt_conn *conn, struct bt_l2cap_chan **chan);

 sys_snode_t node;
};
# 311 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
int bt_l2cap_server_register(struct bt_l2cap_server *server);
# 323 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
int bt_l2cap_br_server_register(struct bt_l2cap_server *server);
# 343 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
int bt_l2cap_chan_connect(struct bt_conn *conn, struct bt_l2cap_chan *chan,
     u16_t psm);
# 357 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
int bt_l2cap_chan_disconnect(struct bt_l2cap_chan *chan);
# 368 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
int bt_l2cap_chan_send(struct bt_l2cap_chan *chan, struct net_buf *buf);
# 382 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/include/bluetooth/l2cap.h"
int bt_l2cap_chan_recv_complete(struct bt_l2cap_chan *chan,
    struct net_buf *buf);
# 12 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 2

enum l2cap_conn_list_action {
 BT_L2CAP_CHAN_LOOKUP,
 BT_L2CAP_CHAN_DETACH,
};
# 26 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
struct bt_l2cap_hdr {
 u16_t len;
 u16_t cid;
} 
# 29 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 29 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;

struct bt_l2cap_sig_hdr {
 u8_t code;
 u8_t ident;
 u16_t len;
} 
# 35 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 35 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;






struct bt_l2cap_cmd_reject {
 u16_t reason;
 u8_t data[0];
} 
# 45 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 45 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;

struct bt_l2cap_cmd_reject_cid_data {
 u16_t scid;
 u16_t dcid;
} 
# 50 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 50 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;


struct bt_l2cap_conn_req {
 u16_t psm;
 u16_t scid;
} 
# 56 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 56 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;
# 72 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
struct bt_l2cap_conn_rsp {
 u16_t dcid;
 u16_t scid;
 u16_t result;
 u16_t status;
} 
# 77 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 77 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;






struct bt_l2cap_conf_req {
 u16_t dcid;
 u16_t flags;
 u8_t data[0];
} 
# 88 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 88 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;


struct bt_l2cap_conf_rsp {
 u16_t scid;
 u16_t flags;
 u16_t result;
 u8_t data[0];
} 
# 96 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 96 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;







struct bt_l2cap_conf_opt {
 u8_t type;
 u8_t len;
 u8_t data[0];
} 
# 108 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 108 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;


struct bt_l2cap_disconn_req {
 u16_t dcid;
 u16_t scid;
} 
# 114 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 114 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;


struct bt_l2cap_disconn_rsp {
 u16_t dcid;
 u16_t scid;
} 
# 120 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 120 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;





struct bt_l2cap_info_req {
 u16_t type;
} 
# 128 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 128 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;






struct bt_l2cap_info_rsp {
 u16_t type;
 u16_t result;
 u8_t data[0];
} 
# 139 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 139 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;


struct bt_l2cap_conn_param_req {
 u16_t min_interval;
 u16_t max_interval;
 u16_t latency;
 u16_t timeout;
} 
# 147 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 147 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;





struct bt_l2cap_conn_param_rsp {
 u16_t result;
} 
# 155 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 155 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;


struct bt_l2cap_le_conn_req {
 u16_t psm;
 u16_t scid;
 u16_t mtu;
 u16_t mps;
 u16_t credits;
} 
# 164 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 164 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;
# 179 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
struct bt_l2cap_le_conn_rsp {
 u16_t dcid;
 u16_t mtu;
 u16_t mps;
 u16_t credits;
 u16_t result;
};


struct bt_l2cap_le_credits {
 u16_t cid;
 u16_t credits;
} 
# 191 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3
 __attribute__((__packed__))
# 191 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
         ;
# 202 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
struct bt_l2cap_fixed_chan {
 u16_t cid;
 int (*accept)(struct bt_conn *conn, struct bt_l2cap_chan **chan);
 sys_snode_t node;
};
# 215 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
struct bt_l2cap_br_fixed_chan {
 u16_t cid;
 int (*accept)(struct bt_conn *conn, struct bt_l2cap_chan **chan);
};







void l2cap_chan_sdu_sent(struct bt_conn *conn, void *user_data);

void bt_l2cap_le_fixed_chan_register(struct bt_l2cap_fixed_chan *chan);


void bt_l2cap_connected(struct bt_conn *conn);


void bt_l2cap_disconnected(struct bt_conn *conn);


void bt_l2cap_chan_add(struct bt_conn *conn, struct bt_l2cap_chan *chan,
         bt_l2cap_chan_destroy_t destroy);


void bt_l2cap_chan_remove(struct bt_conn *conn, struct bt_l2cap_chan *chan);


void bt_l2cap_chan_del(struct bt_l2cap_chan *chan);

const char *bt_l2cap_chan_state_str(bt_l2cap_chan_state_t state);
# 255 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
void bt_l2cap_chan_set_state(struct bt_l2cap_chan *chan,
        bt_l2cap_chan_state_t state);






void bt_l2cap_encrypt_change(struct bt_conn *conn, u8_t hci_status);


struct net_buf *bt_l2cap_create_pdu_timeout(struct net_buf_pool *pool,
         size_t reserve, s32_t timeout);





struct net_buf *bt_l2cap_create_rsp(struct net_buf *buf, size_t reserve);
# 283 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
int bt_l2cap_send_cb(struct bt_conn *conn, u16_t cid, struct net_buf *buf,
       bt_conn_tx_cb_t cb, void *user_data);

static inline void bt_l2cap_send(struct bt_conn *conn, u16_t cid,
     struct net_buf *buf)
{
 bt_l2cap_send_cb(conn, cid, buf, 
# 289 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3 4
                                 ((void *)0)
# 289 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
                                     , 
# 289 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h" 3 4
                                       ((void *)0)
# 289 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/l2cap_internal.h"
                                           );
}


void bt_l2cap_recv(struct bt_conn *conn, struct net_buf *buf);


int bt_l2cap_update_conn_param(struct bt_conn *conn,
          const struct bt_le_conn_param *param);


void bt_l2cap_init(void);


struct bt_l2cap_chan *bt_l2cap_le_lookup_tx_cid(struct bt_conn *conn,
      u16_t cid);


struct bt_l2cap_chan *bt_l2cap_le_lookup_rx_cid(struct bt_conn *conn,
      u16_t cid);


void bt_l2cap_br_init(void);


void bt_l2cap_br_fixed_chan_register(struct bt_l2cap_fixed_chan *chan);


void bt_l2cap_br_connected(struct bt_conn *conn);


struct bt_l2cap_chan *bt_l2cap_br_lookup_rx_cid(struct bt_conn *conn,
      u16_t cid);


int bt_l2cap_br_chan_disconnect(struct bt_l2cap_chan *chan);


int bt_l2cap_br_chan_connect(struct bt_conn *conn, struct bt_l2cap_chan *chan,
        u16_t psm);


int bt_l2cap_br_chan_send(struct bt_l2cap_chan *chan, struct net_buf *buf);





void l2cap_br_encrypt_change(struct bt_conn *conn, u8_t hci_status);


void bt_l2cap_br_recv(struct bt_conn *conn, struct net_buf *buf);
# 43 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 1
# 12 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
struct bt_smp_hdr {
 u8_t code;
} 
# 14 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 14 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;
# 60 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
struct bt_smp_pairing {
 u8_t io_capability;
 u8_t oob_flag;
 u8_t auth_req;
 u8_t max_key_size;
 u8_t init_key_dist;
 u8_t resp_key_dist;
} 
# 67 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 67 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_pairing_confirm {
 u8_t val[16];
} 
# 72 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 72 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_pairing_random {
 u8_t val[16];
} 
# 77 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 77 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_pairing_fail {
 u8_t reason;
} 
# 82 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 82 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_encrypt_info {
 u8_t ltk[16];
} 
# 87 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 87 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_master_ident {
 u8_t ediv[2];
 u8_t rand[8];
} 
# 93 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 93 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_ident_info {
 u8_t irk[16];
} 
# 98 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 98 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_ident_addr_info {
 bt_addr_le_t addr;
} 
# 103 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 103 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_signing_info {
 u8_t csrk[16];
} 
# 108 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 108 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_security_request {
 u8_t auth_req;
} 
# 113 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 113 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_public_key {
 u8_t x[32];
 u8_t y[32];
} 
# 119 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 119 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;


struct bt_smp_dhkey_check {
 u8_t e[16];
} 
# 124 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3
 __attribute__((__packed__))
# 124 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
         ;

int bt_smp_start_security(struct bt_conn *conn);

# 127 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h" 3 4
_Bool 
# 127 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
    bt_smp_request_ltk(struct bt_conn *conn, u64_t rand, u16_t ediv,
   u8_t *ltk);

void bt_smp_update_keys(struct bt_conn *conn);

int bt_smp_br_send_pairing_req(struct bt_conn *conn);

int bt_smp_init(void);

int bt_smp_auth_passkey_entry(struct bt_conn *conn, unsigned int passkey);
int bt_smp_auth_passkey_confirm(struct bt_conn *conn);
int bt_smp_auth_pairing_confirm(struct bt_conn *conn);
int bt_smp_auth_cancel(struct bt_conn *conn);

int bt_smp_le_oob_generate_sc_data(struct bt_le_oob_sc_data *le_sc_oob);
int bt_smp_le_oob_set_sc_data(struct bt_conn *conn,
         const struct bt_le_oob_sc_data *oobd_local,
         const struct bt_le_oob_sc_data *oobd_remote);
int bt_smp_le_oob_get_sc_data(struct bt_conn *conn,
         const struct bt_le_oob_sc_data **oobd_local,
         const struct bt_le_oob_sc_data **oobd_remote);
# 156 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
int bt_smp_sign_verify(struct bt_conn *conn, struct net_buf *buf);
# 165 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.h"
int bt_smp_sign(struct bt_conn *conn, struct net_buf *buf);
# 44 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 2
# 93 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
enum pairing_method {
 JUST_WORKS,
 PASSKEY_INPUT,
 PASSKEY_DISPLAY,
 PASSKEY_CONFIRM,
 PASSKEY_ROLE,
 LE_SC_OOB,
};

enum {
 SMP_FLAG_CFM_DELAYED,
 SMP_FLAG_ENC_PENDING,
 SMP_FLAG_KEYS_DISTR,
 SMP_FLAG_PAIRING,
 SMP_FLAG_TIMEOUT,
 SMP_FLAG_SC,
 SMP_FLAG_PKEY_SEND,
 SMP_FLAG_DHKEY_PENDING,
 SMP_FLAG_DHKEY_SEND,
 SMP_FLAG_USER,
 SMP_FLAG_DISPLAY,
 SMP_FLAG_OOB_PENDING,
 SMP_FLAG_BOND,
 SMP_FLAG_SC_DEBUG_KEY,
 SMP_FLAG_SEC_REQ,
 SMP_FLAG_DHCHECK_WAIT,
 SMP_FLAG_DERIVE_LK,
 SMP_FLAG_BR_CONNECTED,
 SMP_FLAG_BR_PAIR,
 SMP_FLAG_CT2,


 SMP_NUM_FLAGS,
};


struct bt_smp {

 struct bt_l2cap_le_chan chan;


 atomic_t allowed_cmds;


 atomic_t flags[1 + ((SMP_NUM_FLAGS) - 1) / (sizeof(atomic_val_t) * 8)];


 u8_t method;


 u8_t preq[7];


 u8_t prsp[7];


 u8_t pcnf[16];


 u8_t prnd[16];


 u8_t rrnd[16];


 u8_t tk[16];


 u8_t pkey[64];


 u8_t dhkey[32];


 u8_t e[16];


 u8_t mackey[16];


 u32_t passkey;


 u8_t passkey_round;


 const struct bt_le_oob_sc_data *oobd_local;


 const struct bt_le_oob_sc_data *oobd_remote;


 u8_t local_dist;


 u8_t remote_dist;


 struct k_delayed_work work;
};

static unsigned int fixed_passkey = 0xffffffff;







static const u8_t gen_method_legacy[5 ][5 ] = {
 { JUST_WORKS, JUST_WORKS, PASSKEY_INPUT, JUST_WORKS, PASSKEY_INPUT },
 { JUST_WORKS, JUST_WORKS, PASSKEY_INPUT, JUST_WORKS, PASSKEY_INPUT },
 { PASSKEY_DISPLAY, PASSKEY_DISPLAY, PASSKEY_INPUT, JUST_WORKS,
   PASSKEY_DISPLAY },
 { JUST_WORKS, JUST_WORKS, JUST_WORKS, JUST_WORKS, JUST_WORKS },
 { PASSKEY_DISPLAY, PASSKEY_DISPLAY, PASSKEY_INPUT, JUST_WORKS,
   PASSKEY_ROLE },
};



static const u8_t gen_method_sc[5 ][5 ] = {
 { JUST_WORKS, JUST_WORKS, PASSKEY_INPUT, JUST_WORKS, PASSKEY_INPUT },
 { JUST_WORKS, PASSKEY_CONFIRM, PASSKEY_INPUT, JUST_WORKS,
   PASSKEY_CONFIRM },
 { PASSKEY_DISPLAY, PASSKEY_DISPLAY, PASSKEY_INPUT, JUST_WORKS,
   PASSKEY_DISPLAY },
 { JUST_WORKS, JUST_WORKS, JUST_WORKS, JUST_WORKS, JUST_WORKS },
 { PASSKEY_DISPLAY, PASSKEY_CONFIRM, PASSKEY_INPUT, JUST_WORKS,
   PASSKEY_CONFIRM },
};

static const u8_t sc_debug_public_key[64] = {
 0xe6, 0x9d, 0x35, 0x0e, 0x48, 0x01, 0x03, 0xcc, 0xdb, 0xfd, 0xf4, 0xac,
 0x11, 0x91, 0xf4, 0xef, 0xb9, 0xa5, 0xf9, 0xe9, 0xa7, 0x83, 0x2c, 0x5e,
 0x2c, 0xbe, 0x97, 0xf2, 0xd2, 0x03, 0xb0, 0x20, 0x8b, 0xd2, 0x89, 0x15,
 0xd0, 0x8e, 0x1c, 0x74, 0x24, 0x30, 0xed, 0x8f, 0xc2, 0x45, 0x63, 0x76,
 0x5c, 0x15, 0x52, 0x5a, 0xbf, 0x9a, 0x32, 0x63, 0x6d, 0xeb, 0x2a, 0x65,
 0x49, 0x9c, 0x80, 0xdc
};
# 267 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
static struct bt_smp bt_smp_pool[2];
static 
# 268 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
      _Bool 
# 268 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           bondable = 1;
static 
# 269 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
      _Bool 
# 269 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           oobd_present;
static 
# 270 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
      _Bool 
# 270 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           sc_supported;
static const u8_t *sc_public_key;

struct k_sem sc_local_pkey_ready;




static u8_t get_io_capa(void)
{
 if (!bt_auth) {
  goto no_callbacks;
 }
# 300 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
 if (bt_auth->passkey_display && bt_auth->passkey_entry &&
     (bt_auth->passkey_confirm || !sc_supported)) {
  return 0x04;
 }


 if (sc_supported && bt_auth->passkey_display &&
     bt_auth->passkey_confirm) {
  return 0x01;
 }

 if (bt_auth->passkey_entry) {
  if (0 &&
      fixed_passkey != 0xffffffff) {
   return 0x04;
  } else {
   return 0x02;
  }
 }

 if (bt_auth->passkey_display) {
  return 0x00;
 }

no_callbacks:
 if (0 &&
     fixed_passkey != 0xffffffff) {
  return 0x00;
 } else {
  return 0x03;
 }
}


static u8_t legacy_get_pair_method(struct bt_smp *smp, u8_t remote_io);


static 
# 337 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
      _Bool 
# 337 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           smp_keys_check(struct bt_conn *conn)
{
 if (atomic_test_bit(conn->flags, BT_CONN_FORCE_PAIR)) {
  return 
# 340 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        0
# 340 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
             ;
 }

 if (!conn->le.keys) {
  conn->le.keys = bt_keys_find(BT_KEYS_LTK_P256,
           conn->id, &conn->le.dst);
  if (!conn->le.keys) {
   conn->le.keys = bt_keys_find(BT_KEYS_LTK,
           conn->id,
           &conn->le.dst);
  }
 }

 if (!conn->le.keys ||
     !(conn->le.keys->keys & (BT_KEYS_LTK | BT_KEYS_LTK_P256))) {
  return 
# 355 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        0
# 355 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
             ;
 }

 if (conn->required_sec_level > BT_SECURITY_L2 &&
     !(conn->le.keys->flags & BT_KEYS_AUTHENTICATED)) {
  return 
# 360 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        0
# 360 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
             ;
 }

 if (conn->required_sec_level > BT_SECURITY_L3 &&
     !(conn->le.keys->flags & BT_KEYS_AUTHENTICATED) &&
     !(conn->le.keys->keys & BT_KEYS_LTK_P256) &&
     !(conn->le.keys->enc_size == 16)) {
  return 
# 367 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        0
# 367 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
             ;
 }

 return 
# 370 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
       1
# 370 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           ;
}

static u8_t get_pair_method(struct bt_smp *smp, u8_t remote_io)
{
 struct bt_smp_pairing *req, *rsp;


 if (!atomic_test_bit(smp->flags, SMP_FLAG_SC)) {
  return legacy_get_pair_method(smp, remote_io);
 }


 req = (struct bt_smp_pairing *)&smp->preq[1];
 rsp = (struct bt_smp_pairing *)&smp->prsp[1];

 if ((req->auth_req & rsp->auth_req) & 0x08) {

  if ((req->oob_flag | rsp->oob_flag) & 0x01) {
   return LE_SC_OOB;
  }
 }

 if (remote_io > 0x04) {
  return JUST_WORKS;
 }


 if (!((req->auth_req | rsp->auth_req) & 0x04)) {
  return JUST_WORKS;
 }

 return gen_method_sc[remote_io][get_io_capa()];
}

static enum bt_security_err auth_err_get(u8_t smp_err)
{
 switch (smp_err) {
 case 0x01:
 case 0x0b:
 case 0x0c:
 case 0x04:
  return BT_SECURITY_ERR_AUTH_FAIL;
 case 0x02:
  return BT_SECURITY_ERR_OOB_NOT_AVAILABLE;
 case 0x03:
 case 0x06:
  return BT_SECURITY_ERR_AUTH_REQUIREMENT;
 case 0x05:
 case 0x07:
  return BT_SECURITY_ERR_PAIR_NOT_SUPPORTED;
 case 0x09:
 case 0x0d:
 case 0x0e:
  return BT_SECURITY_ERR_PAIR_NOT_ALLOWED;
 case 0x0a:
  return BT_SECURITY_ERR_INVALID_PARAM;
 case 0x08:
 default:
  return BT_SECURITY_ERR_UNSPECIFIED;
 }
}

static struct net_buf *smp_create_pdu(struct bt_smp *smp, u8_t op, size_t len)
{
 struct bt_smp_hdr *hdr;
 struct net_buf *buf;
 s32_t timeout;


 if (atomic_test_bit(smp->flags, SMP_FLAG_TIMEOUT)) {
  timeout = 0;
 } else {
  timeout = ((30) * 1000);
 }




 buf = bt_l2cap_create_pdu_timeout(
# 449 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                                  ((void *)0)
# 449 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                                      , 0, timeout);
 if (!buf) {



  atomic_set_bit(smp->flags, SMP_FLAG_TIMEOUT);
  return 
# 455 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        ((void *)0)
# 455 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
            ;
 }

 hdr = net_buf_simple_add(&(buf)->b, sizeof(*hdr));
 hdr->code = op;

 return buf;
}
# 471 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
static int bt_smp_aes_cmac(const u8_t *key, const u8_t *in, size_t len,
      u8_t *out)
{
 struct tc_aes_key_sched_struct sched;
 struct tc_cmac_struct state;

 if (tc_cmac_setup(&state, key, &sched) == 0) {
  return -5;
 }

 if (tc_cmac_update(&state, in, len) == 0) {
  return -5;
 }

 if (tc_cmac_final(out, &state) == 0) {
  return -5;
 }

 return 0;
}

static int smp_f4(const u8_t *u, const u8_t *v, const u8_t *x,
    u8_t z, u8_t res[16])
{
 u8_t xs[16];
 u8_t m[65];
 int err;

 ;
 ;
 ;
# 512 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
 sys_memcpy_swap(m, u, 32);
 sys_memcpy_swap(m + 32, v, 32);
 m[64] = z;

 sys_memcpy_swap(xs, x, 16);

 err = bt_smp_aes_cmac(xs, m, sizeof(m), res);
 if (err) {
  return err;
 }

 sys_mem_swap(res, 16);

 ;

 return err;
}

static int smp_f5(const u8_t *w, const u8_t *n1, const u8_t *n2,
    const bt_addr_le_t *a1, const bt_addr_le_t *a2, u8_t *mackey,
    u8_t *ltk)
{
 static const u8_t salt[16] = { 0x6c, 0x88, 0x83, 0x91, 0xaa, 0xf5,
       0xa5, 0x38, 0x60, 0x37, 0x0b, 0xdb,
       0x5a, 0x60, 0x83, 0xbe };
 u8_t m[53] = { 0x00,
     0x62, 0x74, 0x6c, 0x65,
     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
     0x01, 0x00 };
 u8_t t[16], ws[32];
 int err;

 ;
 ;
 ;

 sys_memcpy_swap(ws, w, 32);

 err = bt_smp_aes_cmac(salt, ws, 32, t);
 if (err) {
  return err;
 }

 ;

 sys_memcpy_swap(m + 5, n1, 16);
 sys_memcpy_swap(m + 21, n2, 16);
 m[37] = a1->type;
 sys_memcpy_swap(m + 38, a1->a.val, 6);
 m[44] = a2->type;
 sys_memcpy_swap(m + 45, a2->a.val, 6);

 err = bt_smp_aes_cmac(t, m, sizeof(m), mackey);
 if (err) {
  return err;
 }

 ;

 sys_mem_swap(mackey, 16);


 m[0] = 0x01;

 err = bt_smp_aes_cmac(t, m, sizeof(m), ltk);
 if (err) {
  return err;
 }

 ;

 sys_mem_swap(ltk, 16);

 return 0;
}

static int smp_f6(const u8_t *w, const u8_t *n1, const u8_t *n2,
    const u8_t *r, const u8_t *iocap, const bt_addr_le_t *a1,
    const bt_addr_le_t *a2, u8_t *check)
{
 u8_t ws[16];
 u8_t m[65];
 int err;

 ;
 ;
 ;
 ;
 ;
 ;
 ;

 sys_memcpy_swap(m, n1, 16);
 sys_memcpy_swap(m + 16, n2, 16);
 sys_memcpy_swap(m + 32, r, 16);
 sys_memcpy_swap(m + 48, iocap, 3);

 m[51] = a1->type;
 memcpy(m + 52, a1->a.val, 6);
 sys_memcpy_swap(m + 52, a1->a.val, 6);

 m[58] = a2->type;
 memcpy(m + 59, a2->a.val, 6);
 sys_memcpy_swap(m + 59, a2->a.val, 6);

 sys_memcpy_swap(ws, w, 16);

 err = bt_smp_aes_cmac(ws, m, sizeof(m), check);
 if (err) {
  return err;
 }

 ;

 sys_mem_swap(check, 16);

 return 0;
}

static int smp_g2(const u8_t u[32], const u8_t v[32],
    const u8_t x[16], const u8_t y[16], u32_t *passkey)
{
 u8_t m[80], xs[16];
 int err;

 ;
 ;
 ;
 ;

 sys_memcpy_swap(m, u, 32);
 sys_memcpy_swap(m + 32, v, 32);
 sys_memcpy_swap(m + 64, y, 16);

 sys_memcpy_swap(xs, x, 16);


 err = bt_smp_aes_cmac(xs, m, sizeof(m), xs);
 if (err) {
  return err;
 }
 ;

 memcpy(passkey, xs + 12, 4);
 *passkey = ((u32_t) ((((*passkey) >> 24) & 0xff) | (((*passkey) >> 8) & 0xff00) | (((*passkey) & 0xff00) << 8) | (((*passkey) & 0xff) << 24))) % 1000000;

 ;

 return 0;
}

static u8_t get_encryption_key_size(struct bt_smp *smp)
{
 struct bt_smp_pairing *req, *rsp;

 req = (struct bt_smp_pairing *)&smp->preq[1];
 rsp = (struct bt_smp_pairing *)&smp->prsp[1];






 return (((req->max_key_size) < (rsp->max_key_size)) ? (req->max_key_size) : (rsp->max_key_size));
}




static 
# 686 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
      _Bool 
# 686 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           update_keys_check(struct bt_smp *smp)
{
 struct bt_conn *conn = smp->chan.chan.conn;

 if (!conn->le.keys) {
  conn->le.keys = bt_keys_get_addr(conn->id, &conn->le.dst);
 }

 if (!conn->le.keys ||
     !(conn->le.keys->keys & (BT_KEYS_LTK_P256 | BT_KEYS_LTK))) {
  return 
# 696 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        1
# 696 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
            ;
 }

 if (conn->le.keys->enc_size > get_encryption_key_size(smp)) {
  return 
# 700 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        0
# 700 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
             ;
 }

 if ((conn->le.keys->keys & BT_KEYS_LTK_P256) &&
     !atomic_test_bit(smp->flags, SMP_FLAG_SC)) {
  return 
# 705 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        0
# 705 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
             ;
 }

 if ((conn->le.keys->flags & BT_KEYS_AUTHENTICATED) &&
      smp->method == JUST_WORKS) {
  return 
# 710 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        0
# 710 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
             ;
 }

 if (!1 &&
     (!(conn->le.keys->flags & BT_KEYS_AUTHENTICATED)
      && smp->method == JUST_WORKS)) {
  return 
# 716 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        0
# 716 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
             ;
 }

 return 
# 719 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
       1
# 719 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           ;
}

static 
# 722 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
      _Bool 
# 722 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           update_debug_keys_check(struct bt_smp *smp)
{
 struct bt_conn *conn = smp->chan.chan.conn;

 if (!conn->le.keys) {
  conn->le.keys = bt_keys_get_addr(conn->id, &conn->le.dst);
 }

 if (!conn->le.keys ||
     !(conn->le.keys->keys & (BT_KEYS_LTK_P256 | BT_KEYS_LTK))) {
  return 
# 732 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        1
# 732 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
            ;
 }

 if (conn->le.keys->flags & BT_KEYS_DEBUG) {
  return 
# 736 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        0
# 736 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
             ;
 }

 return 
# 739 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
       1
# 739 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           ;
}




static void smp_pairing_complete(struct bt_smp *smp, u8_t status);




static void smp_check_complete(struct bt_conn *conn, u8_t dist_complete)
{
 struct bt_l2cap_chan *chan;

 if (conn->type == BT_CONN_TYPE_LE) {
  struct bt_smp *smp;

  chan = bt_l2cap_le_lookup_tx_cid(conn, 0x0006);
  do { } while ((0));

  smp = ((struct bt_smp *)(((char *)(chan)) - 
# 760 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
       __builtin_offsetof (
# 760 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
       struct bt_smp
# 760 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
       , 
# 760 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
       chan
# 760 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
       )
# 760 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
       ));
  smp->local_dist &= ~dist_complete;


  if (!smp->local_dist && !smp->remote_dist) {
   smp_pairing_complete(smp, 0);
  }

  return;
 }
# 787 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
}
# 798 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
static void smp_sign_info_sent(struct bt_conn *conn, void *user_data)
{
 smp_check_complete(conn, 0x04);
}
# 1717 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
static void smp_reset(struct bt_smp *smp)
{
 struct bt_conn *conn = smp->chan.chan.conn;

 k_delayed_work_cancel(&smp->work);

 smp->method = JUST_WORKS;
 atomic_set(&smp->allowed_cmds, 0);
 atomic_set(smp->flags, 0);

 if (conn->required_sec_level != conn->sec_level) {


  conn->required_sec_level = conn->sec_level;
 }

 if (1 &&
     conn->role == 0x00) {
  atomic_set_bit(&smp->allowed_cmds, 0x0b);
  return;
 }

 if (1) {
  atomic_set_bit(&smp->allowed_cmds, 0x01);
 }
}

static void smp_pairing_complete(struct bt_smp *smp, u8_t status)
{
 ;

 if (!status) {
# 1760 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
  
# 1760 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
 _Bool 
# 1760 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
      bond_flag = atomic_test_bit(smp->flags, SMP_FLAG_BOND);






  if (bt_auth && bt_auth->pairing_complete) {
   bt_auth->pairing_complete(smp->chan.chan.conn,
        bond_flag);
  }
 } else {
  u8_t auth_err = auth_err_get(status);

  if (!atomic_test_bit(smp->flags, SMP_FLAG_KEYS_DISTR)) {
   bt_conn_security_changed(smp->chan.chan.conn, auth_err);
  }

  if (bt_auth && bt_auth->pairing_failed) {
   bt_auth->pairing_failed(smp->chan.chan.conn, auth_err);
  }
 }

 smp_reset(smp);
}

static void smp_timeout(struct k_work *work)
{
 struct bt_smp *smp = ((struct bt_smp *)(((char *)(work)) - 
# 1788 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     __builtin_offsetof (
# 1788 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     struct bt_smp
# 1788 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     , 
# 1788 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     work
# 1788 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     )
# 1788 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     ));

 printf("SMP Timeout""\r\n");





 if (atomic_test_bit(smp->flags, SMP_FLAG_KEYS_DISTR) &&
     smp->chan.chan.conn->le.keys) {
  bt_keys_clear(smp->chan.chan.conn->le.keys);
 }

 atomic_set_bit(smp->flags, SMP_FLAG_TIMEOUT);

 smp_pairing_complete(smp, 0x08);
}

static void smp_send(struct bt_smp *smp, struct net_buf *buf,
       bt_conn_tx_cb_t cb, void *user_data)
{
 bt_l2cap_send_cb(smp->chan.chan.conn, 0x0006, buf, cb, 
# 1809 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                                                                 ((void *)0)
# 1809 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                                                                     );
 k_delayed_work_submit(&smp->work, ((30) * 1000));
}

static int smp_error(struct bt_smp *smp, u8_t reason)
{
 struct bt_smp_pairing_fail *rsp;
 struct net_buf *buf;


 smp_pairing_complete(smp, reason);

 buf = smp_create_pdu(smp, 0x05, sizeof(*rsp));
 if (!buf) {
  return -55;
 }

 rsp = net_buf_simple_add(&(buf)->b, sizeof(*rsp));
 rsp->reason = reason;


 bt_l2cap_send(smp->chan.chan.conn, 0x0006, buf);

 return 0;
}

static u8_t smp_send_pairing_random(struct bt_smp *smp)
{
 struct bt_smp_pairing_random *req;
 struct net_buf *rsp_buf;

 rsp_buf = smp_create_pdu(smp, 0x04, sizeof(*req));
 if (!rsp_buf) {
  return 0x08;
 }

 req = net_buf_simple_add(&(rsp_buf)->b, sizeof(*req));
 memcpy(req->val, smp->prnd, sizeof(req->val));

 smp_send(smp, rsp_buf, 
# 1848 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                       ((void *)0)
# 1848 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                           , 
# 1848 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                             ((void *)0)
# 1848 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                                 );

 return 0;
}


static void xor_128(const u8_t p[16], const u8_t q[16], u8_t r[16])
{
 size_t len = 16;

 while (len--) {
  *r++ = *p++ ^ *q++;
 }
}

static int smp_c1(const u8_t k[16], const u8_t r[16],
    const u8_t preq[7], const u8_t pres[7],
    const bt_addr_le_t *ia, const bt_addr_le_t *ra,
    u8_t enc_data[16])
{
 u8_t p1[16], p2[16];
 int err;

 ;
 ;
 ;
 ;
 ;
 ;


 p1[0] = ia->type;
 p1[1] = ra->type;
 memcpy(p1 + 2, preq, 7);
 memcpy(p1 + 9, pres, 7);

 ;




 xor_128(r, p1, enc_data);

 err = bt_encrypt_le(k, enc_data, enc_data);
 if (err) {
  return err;
 }


 memcpy(p2, ra->a.val, 6);
 memcpy(p2 + 6, ia->a.val, 6);
 (void)memset(p2 + 12, 0, 4);

 ;

 xor_128(enc_data, p2, enc_data);

 return bt_encrypt_le(k, enc_data, enc_data);
}


static u8_t smp_send_pairing_confirm(struct bt_smp *smp)
{
 struct bt_smp_pairing_confirm *req;
 struct net_buf *buf;
 u8_t r;

 switch (smp->method) {
 case PASSKEY_CONFIRM:
 case JUST_WORKS:
  r = 0U;
  break;
 case PASSKEY_DISPLAY:
 case PASSKEY_INPUT:







  r = (smp->passkey >> smp->passkey_round) & 0x01;
  r |= 0x80;
  break;
 default:
  return 0x08;
 }

 buf = smp_create_pdu(smp, 0x03, sizeof(*req));
 if (!buf) {
  return 0x08;
 }

 req = net_buf_simple_add(&(buf)->b, sizeof(*req));

 if (smp_f4(sc_public_key, smp->pkey, smp->prnd, r, req->val)) {
  net_buf_unref(buf);
  return 0x08;
 }

 smp_send(smp, buf, 
# 1948 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                   ((void *)0)
# 1948 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                       , 
# 1948 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                         ((void *)0)
# 1948 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                             );

 atomic_clear_bit(smp->flags, SMP_FLAG_CFM_DELAYED);

 return 0;
}


static void smp_ident_sent(struct bt_conn *conn, void *user_data)
{
 smp_check_complete(conn, 0x01);
}

static void legacy_distribute_keys(struct bt_smp *smp)
{
 struct bt_conn *conn = smp->chan.chan.conn;
 struct bt_keys *keys = conn->le.keys;

 if (smp->local_dist & 0x01) {
  struct bt_smp_encrypt_info *info;
  struct bt_smp_master_ident *ident;
  struct net_buf *buf;

  struct {
   u8_t key[16];
   u8_t rand[8];
   u8_t ediv[2];
  } rand;

  bt_rand((void *)&rand, sizeof(rand));

  buf = smp_create_pdu(smp, 0x06,
         sizeof(*info));
  if (!buf) {
   printf("Unable to allocate Encrypt Info buffer""\r\n");
   return;
  }

  info = net_buf_simple_add(&(buf)->b, sizeof(*info));


  memcpy(info->ltk, rand.key, keys->enc_size);
  if (keys->enc_size < sizeof(info->ltk)) {
   (void)memset(info->ltk + keys->enc_size, 0,
         sizeof(info->ltk) - keys->enc_size);
  }

  smp_send(smp, buf, 
# 1995 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                    ((void *)0)
# 1995 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                        , 
# 1995 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                          ((void *)0)
# 1995 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                              );

  buf = smp_create_pdu(smp, 0x07,
         sizeof(*ident));
  if (!buf) {
   printf("Unable to allocate Master Ident buffer""\r\n");
   return;
  }

  ident = net_buf_simple_add(&(buf)->b, sizeof(*ident));
  memcpy(ident->rand, rand.rand, sizeof(ident->rand));
  memcpy(ident->ediv, rand.ediv, sizeof(ident->ediv));

  smp_send(smp, buf, smp_ident_sent, 
# 2008 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                                    ((void *)0)
# 2008 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                                        );

  if (atomic_test_bit(smp->flags, SMP_FLAG_BOND)) {
   bt_keys_add_type(keys, BT_KEYS_SLAVE_LTK);

   memcpy(keys->slave_ltk.val, rand.key,
          sizeof(keys->slave_ltk.val));
   memcpy(keys->slave_ltk.rand, rand.rand,
          sizeof(keys->slave_ltk.rand));
   memcpy(keys->slave_ltk.ediv, rand.ediv,
          sizeof(keys->slave_ltk.ediv));
  }
 }
}


static u8_t bt_smp_distribute_keys(struct bt_smp *smp)
{
 struct bt_conn *conn = smp->chan.chan.conn;
 struct bt_keys *keys = conn->le.keys;

 if (!keys) {
  printf("No keys space for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)));
  return 0x08;
 }



 if (!atomic_test_bit(smp->flags, SMP_FLAG_SC)) {
  legacy_distribute_keys(smp);
 }
# 2074 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
 if (smp->local_dist & 0x04) {
  struct bt_smp_signing_info *info;
  struct net_buf *buf;

  buf = smp_create_pdu(smp, 0x0a,
         sizeof(*info));
  if (!buf) {
   printf("Unable to allocate Signing Info buffer""\r\n");
   return 0x08;
  }

  info = net_buf_simple_add(&(buf)->b, sizeof(*info));

  bt_rand(info->csrk, sizeof(info->csrk));

  if (atomic_test_bit(smp->flags, SMP_FLAG_BOND)) {
   bt_keys_add_type(keys, BT_KEYS_LOCAL_CSRK);
   memcpy(keys->local_csrk.val, info->csrk, 16);
   keys->local_csrk.cnt = 0U;
  }

  smp_send(smp, buf, smp_sign_info_sent, 
# 2095 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                                        ((void *)0)
# 2095 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                                            );
 }


 return 0;
}


static u8_t send_pairing_rsp(struct bt_smp *smp)
{
 struct bt_smp_pairing *rsp;
 struct net_buf *rsp_buf;

 rsp_buf = smp_create_pdu(smp, 0x02, sizeof(*rsp));
 if (!rsp_buf) {
  return 0x08;
 }

 rsp = net_buf_simple_add(&(rsp_buf)->b, sizeof(*rsp));
 memcpy(rsp, smp->prsp + 1, sizeof(*rsp));

 smp_send(smp, rsp_buf, 
# 2116 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                       ((void *)0)
# 2116 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                           , 
# 2116 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                             ((void *)0)
# 2116 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                                 );

 return 0;
}



static int smp_s1(const u8_t k[16], const u8_t r1[16],
    const u8_t r2[16], u8_t out[16])
{
# 2134 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
 memcpy(out, r2, 8);
 memcpy(out + 8, r1, 8);


 return bt_encrypt_le(k, out, out);
}

static u8_t legacy_get_pair_method(struct bt_smp *smp, u8_t remote_io)
{
 struct bt_smp_pairing *req, *rsp;
 u8_t method;

 if (remote_io > 0x04) {
  return JUST_WORKS;
 }

 req = (struct bt_smp_pairing *)&smp->preq[1];
 rsp = (struct bt_smp_pairing *)&smp->prsp[1];


 if (!((req->auth_req | rsp->auth_req) & 0x04)) {
  return JUST_WORKS;
 }

 method = gen_method_legacy[remote_io][get_io_capa()];




 if (method == PASSKEY_ROLE) {
  if (smp->chan.chan.conn->role == 0x00) {
   method = PASSKEY_DISPLAY;
  } else {
   method = PASSKEY_INPUT;
  }
 }

 return method;
}

static u8_t legacy_request_tk(struct bt_smp *smp)
{
 struct bt_conn *conn = smp->chan.chan.conn;
 struct bt_keys *keys;
 u32_t passkey;






 keys = bt_keys_find_addr(conn->id, &conn->le.dst);
 if (keys && (keys->flags & BT_KEYS_AUTHENTICATED) &&
     smp->method == JUST_WORKS) {
  printf("JustWorks failed, authenticated keys present""\r\n");
  return 0x08;
 }

 switch (smp->method) {
 case PASSKEY_DISPLAY:
  if (0 &&
      fixed_passkey != 0xffffffff) {
   passkey = fixed_passkey;
  } else {
   if (bt_rand(&passkey, sizeof(passkey))) {
    return 0x08;
   }

   passkey %= 1000000;
  }

  if (bt_auth && bt_auth->passkey_display) {
   atomic_set_bit(smp->flags, SMP_FLAG_DISPLAY);
   bt_auth->passkey_display(conn, passkey);
  }

  sys_put_le32(passkey, smp->tk);

  break;
 case PASSKEY_INPUT:
  atomic_set_bit(smp->flags, SMP_FLAG_USER);
  bt_auth->passkey_entry(conn);
  break;
 case JUST_WORKS:
  break;
 default:
  printf("Unknown pairing method (%u)""\r\n", smp->method);
  return 0x08;
 }

 return 0;
}

static u8_t legacy_send_pairing_confirm(struct bt_smp *smp)
{
 struct bt_conn *conn = smp->chan.chan.conn;
 struct bt_smp_pairing_confirm *req;
 struct net_buf *buf;

 buf = smp_create_pdu(smp, 0x03, sizeof(*req));
 if (!buf) {
  return 0x08;
 }

 req = net_buf_simple_add(&(buf)->b, sizeof(*req));

 if (smp_c1(smp->tk, smp->prnd, smp->preq, smp->prsp,
     &conn->le.init_addr, &conn->le.resp_addr, req->val)) {
  net_buf_unref(buf);
  return 0x08;
 }

 smp_send(smp, buf, 
# 2246 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                   ((void *)0)
# 2246 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                       , 
# 2246 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                         ((void *)0)
# 2246 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                             );

 atomic_clear_bit(smp->flags, SMP_FLAG_CFM_DELAYED);

 return 0;
}


static u8_t legacy_pairing_req(struct bt_smp *smp)
{
 u8_t ret;

 ;


 if (((0 && fixed_passkey != 0xffffffff && (smp)->method == PASSKEY_DISPLAY) || smp->method == JUST_WORKS) &&
     !atomic_test_bit(smp->flags, SMP_FLAG_SEC_REQ) &&
     bt_auth && bt_auth->pairing_confirm) {

  atomic_set_bit(smp->flags, SMP_FLAG_USER);
  bt_auth->pairing_confirm(smp->chan.chan.conn);

  return 0;
 }

 ret = send_pairing_rsp(smp);
 if (ret) {
  return ret;
 }

 atomic_set_bit(&smp->allowed_cmds, 0x03);

 return legacy_request_tk(smp);
}


static u8_t legacy_pairing_random(struct bt_smp *smp)
{
 struct bt_conn *conn = smp->chan.chan.conn;
 u8_t tmp[16];
 int err;

 ;


 err = smp_c1(smp->tk, smp->rrnd, smp->preq, smp->prsp,
       &conn->le.init_addr, &conn->le.resp_addr, tmp);
 if (err) {
  return 0x08;
 }

 ;
 ;

 if (memcmp(smp->pcnf, tmp, sizeof(smp->pcnf))) {
  return 0x04;
 }

 if (1 &&
     conn->role == 0x00) {
  u8_t ediv[2], rand[8];


  err = smp_s1(smp->tk, smp->rrnd, smp->prnd, tmp);
  if (err) {
   return 0x08;
  }


  (void)memset(ediv, 0, sizeof(ediv));
  (void)memset(rand, 0, sizeof(rand));
  if (bt_conn_le_start_encryption(conn, rand, ediv, tmp,
      get_encryption_key_size(smp))) {
   printf("Failed to start encryption""\r\n");
   return 0x08;
  }

  atomic_set_bit(smp->flags, SMP_FLAG_ENC_PENDING);

  return 0;
 }

 if (1) {
  err = smp_s1(smp->tk, smp->prnd, smp->rrnd, tmp);
  if (err) {
   return 0x08;
  }

  memcpy(smp->tk, tmp, sizeof(smp->tk));
  ;

  atomic_set_bit(smp->flags, SMP_FLAG_ENC_PENDING);

  return smp_send_pairing_random(smp);
 }

 return 0;
}

static u8_t legacy_pairing_confirm(struct bt_smp *smp)
{
 ;

 if (1 &&
     smp->chan.chan.conn->role == 0x00) {
  atomic_set_bit(&smp->allowed_cmds, 0x03);
  return legacy_send_pairing_confirm(smp);
 }

 if (1) {
  if (!atomic_test_bit(smp->flags, SMP_FLAG_USER)) {
   atomic_set_bit(&smp->allowed_cmds,
           0x04);
   return legacy_send_pairing_confirm(smp);
  }

  atomic_set_bit(smp->flags, SMP_FLAG_CFM_DELAYED);
 }

 return 0;
}

static void legacy_passkey_entry(struct bt_smp *smp, unsigned int passkey)
{
 passkey = (passkey);
 memcpy(smp->tk, &passkey, sizeof(passkey));

 if (!atomic_test_and_clear_bit(smp->flags, SMP_FLAG_CFM_DELAYED)) {
  return;
 }


 if (legacy_pairing_confirm(smp)) {
  smp_error(smp, 0x01);
  return;
 }

 if (1 &&
     smp->chan.chan.conn->role == 0x00) {
  atomic_set_bit(&smp->allowed_cmds, 0x03);
  return;
 }

 if (1) {
  atomic_set_bit(&smp->allowed_cmds, 0x04);
 }
}

static u8_t smp_encrypt_info(struct bt_smp *smp, struct net_buf *buf)
{
 ;

 if (atomic_test_bit(smp->flags, SMP_FLAG_BOND)) {
  struct bt_smp_encrypt_info *req = (void *)buf->data;
  struct bt_conn *conn = smp->chan.chan.conn;
  struct bt_keys *keys;

  keys = bt_keys_get_type(BT_KEYS_LTK, conn->id, &conn->le.dst);
  if (!keys) {
   printf("Unable to get keys for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)))
                                        ;
   return 0x08;
  }

  memcpy(keys->ltk.val, req->ltk, 16);
 }

 atomic_set_bit(&smp->allowed_cmds, 0x07);

 return 0;
}

static u8_t smp_master_ident(struct bt_smp *smp, struct net_buf *buf)
{
 struct bt_conn *conn = smp->chan.chan.conn;
 u8_t err;

 ;

 if (atomic_test_bit(smp->flags, SMP_FLAG_BOND)) {
  struct bt_smp_master_ident *req = (void *)buf->data;
  struct bt_keys *keys;

  keys = bt_keys_get_type(BT_KEYS_LTK, conn->id, &conn->le.dst);
  if (!keys) {
   printf("Unable to get keys for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)))
                                        ;
   return 0x08;
  }

  memcpy(keys->ltk.ediv, req->ediv, sizeof(keys->ltk.ediv));
  memcpy(keys->ltk.rand, req->rand, sizeof(req->rand));

  smp->remote_dist &= ~0x01;
 }

 if (smp->remote_dist & 0x02) {
  atomic_set_bit(&smp->allowed_cmds, 0x08);
 } else if (smp->remote_dist & 0x04) {
  atomic_set_bit(&smp->allowed_cmds, 0x0a);
 }

 if (1 &&
     conn->role == 0x00 && !smp->remote_dist) {
  err = bt_smp_distribute_keys(smp);
  if (err) {
   return err;
  }
 }


 if (!smp->local_dist && !smp->remote_dist) {
  smp_pairing_complete(smp, 0);
 }

 return 0;
}


static u8_t legacy_pairing_rsp(struct bt_smp *smp)
{
 u8_t ret;

 ;


 if (((0 && fixed_passkey != 0xffffffff && (smp)->method == PASSKEY_DISPLAY) || smp->method == JUST_WORKS) &&
     atomic_test_bit(smp->flags, SMP_FLAG_SEC_REQ) &&
     bt_auth && bt_auth->pairing_confirm) {

  atomic_set_bit(smp->flags, SMP_FLAG_USER);
  bt_auth->pairing_confirm(smp->chan.chan.conn);
  return 0;
 }

 ret = legacy_request_tk(smp);
 if (ret) {
  return ret;
 }

 if (!atomic_test_bit(smp->flags, SMP_FLAG_USER)) {
  atomic_set_bit(&smp->allowed_cmds, 0x03);
  return legacy_send_pairing_confirm(smp);
 }

 atomic_set_bit(smp->flags, SMP_FLAG_CFM_DELAYED);

 return 0;
}
# 2508 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
static int smp_init(struct bt_smp *smp)
{

 (void)memset((u8_t *)smp + sizeof(smp->chan), 0,
       sizeof(*smp) - (sizeof(smp->chan) + sizeof(smp->work)));


 if (bt_rand(smp->prnd, 16)) {
  return 0x08;
 }

 ;

 atomic_set_bit(&smp->allowed_cmds, 0x05);

 sc_public_key = bt_pub_key_get();

    k_sem_init(&sc_local_pkey_ready, 0, 1);

 return 0;
}

void bt_set_bondable(
# 2530 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                    _Bool 
# 2530 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                         enable)
{
 bondable = enable;
}
# 2552 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
void bt_set_oob_data_flag(
# 2552 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                         _Bool 
# 2552 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                              enable)
{
 oobd_present = enable;
}

static u8_t get_auth(struct bt_conn *conn, u8_t auth)
{
 if (sc_supported) {
  auth &= 0x0f;
 } else {
  auth &= 0x07;
 }






 if ((get_io_capa() == 0x03) ||
     (!0 &&
     (conn->required_sec_level < BT_SECURITY_L3))) {

  auth &= ~(0x04);
 } else {
  auth |= 0x04;
 }

 if (bondable) {
  auth |= 0x01;
 } else {
  auth &= ~0x01;
 }

 return auth;
}

static 
# 2588 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
      _Bool 
# 2588 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           sec_level_reachable(struct bt_conn *conn)
{
 switch (conn->required_sec_level) {
 case BT_SECURITY_L1:
 case BT_SECURITY_L2:
  return 
# 2593 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        1
# 2593 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
            ;
 case BT_SECURITY_L3:
  return get_io_capa() != 0x03 ||
         (bt_auth && bt_auth->oob_data_request && oobd_present);
 case BT_SECURITY_L4:
  return (get_io_capa() != 0x03 ||
   (bt_auth && bt_auth->oob_data_request &&
    oobd_present)) &&
         sc_supported;
 default:
  return 
# 2603 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        0
# 2603 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
             ;
 }
}

static struct bt_smp *smp_chan_get(struct bt_conn *conn)
{
 struct bt_l2cap_chan *chan;

 chan = bt_l2cap_le_lookup_rx_cid(conn, 0x0006);
 if (!chan) {
  printf("Unable to find SMP channel""\r\n");
  return 
# 2614 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        ((void *)0)
# 2614 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
            ;
 }

 return ((struct bt_smp *)(((char *)(chan)) - 
# 2617 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
       __builtin_offsetof (
# 2617 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
       struct bt_smp
# 2617 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
       , 
# 2617 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
       chan
# 2617 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
       )
# 2617 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
       ));
}


# 2620 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
_Bool 
# 2620 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
    bt_smp_request_ltk(struct bt_conn *conn, u64_t rand, u16_t ediv, u8_t *ltk)
{
 struct bt_smp *smp;
 u8_t enc_size;

 smp = smp_chan_get(conn);
 if (!smp) {
  return 
# 2627 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        0
# 2627 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
             ;
 }





 if (ediv == 0U && rand == 0U &&
     atomic_test_bit(smp->flags, SMP_FLAG_PAIRING) &&
     atomic_test_bit(smp->flags, SMP_FLAG_ENC_PENDING)) {
  enc_size = get_encryption_key_size(smp);





  memcpy(ltk, smp->tk, enc_size);
  if (enc_size < 16) {
   (void)memset(ltk + enc_size, 0,
         16 - enc_size);
  }

  atomic_set_bit(smp->flags, SMP_FLAG_ENC_PENDING);
  return 
# 2650 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        1
# 2650 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
            ;
 }

 if (!conn->le.keys) {
  conn->le.keys = bt_keys_find(BT_KEYS_LTK_P256, conn->id,
          &conn->le.dst);
  if (!conn->le.keys) {
   conn->le.keys = bt_keys_find(BT_KEYS_SLAVE_LTK,
           conn->id, &conn->le.dst);
  }
 }

 if (ediv == 0U && rand == 0U &&
     conn->le.keys && (conn->le.keys->keys & BT_KEYS_LTK_P256)) {
  enc_size = conn->le.keys->enc_size;

  memcpy(ltk, conn->le.keys->ltk.val, enc_size);
  if (enc_size < 16) {
   (void)memset(ltk + enc_size, 0,
         16 - enc_size);
  }

  return 
# 2672 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        1
# 2672 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
            ;
 }


 if (conn->le.keys && (conn->le.keys->keys & BT_KEYS_SLAVE_LTK) &&
     !memcmp(conn->le.keys->slave_ltk.rand, &rand, 8) &&
     !memcmp(conn->le.keys->slave_ltk.ediv, &ediv, 2)) {
  enc_size = conn->le.keys->enc_size;

  memcpy(ltk, conn->le.keys->slave_ltk.val, enc_size);
  if (enc_size < 16) {
   (void)memset(ltk + enc_size, 0,
         16 - enc_size);
  }

  atomic_set_bit(smp->flags, SMP_FLAG_ENC_PENDING);
  return 
# 2688 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
        1
# 2688 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
            ;
 }


 if (atomic_test_bit(smp->flags, SMP_FLAG_SEC_REQ)) {



  bt_conn_security_changed(smp->chan.chan.conn,
      BT_SECURITY_ERR_PIN_OR_KEY_MISSING);

 }

 smp_reset(smp);
 return 
# 2702 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
       0
# 2702 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
            ;
}


static int smp_send_security_req(struct bt_conn *conn)
{
 struct bt_smp *smp;
 struct bt_smp_security_request *req;
 struct net_buf *req_buf;

 ;
 smp = smp_chan_get(conn);
 if (!smp) {
  return -57;
 }


 if (atomic_test_bit(smp->flags, SMP_FLAG_TIMEOUT)) {
  return -5;
 }


 if (atomic_test_bit(smp->flags, SMP_FLAG_PAIRING)) {
  return -16;
 }

 if (atomic_test_bit(smp->flags, SMP_FLAG_ENC_PENDING)) {
  return -16;
 }


 if (!(sec_level_reachable(conn) || smp_keys_check(conn))) {
  return -22;
 }

 if (!conn->le.keys) {
  conn->le.keys = bt_keys_get_addr(conn->id, &conn->le.dst);
  if (!conn->le.keys) {
   return -12;
  }
 }

 if (smp_init(smp) != 0) {
  return -55;
 }

 req_buf = smp_create_pdu(smp, 0x0b,
     sizeof(*req));
 if (!req_buf) {
  return -55;
 }

 req = net_buf_simple_add(&(req_buf)->b, sizeof(*req));
 req->auth_req = get_auth(conn,(0x01 | 0x08));


 bt_l2cap_send(conn, 0x0006, req_buf);

 atomic_set_bit(smp->flags, SMP_FLAG_SEC_REQ);
 atomic_set_bit(&smp->allowed_cmds, 0x01);

 return 0;
}

static u8_t smp_pairing_req(struct bt_smp *smp, struct net_buf *buf)
{
 struct bt_conn *conn = smp->chan.chan.conn;
 struct bt_smp_pairing *req = (void *)buf->data;
 struct bt_smp_pairing *rsp;

 ;

 if ((req->max_key_size > 16) ||
     (req->max_key_size < 7)) {
  return 0x06;
 }

 if (!conn->le.keys) {
  conn->le.keys = bt_keys_get_addr(conn->id, &conn->le.dst);
  if (!conn->le.keys) {
   return 0x08;
  }
 }




 if (!atomic_test_bit(smp->flags, SMP_FLAG_SEC_REQ)) {
  int ret = smp_init(smp);

  if (ret) {
   return ret;
  }
 }


 smp->preq[0] = 0x01;
 memcpy(smp->preq + 1, req, sizeof(*req));


 smp->prsp[0] = 0x02;
 rsp = (struct bt_smp_pairing *)&smp->prsp[1];

 rsp->auth_req = get_auth(conn, req->auth_req);
 rsp->io_capability = get_io_capa();
 rsp->oob_flag = oobd_present ? 0x01 :
           0x00;
 rsp->max_key_size = 16;
 rsp->init_key_dist = (req->init_key_dist & (0x01 | 0x02 | 0x04 | 0));
 rsp->resp_key_dist = (req->resp_key_dist & (0x01 | 0 | 0x04 | 0));

 if ((rsp->auth_req & 0x08) &&
     (req->auth_req & 0x08)) {
  atomic_set_bit(smp->flags, SMP_FLAG_SC);

  rsp->init_key_dist &= ((0x01 | 0x02 | 0x04 | 0) & ~(0x01));
  rsp->resp_key_dist &= ((0x01 | 0 | 0x04 | 0) & ~(0x01));
 }

 if ((rsp->auth_req & 0x20) &&
     (req->auth_req & 0x20)) {
  atomic_set_bit(smp->flags, SMP_FLAG_CT2);
 }

 smp->local_dist = rsp->resp_key_dist;
 smp->remote_dist = rsp->init_key_dist;

 if ((rsp->auth_req & 0x01) &&
     (req->auth_req & 0x01)) {
  atomic_set_bit(smp->flags, SMP_FLAG_BOND);
 }

 atomic_set_bit(smp->flags, SMP_FLAG_PAIRING);

 smp->method = get_pair_method(smp, req->io_capability);

 if (!update_keys_check(smp)) {
  return 0x03;
 }

 if (!atomic_test_bit(smp->flags, SMP_FLAG_SC)) {



  return legacy_pairing_req(smp);

 }

 if ((0 ||
      conn->required_sec_level == BT_SECURITY_L4) &&
  smp->method == JUST_WORKS) {
  return 0x03;
 }

 if ((0 ||
      conn->required_sec_level == BT_SECURITY_L4) &&
        get_encryption_key_size(smp) != 16) {
  return 0x06;
 }

 if (((0 && fixed_passkey != 0xffffffff && (smp)->method == PASSKEY_DISPLAY) || smp->method == JUST_WORKS) &&
     !atomic_test_bit(smp->flags, SMP_FLAG_SEC_REQ) &&
     bt_auth && bt_auth->pairing_confirm) {

  atomic_set_bit(smp->flags, SMP_FLAG_USER);
  bt_auth->pairing_confirm(smp->chan.chan.conn);

  return 0;
 }

 atomic_set_bit(&smp->allowed_cmds, 0x0c);
 return send_pairing_rsp(smp);
}







static u8_t sc_send_public_key(struct bt_smp *smp)
{
 struct bt_smp_public_key *req;
 struct net_buf *req_buf;

 req_buf = smp_create_pdu(smp, 0x0c, sizeof(*req));
 if (!req_buf) {
  return 0x08;
 }

 req = net_buf_simple_add(&(req_buf)->b, sizeof(*req));

 memcpy(req->x, sc_public_key, sizeof(req->x));
 memcpy(req->y, &sc_public_key[32], sizeof(req->y));

 smp_send(smp, req_buf, 
# 2897 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                       ((void *)0)
# 2897 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                           , 
# 2897 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                             ((void *)0)
# 2897 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                                 );

 if (0) {
  atomic_set_bit(smp->flags, SMP_FLAG_SC_DEBUG_KEY);
 }

 return 0;
}


static int smp_send_pairing_req(struct bt_conn *conn)
{
 struct bt_smp *smp;
 struct bt_smp_pairing *req;
 struct net_buf *req_buf;

 ;

 smp = smp_chan_get(conn);
 if (!smp) {
  return -57;
 }


 if (atomic_test_bit(smp->flags, SMP_FLAG_TIMEOUT)) {
  return -5;
 }


 if (atomic_test_bit(smp->flags, SMP_FLAG_PAIRING)) {
  return -16;
 }


 if (atomic_test_bit(smp->flags, SMP_FLAG_ENC_PENDING)) {
  return -16;
 }


 if (!sec_level_reachable(conn)) {
  return -22;
 }

 if (!conn->le.keys) {
  conn->le.keys = bt_keys_get_addr(conn->id, &conn->le.dst);
  if (!conn->le.keys) {
   return -12;
  }
 }

 if (smp_init(smp)) {
  return -55;
 }

 req_buf = smp_create_pdu(smp, 0x01, sizeof(*req));
 if (!req_buf) {
  return -55;
 }

 req = net_buf_simple_add(&(req_buf)->b, sizeof(*req));

 req->auth_req = get_auth(conn, (0x01 | 0x08));
# 2969 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
 req->io_capability = get_io_capa();
 req->oob_flag = oobd_present ? 0x01 :
           0x00;
 req->max_key_size = 16;
 req->init_key_dist = (0x01 | 0 | 0x04 | 0);
 req->resp_key_dist = (0x01 | 0x02 | 0x04 | 0);

 smp->local_dist = (0x01 | 0 | 0x04 | 0);
 smp->remote_dist = (0x01 | 0x02 | 0x04 | 0);


 smp->preq[0] = 0x01;
 memcpy(smp->preq + 1, req, sizeof(*req));

 smp_send(smp, req_buf, 
# 2983 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                       ((void *)0)
# 2983 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                           , 
# 2983 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                             ((void *)0)
# 2983 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                                 );

 atomic_set_bit(&smp->allowed_cmds, 0x02);
 atomic_set_bit(&smp->allowed_cmds, 0x0b);
 atomic_set_bit(smp->flags, SMP_FLAG_PAIRING);

 return 0;
}

static u8_t smp_pairing_rsp(struct bt_smp *smp, struct net_buf *buf)
{
 struct bt_conn *conn = smp->chan.chan.conn;
 struct bt_smp_pairing *rsp = (void *)buf->data;
 struct bt_smp_pairing *req = (struct bt_smp_pairing *)&smp->preq[1];

 ;

 if ((rsp->max_key_size > 16) ||
     (rsp->max_key_size < 7)) {
  return 0x06;
 }

 smp->local_dist &= rsp->init_key_dist;
 smp->remote_dist &= rsp->resp_key_dist;


 smp->prsp[0] = 0x02;
 memcpy(smp->prsp + 1, rsp, sizeof(*rsp));

 if ((rsp->auth_req & 0x08) &&
     (req->auth_req & 0x08)) {
  atomic_set_bit(smp->flags, SMP_FLAG_SC);
 }

 if ((rsp->auth_req & 0x20) &&
     (req->auth_req & 0x20)) {
  atomic_set_bit(smp->flags, SMP_FLAG_CT2);
 }

 if ((rsp->auth_req & 0x01) &&
     (req->auth_req & 0x01)) {
  atomic_set_bit(smp->flags, SMP_FLAG_BOND);
 }

 smp->method = get_pair_method(smp, rsp->io_capability);

 if (!update_keys_check(smp)) {
  return 0x03;
 }

 if (!atomic_test_bit(smp->flags, SMP_FLAG_SC)) {



  return legacy_pairing_rsp(smp);

 }

 if ((0 ||
      conn->required_sec_level == BT_SECURITY_L4) &&
      smp->method == JUST_WORKS) {
  return 0x03;
 }

 if ((0 ||
      conn->required_sec_level == BT_SECURITY_L4) &&
      get_encryption_key_size(smp) != 16) {
  return 0x06;
 }

 smp->local_dist &= ((0x01 | 0 | 0x04 | 0) & ~(0x01));
 smp->remote_dist &= ((0x01 | 0x02 | 0x04 | 0) & ~(0x01));

 if (((0 && fixed_passkey != 0xffffffff && (smp)->method == PASSKEY_DISPLAY) || smp->method == JUST_WORKS) &&
     atomic_test_bit(smp->flags, SMP_FLAG_SEC_REQ) &&
     bt_auth && bt_auth->pairing_confirm) {
  atomic_set_bit(smp->flags, SMP_FLAG_USER);
  bt_auth->pairing_confirm(smp->chan.chan.conn);
  return 0;
 }

 if (!sc_public_key) {
  atomic_set_bit(smp->flags, SMP_FLAG_PKEY_SEND);
  return 0;
 }

 atomic_set_bit(&smp->allowed_cmds, 0x0c);
 atomic_clear_bit(&smp->allowed_cmds, 0x0b);

 return sc_send_public_key(smp);
}







static u8_t smp_pairing_confirm(struct bt_smp *smp, struct net_buf *buf)
{
 struct bt_smp_pairing_confirm *req = (void *)buf->data;

 ;

 atomic_clear_bit(smp->flags, SMP_FLAG_DISPLAY);

 memcpy(smp->pcnf, req->val, sizeof(smp->pcnf));

 if (1 &&
     smp->chan.chan.conn->role == 0x00) {
  atomic_set_bit(&smp->allowed_cmds, 0x04);
  return smp_send_pairing_random(smp);
 }

 if (!1) {
  return 0;
 }


 if (!atomic_test_bit(smp->flags, SMP_FLAG_SC)) {
  return legacy_pairing_confirm(smp);
 }


 switch (smp->method) {
 case PASSKEY_DISPLAY:
  atomic_set_bit(&smp->allowed_cmds, 0x04);
  return smp_send_pairing_confirm(smp);
 case PASSKEY_INPUT:
  if (atomic_test_bit(smp->flags, SMP_FLAG_USER)) {
   atomic_set_bit(smp->flags, SMP_FLAG_CFM_DELAYED);
   return 0;
  }

  atomic_set_bit(&smp->allowed_cmds, 0x04);
  return smp_send_pairing_confirm(smp);
 case JUST_WORKS:
 case PASSKEY_CONFIRM:
 default:
  return 0x08;
 }
}

static u8_t sc_smp_send_dhkey_check(struct bt_smp *smp, const u8_t *e)
{
 struct bt_smp_dhkey_check *req;
 struct net_buf *buf;

 ;

 buf = smp_create_pdu(smp, 0x0d, sizeof(*req));
 if (!buf) {
  return 0x08;
 }

 req = net_buf_simple_add(&(buf)->b, sizeof(*req));
 memcpy(req->e, e, sizeof(req->e));

 smp_send(smp, buf, 
# 3141 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                   ((void *)0)
# 3141 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                       , 
# 3141 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                         ((void *)0)
# 3141 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                             );

 return 0;
}


static u8_t compute_and_send_master_dhcheck(struct bt_smp *smp)
{
 u8_t e[16], r[16];

 (void)memset(r, 0, sizeof(r));

 switch (smp->method) {
 case JUST_WORKS:
 case PASSKEY_CONFIRM:
  break;
 case PASSKEY_DISPLAY:
 case PASSKEY_INPUT:
  memcpy(r, &smp->passkey, sizeof(smp->passkey));
  break;
 case LE_SC_OOB:
  if (smp->oobd_remote) {
   memcpy(r, smp->oobd_remote->r, sizeof(r));
  }
  break;
 default:
  return 0x08;
 }


 if (smp_f5(smp->dhkey, smp->prnd, smp->rrnd,
     &smp->chan.chan.conn->le.init_addr,
     &smp->chan.chan.conn->le.resp_addr, smp->mackey,
     smp->tk)) {
  return 0x08;
 }

 if (smp_f6(smp->mackey, smp->prnd, smp->rrnd, r, &smp->preq[1],
     &smp->chan.chan.conn->le.init_addr,
     &smp->chan.chan.conn->le.resp_addr, e)) {
  return 0x08;
 }

 atomic_set_bit(&smp->allowed_cmds, 0x0d);
 return sc_smp_send_dhkey_check(smp, e);
}



static u8_t compute_and_check_and_send_slave_dhcheck(struct bt_smp *smp)
{
 u8_t re[16], e[16], r[16];
 u8_t err;

 (void)memset(r, 0, sizeof(r));

 switch (smp->method) {
 case JUST_WORKS:
 case PASSKEY_CONFIRM:
  break;
 case PASSKEY_DISPLAY:
 case PASSKEY_INPUT:
  memcpy(r, &smp->passkey, sizeof(smp->passkey));
  break;
 case LE_SC_OOB:
  if (smp->oobd_remote) {
   memcpy(r, smp->oobd_remote->r, sizeof(r));
  }
  break;
 default:
  return 0x08;
 }


 if (smp_f5(smp->dhkey, smp->rrnd, smp->prnd,
     &smp->chan.chan.conn->le.init_addr,
     &smp->chan.chan.conn->le.resp_addr, smp->mackey,
     smp->tk)) {
  return 0x08;
 }


 if (smp_f6(smp->mackey, smp->prnd, smp->rrnd, r, &smp->prsp[1],
     &smp->chan.chan.conn->le.resp_addr,
     &smp->chan.chan.conn->le.init_addr, e)) {
  return 0x08;
 }

 if (smp->method == LE_SC_OOB) {
  if (smp->oobd_local) {
   memcpy(r, smp->oobd_local->r, sizeof(r));
  } else {
   memset(r, 0, sizeof(r));
  }
 }


 if (smp_f6(smp->mackey, smp->rrnd, smp->prnd, r, &smp->preq[1],
     &smp->chan.chan.conn->le.init_addr,
     &smp->chan.chan.conn->le.resp_addr, re)) {
  return 0x08;
 }


 if (memcmp(smp->e, re, 16)) {
  return 0x0b;
 }


 err = sc_smp_send_dhkey_check(smp, e);
 if (err) {
  return err;
 }

 atomic_set_bit(smp->flags, SMP_FLAG_ENC_PENDING);
 return 0;
}


static void bt_smp_dhkey_ready(const u8_t *dhkey)
{
 struct bt_smp *smp = 
# 3262 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     ((void *)0)
# 3262 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                         ;
 int i;

 ;

 for (i = 0; i < ((unsigned long) (((int) sizeof(char[1 - 2 * !(!__builtin_types_compatible_p(__typeof__(bt_smp_pool), __typeof__(&(bt_smp_pool)[0])))]) - 1) + (sizeof(bt_smp_pool) / sizeof((bt_smp_pool)[0])))); i++) {
  if (atomic_test_and_clear_bit(bt_smp_pool[i].flags,
           SMP_FLAG_DHKEY_PENDING)) {
   smp = &bt_smp_pool[i];
   break;
  }
 }

 if (!smp) {
  return;
 }

 if (!dhkey) {
  smp_error(smp, 0x0b);
  return;
 }

 memcpy(smp->dhkey, dhkey, 32);


 if (atomic_test_bit(smp->flags, SMP_FLAG_USER)) {
  atomic_set_bit(smp->flags, SMP_FLAG_DHKEY_SEND);
  return;
 }


 if (atomic_test_bit(smp->flags, SMP_FLAG_DHCHECK_WAIT)) {
  atomic_set_bit(smp->flags, SMP_FLAG_DHKEY_SEND);
  return;
 }

 if (atomic_test_bit(smp->flags, SMP_FLAG_DHKEY_SEND)) {
  u8_t err;


  if (smp->chan.chan.conn->role == 0x00) {
   err = compute_and_send_master_dhcheck(smp);
   if (err) {
    smp_error(smp, err);
   }

   return;
  }



  err = compute_and_check_and_send_slave_dhcheck(smp);
  if (err) {
   smp_error(smp, err);
  }

 }
}

static u8_t sc_smp_check_confirm(struct bt_smp *smp)
{
 u8_t cfm[16];
 u8_t r;

 switch (smp->method) {
 case LE_SC_OOB:
  return 0;
 case PASSKEY_CONFIRM:
 case JUST_WORKS:
  r = 0U;
  break;
 case PASSKEY_DISPLAY:
 case PASSKEY_INPUT:







  r = (smp->passkey >> smp->passkey_round) & 0x01;
  r |= 0x80;
  break;
 default:
  return 0x08;
 }

 if (smp_f4(smp->pkey, sc_public_key, smp->rrnd, r, cfm)) {
  return 0x08;
 }

 ;
 ;

 if (memcmp(smp->pcnf, cfm, 16)) {
  return 0x04;
 }

 return 0;
}

static 
# 3363 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
      _Bool 
# 3363 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           le_sc_oob_data_req_check(struct bt_smp *smp)
{
 struct bt_smp_pairing *req = (struct bt_smp_pairing *)&smp->preq[1];

 return ((req->oob_flag & 0x01) == 0x01);
}

static 
# 3370 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
      _Bool 
# 3370 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           le_sc_oob_data_rsp_check(struct bt_smp *smp)
{
 struct bt_smp_pairing *rsp = (struct bt_smp_pairing *)&smp->prsp[1];

 return ((rsp->oob_flag & 0x01) == 0x01);
}

static void le_sc_oob_config_set(struct bt_smp *smp,
     struct bt_conn_oob_info *info)
{
 
# 3380 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
_Bool 
# 3380 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
     req_oob_present = le_sc_oob_data_req_check(smp);
 
# 3381 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
_Bool 
# 3381 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
     rsp_oob_present = le_sc_oob_data_rsp_check(smp);
 int oob_config = BT_CONN_OOB_NO_DATA;

 if (1 &&
     smp->chan.chan.conn->role == 0x00) {
  oob_config = req_oob_present ? BT_CONN_OOB_REMOTE_ONLY :
            BT_CONN_OOB_NO_DATA;

  if (rsp_oob_present) {
   oob_config = (oob_config == BT_CONN_OOB_REMOTE_ONLY) ?
         BT_CONN_OOB_BOTH_PEERS :
         BT_CONN_OOB_LOCAL_ONLY;
  }
 } else if (1) {
  oob_config = req_oob_present ? BT_CONN_OOB_LOCAL_ONLY :
            BT_CONN_OOB_NO_DATA;

  if (rsp_oob_present) {
   oob_config = (oob_config == BT_CONN_OOB_LOCAL_ONLY) ?
         BT_CONN_OOB_BOTH_PEERS :
         BT_CONN_OOB_REMOTE_ONLY;
  }
 }

 info->lesc.oob_config = oob_config;
}

static u8_t smp_pairing_random(struct bt_smp *smp, struct net_buf *buf)
{
 struct bt_smp_pairing_random *req = (void *)buf->data;
 u32_t passkey;
 u8_t err;

 ;

 memcpy(smp->rrnd, req->val, sizeof(smp->rrnd));


 if (!atomic_test_bit(smp->flags, SMP_FLAG_SC)) {
  return legacy_pairing_random(smp);
 }



 if (smp->chan.chan.conn->role == 0x00) {
  err = sc_smp_check_confirm(smp);
  if (err) {
   return err;
  }

  switch (smp->method) {
  case PASSKEY_CONFIRM:

   if (smp_g2(sc_public_key, smp->pkey, smp->prnd,
       smp->rrnd, &passkey)) {
    return 0x08;
   }

   atomic_set_bit(smp->flags, SMP_FLAG_USER);
   atomic_set_bit(smp->flags, SMP_FLAG_DHKEY_SEND);
   bt_auth->passkey_confirm(smp->chan.chan.conn, passkey);
   return 0;
  case JUST_WORKS:
   break;
  case LE_SC_OOB:
   break;
  case PASSKEY_DISPLAY:
  case PASSKEY_INPUT:
   smp->passkey_round++;
   if (smp->passkey_round == 20U) {
    break;
   }

   if (bt_rand(smp->prnd, 16)) {
    return 0x08;
   }

   atomic_set_bit(&smp->allowed_cmds,
           0x03);
   return smp_send_pairing_confirm(smp);
  default:
   return 0x08;
  }


  if (atomic_test_bit(smp->flags, SMP_FLAG_DHKEY_PENDING)) {
   atomic_set_bit(smp->flags, SMP_FLAG_DHKEY_SEND);
   return 0;
  }

  return compute_and_send_master_dhcheck(smp);
 }



 switch (smp->method) {
 case PASSKEY_CONFIRM:
  if (smp_g2(smp->pkey, sc_public_key, smp->rrnd, smp->prnd,
      &passkey)) {
   return 0x08;
  }

  atomic_set_bit(smp->flags, SMP_FLAG_USER);
  bt_auth->passkey_confirm(smp->chan.chan.conn, passkey);
  break;
 case JUST_WORKS:
  break;
 case PASSKEY_DISPLAY:
 case PASSKEY_INPUT:
  err = sc_smp_check_confirm(smp);
  if (err) {
   return err;
  }

  atomic_set_bit(&smp->allowed_cmds,
          0x03);
  err = smp_send_pairing_random(smp);
  if (err) {
   return err;
  }

  smp->passkey_round++;
  if (smp->passkey_round == 20U) {
   atomic_set_bit(&smp->allowed_cmds, 0x0d);
   atomic_set_bit(smp->flags, SMP_FLAG_DHCHECK_WAIT);
   return 0;
  }

  if (bt_rand(smp->prnd, 16)) {
   return 0x08;
  }

  return 0;
 case LE_SC_OOB:

  if (bt_rand(smp->prnd, 16)) {
   return 0x08;
  }

  if (bt_auth && bt_auth->oob_data_request) {
   struct bt_conn_oob_info info = {
    .type = BT_CONN_OOB_LE_SC,
    .lesc.oob_config = BT_CONN_OOB_NO_DATA,
   };

   le_sc_oob_config_set(smp, &info);

   smp->oobd_local = 
# 3528 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                    ((void *)0)
# 3528 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                        ;
   smp->oobd_remote = 
# 3529 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     ((void *)0)
# 3529 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                         ;

   atomic_set_bit(smp->flags, SMP_FLAG_OOB_PENDING);
   bt_auth->oob_data_request(smp->chan.chan.conn, &info);

   return 0;
  } else {
   return 0x02;
  }
 default:
  return 0x08;
 }

 atomic_set_bit(&smp->allowed_cmds, 0x0d);
 atomic_set_bit(smp->flags, SMP_FLAG_DHCHECK_WAIT);
 return smp_send_pairing_random(smp);



}

static u8_t smp_pairing_failed(struct bt_smp *smp, struct net_buf *buf)
{
 struct bt_conn *conn = smp->chan.chan.conn;
 struct bt_smp_pairing_fail *req = (void *)buf->data;

 printf("reason 0x%x""\r\n", req->reason);

 if (atomic_test_and_clear_bit(smp->flags, SMP_FLAG_USER) ||
     atomic_test_and_clear_bit(smp->flags, SMP_FLAG_DISPLAY)) {
  if (bt_auth && bt_auth->cancel) {
   bt_auth->cancel(conn);
  }
 }





 if (atomic_test_bit(smp->flags, SMP_FLAG_KEYS_DISTR) &&
     smp->chan.chan.conn->le.keys) {
  bt_keys_clear(smp->chan.chan.conn->le.keys);
 }

 smp_pairing_complete(smp, req->reason);


 return 0;
}

static u8_t smp_ident_info(struct bt_smp *smp, struct net_buf *buf)
{
 ;

 if (atomic_test_bit(smp->flags, SMP_FLAG_BOND)) {
  struct bt_smp_ident_info *req = (void *)buf->data;
  struct bt_conn *conn = smp->chan.chan.conn;
  struct bt_keys *keys;

  keys = bt_keys_get_type(BT_KEYS_IRK, conn->id, &conn->le.dst);
  if (!keys) {
   printf("Unable to get keys for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)))
                                        ;
   return 0x08;
  }

  memcpy(keys->irk.val, req->irk, 16);
 }

 atomic_set_bit(&smp->allowed_cmds, 0x09);

 return 0;
}

static u8_t smp_ident_addr_info(struct bt_smp *smp, struct net_buf *buf)
{
 struct bt_conn *conn = smp->chan.chan.conn;
 struct bt_smp_ident_addr_info *req = (void *)buf->data;
 u8_t err;

 ;

 if (!bt_addr_le_is_identity(&req->addr)) {
  printf("Invalid identity %s""\r\n", log_strdup(bt_addr_le_str_real(&req->addr)));
  printf(" for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)));
  return 0x0a;
 }

 if (atomic_test_bit(smp->flags, SMP_FLAG_BOND)) {
  const bt_addr_le_t *dst;
  struct bt_keys *keys;

  keys = bt_keys_get_type(BT_KEYS_IRK, conn->id, &conn->le.dst);
  if (!keys) {
   printf("Unable to get keys for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)))
                                        ;
   return 0x08;
  }







  if (conn->role == 0x00) {
   dst = &conn->le.resp_addr;
  } else {
   dst = &conn->le.init_addr;
  }

  if (bt_addr_le_is_rpa(dst)) {

   bt_addr_copy(&keys->irk.rpa, &dst->a);







   if (!bt_addr_le_is_identity(&conn->le.dst)) {
    bt_addr_le_copy(&keys->addr, &req->addr);
    bt_addr_le_copy(&conn->le.dst, &req->addr);

    bt_conn_identity_resolved(conn);
   }
  }

  bt_id_add(keys);
 }

 smp->remote_dist &= ~0x02;

 if (smp->remote_dist & 0x04) {
  atomic_set_bit(&smp->allowed_cmds, 0x0a);
 }

 if (1 &&
     conn->role == 0x00 && !smp->remote_dist) {
  err = bt_smp_distribute_keys(smp);
  if (err) {
   return err;
  }
 }


 if (!smp->local_dist && !smp->remote_dist) {
  smp_pairing_complete(smp, 0);
 }

 return 0;
}


static u8_t smp_signing_info(struct bt_smp *smp, struct net_buf *buf)
{
 struct bt_conn *conn = smp->chan.chan.conn;
 u8_t err;

 ;

 if (atomic_test_bit(smp->flags, SMP_FLAG_BOND)) {
  struct bt_smp_signing_info *req = (void *)buf->data;
  struct bt_keys *keys;

  keys = bt_keys_get_type(BT_KEYS_REMOTE_CSRK, conn->id,
     &conn->le.dst);
  if (!keys) {
   printf("Unable to get keys for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)))
                                        ;
   return 0x08;
  }

  memcpy(keys->remote_csrk.val, req->csrk,
         sizeof(keys->remote_csrk.val));
 }

 smp->remote_dist &= ~0x04;

 if (1 &&
     conn->role == 0x00 && !smp->remote_dist) {
  err = bt_smp_distribute_keys(smp);
  if (err) {
   return err;
  }
 }


 if (!smp->local_dist && !smp->remote_dist) {
  smp_pairing_complete(smp, 0);
 }

 return 0;
}
# 3732 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
static u8_t smp_security_request(struct bt_smp *smp, struct net_buf *buf)
{
 struct bt_conn *conn = smp->chan.chan.conn;
 struct bt_smp_security_request *req = (void *)buf->data;
 u8_t auth;

 ;

 if (atomic_test_bit(smp->flags, SMP_FLAG_PAIRING)) {

  return 0;
 }

 if (atomic_test_bit(smp->flags, SMP_FLAG_ENC_PENDING)) {

  return 0;
 }

 if (sc_supported) {
  auth = req->auth_req & 0x0f;
 } else {
  auth = req->auth_req & 0x07;
 }

 if (conn->le.keys) {

  if (!(conn->le.keys->keys & (BT_KEYS_LTK_P256 | BT_KEYS_LTK))) {
   goto pair;
  }
 } else {
  conn->le.keys = bt_keys_find(BT_KEYS_LTK_P256, conn->id,
          &conn->le.dst);
  if (!conn->le.keys) {
   conn->le.keys = bt_keys_find(BT_KEYS_LTK, conn->id,
           &conn->le.dst);
  }
 }

 if (!conn->le.keys) {
  goto pair;
 }


 if ((auth & 0x04) &&
     !(conn->le.keys->flags & BT_KEYS_AUTHENTICATED)) {
  if (get_io_capa() != 0x03) {
  
         ;
   goto pair;
  }

  printf("Unsupported auth requirements: 0x%x, repairing""\r\n", auth)
        ;
  goto pair;
 }


 if ((auth & 0x08) &&
     !(conn->le.keys->keys & BT_KEYS_LTK_P256)) {
  ;
  goto pair;
 }

 if (bt_conn_le_start_encryption(conn, conn->le.keys->ltk.rand,
     conn->le.keys->ltk.ediv,
     conn->le.keys->ltk.val,
     conn->le.keys->enc_size) < 0) {
  return 0x08;
 }

 atomic_set_bit(smp->flags, SMP_FLAG_ENC_PENDING);

 return 0;
pair:
 if (smp_send_pairing_req(conn) < 0) {
  return 0x08;
 }

 atomic_set_bit(smp->flags, SMP_FLAG_SEC_REQ);

 return 0;
}







static u8_t generate_dhkey(struct bt_smp *smp)
{
 if (bt_dh_key_gen(smp->pkey, bt_smp_dhkey_ready)) {
  return 0x08;
 }

 atomic_set_bit(smp->flags, SMP_FLAG_DHKEY_PENDING);
 return 0;
}

static u8_t display_passkey(struct bt_smp *smp)
{
 if (0 &&
     fixed_passkey != 0xffffffff) {
  smp->passkey = fixed_passkey;
 } else {
  if (bt_rand(&smp->passkey, sizeof(smp->passkey))) {
   return 0x08;
  }

  smp->passkey %= 1000000;
 }

 smp->passkey_round = 0U;

 if (bt_auth && bt_auth->passkey_display) {
  atomic_set_bit(smp->flags, SMP_FLAG_DISPLAY);
  bt_auth->passkey_display(smp->chan.chan.conn, smp->passkey);
 }

 smp->passkey = (smp->passkey);

 return 0;
}


static u8_t smp_public_key_slave(struct bt_smp *smp)
{
 u8_t err;

 err = sc_send_public_key(smp);
 if (err) {
  return err;
 }






 switch (smp->method) {
 case PASSKEY_CONFIRM:
 case JUST_WORKS:
  atomic_set_bit(&smp->allowed_cmds, 0x04);

  err = smp_send_pairing_confirm(smp);
  if (err) {
   return err;
  }
  break;
 case PASSKEY_DISPLAY:
  err = display_passkey(smp);
  if (err) {
   return err;
  }

  atomic_set_bit(&smp->allowed_cmds, 0x03);
  break;
 case PASSKEY_INPUT:
  atomic_set_bit(&smp->allowed_cmds, 0x03);
  atomic_set_bit(smp->flags, SMP_FLAG_USER);
  bt_auth->passkey_entry(smp->chan.chan.conn);
  break;
 case LE_SC_OOB:
  atomic_set_bit(&smp->allowed_cmds, 0x04);
  break;
 default:
  return 0x08;
 }

 return generate_dhkey(smp);
}


static u8_t smp_public_key(struct bt_smp *smp, struct net_buf *buf)
{
 struct bt_smp_public_key *req = (void *)buf->data;
 u8_t err;

 ;

 memcpy(smp->pkey, req->x, 32);
 memcpy(&smp->pkey[32], req->y, 32);


 if (memcmp(smp->pkey, sc_debug_public_key, 64) == 0) {
  ;
  atomic_set_bit(smp->flags, SMP_FLAG_SC_DEBUG_KEY);




  if (!update_debug_keys_check(smp)) {
   return 0x03;
  }
 }

 if (1 &&
     smp->chan.chan.conn->role == 0x00) {





  switch (smp->method) {
  case PASSKEY_CONFIRM:
  case JUST_WORKS:
   atomic_set_bit(&smp->allowed_cmds,
           0x03);
   break;
  case PASSKEY_DISPLAY:
   err = display_passkey(smp);
   if (err) {
    return err;
   }

   atomic_set_bit(&smp->allowed_cmds,
           0x03);

   err = smp_send_pairing_confirm(smp);
   if (err) {
    return err;
   }
   break;
  case PASSKEY_INPUT:
   atomic_set_bit(smp->flags, SMP_FLAG_USER);
   bt_auth->passkey_entry(smp->chan.chan.conn);
   break;
  case LE_SC_OOB:

   if (bt_rand(smp->prnd, 16)) {
    return 0x08;
   }

   if (bt_auth && bt_auth->oob_data_request) {
    struct bt_conn_oob_info info = {
     .type = BT_CONN_OOB_LE_SC,
     .lesc.oob_config = BT_CONN_OOB_NO_DATA,
    };

    le_sc_oob_config_set(smp, &info);

    smp->oobd_local = 
# 3973 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     ((void *)0)
# 3973 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                         ;
    smp->oobd_remote = 
# 3974 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                      ((void *)0)
# 3974 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                          ;

    atomic_set_bit(smp->flags,
            SMP_FLAG_OOB_PENDING);
    bt_auth->oob_data_request(smp->chan.chan.conn,
         &info);
   } else {
    return 0x02;
   }
   break;
  default:
   return 0x08;
  }

  return generate_dhkey(smp);
 }


 if (!sc_public_key) {
  atomic_set_bit(smp->flags, SMP_FLAG_PKEY_SEND);
  return 0;
 }

 err = smp_public_key_slave(smp);
 if (err) {
  return err;
 }


 return 0;
}

static u8_t smp_dhkey_check(struct bt_smp *smp, struct net_buf *buf)
{
 struct bt_smp_dhkey_check *req = (void *)buf->data;

 ;

 if (1 &&
     smp->chan.chan.conn->role == 0x00) {
  u8_t e[16], r[16], enc_size;
  u8_t ediv[2], rand[8];

  (void)memset(r, 0, sizeof(r));

  switch (smp->method) {
  case JUST_WORKS:
  case PASSKEY_CONFIRM:
   break;
  case PASSKEY_DISPLAY:
  case PASSKEY_INPUT:
   memcpy(r, &smp->passkey, sizeof(smp->passkey));
   break;
  case LE_SC_OOB:
   if (smp->oobd_local) {
    memcpy(r, smp->oobd_local->r, sizeof(r));
   }
   break;
  default:
   return 0x08;
  }


  if (smp_f6(smp->mackey, smp->rrnd, smp->prnd, r, &smp->prsp[1],
      &smp->chan.chan.conn->le.resp_addr,
      &smp->chan.chan.conn->le.init_addr, e)) {
   return 0x08;
  }

  if (memcmp(e, req->e, 16)) {
   return 0x0b;
  }

  enc_size = get_encryption_key_size(smp);


  (void)memset(ediv, 0, sizeof(ediv));
  (void)memset(rand, 0, sizeof(rand));
  if (bt_conn_le_start_encryption(smp->chan.chan.conn, rand, ediv,
      smp->tk, enc_size) < 0) {
   return 0x08;
  }

  atomic_set_bit(smp->flags, SMP_FLAG_ENC_PENDING);
  return 0;
 }


 if (smp->chan.chan.conn->role == 0x01) {
  atomic_clear_bit(smp->flags, SMP_FLAG_DHCHECK_WAIT);
  memcpy(smp->e, req->e, sizeof(smp->e));


  if (atomic_test_bit(smp->flags, SMP_FLAG_DHKEY_PENDING)) {
   atomic_set_bit(smp->flags, SMP_FLAG_DHKEY_SEND);
   return 0;
  }


  if (atomic_test_bit(smp->flags, SMP_FLAG_USER)) {
   atomic_set_bit(smp->flags, SMP_FLAG_DHKEY_SEND);
   return 0;
  }

  return compute_and_check_and_send_slave_dhcheck(smp);
 }


 return 0;
}

static const struct {
 u8_t (*func)(struct bt_smp *smp, struct net_buf *buf);
 u8_t expect_len;
} handlers[] = {
 { },
 { smp_pairing_req, sizeof(struct bt_smp_pairing) },
 { smp_pairing_rsp, sizeof(struct bt_smp_pairing) },
 { smp_pairing_confirm, sizeof(struct bt_smp_pairing_confirm) },
 { smp_pairing_random, sizeof(struct bt_smp_pairing_random) },
 { smp_pairing_failed, sizeof(struct bt_smp_pairing_fail) },
 { smp_encrypt_info, sizeof(struct bt_smp_encrypt_info) },
 { smp_master_ident, sizeof(struct bt_smp_master_ident) },
 { smp_ident_info, sizeof(struct bt_smp_ident_info) },
 { smp_ident_addr_info, sizeof(struct bt_smp_ident_addr_info) },
 { smp_signing_info, sizeof(struct bt_smp_signing_info) },
 { smp_security_request, sizeof(struct bt_smp_security_request) },
 { smp_public_key, sizeof(struct bt_smp_public_key) },
 { smp_dhkey_check, sizeof(struct bt_smp_dhkey_check) },
};

static int bt_smp_recv(struct bt_l2cap_chan *chan, struct net_buf *buf)
{
 struct bt_smp *smp = ((struct bt_smp *)(((char *)(chan)) - 
# 4107 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     __builtin_offsetof (
# 4107 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     struct bt_smp
# 4107 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     , 
# 4107 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     chan
# 4107 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     )
# 4107 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     ));
 struct bt_smp_hdr *hdr;
 u8_t err;

 if (buf->len < sizeof(*hdr)) {
  printf("Too small SMP PDU received""\r\n");
  return 0;
 }

 hdr = net_buf_simple_pull_mem(&(buf)->b, sizeof(*hdr));
 ;






 if (atomic_test_bit(smp->flags, SMP_FLAG_TIMEOUT)) {
  printf("SMP command (code 0x%02x) received after timeout""\r\n", hdr->code)
             ;
  return 0;
 }

 if (hdr->code >= ((unsigned long) (((int) sizeof(char[1 - 2 * !(!__builtin_types_compatible_p(__typeof__(handlers), __typeof__(&(handlers)[0])))]) - 1) + (sizeof(handlers) / sizeof((handlers)[0])))) || !handlers[hdr->code].func) {
  printf("Unhandled SMP code 0x%02x""\r\n", hdr->code);
  smp_error(smp, 0x07);
  return 0;
 }

 if (!atomic_test_and_clear_bit(&smp->allowed_cmds, hdr->code)) {
  printf("Unexpected SMP code 0x%02x""\r\n", hdr->code);

  if (hdr->code != 0x05) {





   smp_error(smp, 0x08);

  }
  return 0;
 }

 if (buf->len != handlers[hdr->code].expect_len) {
  printf("Invalid len %u for code 0x%02x""\r\n", buf->len, hdr->code);
  smp_error(smp, 0x0a);
  return 0;
 }

 err = handlers[hdr->code].func(smp, buf);
 if (err) {
  smp_error(smp, err);
 }

 return 0;
}

static void bt_smp_pkey_ready(const u8_t *pkey)
{
 int i;

 ;

 sc_public_key = pkey;

 if (!pkey) {
  printf("Public key not available""\r\n");
  return;
 }

 k_sem_give(&sc_local_pkey_ready);

 for (i = 0; i < ((unsigned long) (((int) sizeof(char[1 - 2 * !(!__builtin_types_compatible_p(__typeof__(bt_smp_pool), __typeof__(&(bt_smp_pool)[0])))]) - 1) + (sizeof(bt_smp_pool) / sizeof((bt_smp_pool)[0])))); i++) {
  struct bt_smp *smp = &bt_smp_pool[i];
  u8_t err;

  if (!atomic_test_bit(smp->flags, SMP_FLAG_PKEY_SEND)) {
   continue;
  }

  if (1 &&
      smp->chan.chan.conn->role == 0x00) {
   err = sc_send_public_key(smp);
   if (err) {
    smp_error(smp, err);
   }

   atomic_set_bit(&smp->allowed_cmds,
           0x0c);
   continue;
  }


  err = smp_public_key_slave(smp);
  if (err) {
   smp_error(smp, err);
  }

 }
}

static void bt_smp_connected(struct bt_l2cap_chan *chan)
{
 struct bt_smp *smp = ((struct bt_smp *)(((char *)(chan)) - 
# 4211 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     __builtin_offsetof (
# 4211 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     struct bt_smp
# 4211 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     , 
# 4211 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     chan
# 4211 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     )
# 4211 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     ));


                                                                  ;

 k_delayed_work_init(&smp->work, smp_timeout);
 smp_reset(smp);
}

static void bt_smp_disconnected(struct bt_l2cap_chan *chan)
{
 struct bt_smp *smp = ((struct bt_smp *)(((char *)(chan)) - 
# 4222 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     __builtin_offsetof (
# 4222 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     struct bt_smp
# 4222 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     , 
# 4222 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     chan
# 4222 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     )
# 4222 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     ));
 struct bt_keys *keys = chan->conn->le.keys;


                                                                  ;

 k_delayed_work_cancel(&smp->work);


    if(smp->work.timer.timer.hdl)
        k_delayed_work_del_timer(&smp->work);

    if(chan->rtx_work.timer.timer.hdl)
        k_delayed_work_del_timer(&chan->rtx_work);


 if (keys) {




  if (!keys->keys || (!0 &&
      (keys->flags & BT_KEYS_DEBUG))) {
   bt_keys_clear(keys);
  }
 }

 (void)memset(smp, 0, sizeof(*smp));
}

static void bt_smp_encrypt_change(struct bt_l2cap_chan *chan,
      u8_t hci_status)
{
 struct bt_smp *smp = ((struct bt_smp *)(((char *)(chan)) - 
# 4255 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     __builtin_offsetof (
# 4255 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     struct bt_smp
# 4255 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     , 
# 4255 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     chan
# 4255 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     )
# 4255 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                     ));
 struct bt_conn *conn = chan->conn;


                                                            ;

 atomic_clear_bit(smp->flags, SMP_FLAG_ENC_PENDING);

 if (hci_status) {
  return;
 }

 if (!conn->encrypt) {
  return;
 }





 if (!atomic_test_bit(smp->flags, SMP_FLAG_PAIRING)) {
  smp_reset(smp);
  return;
 }


 if (atomic_test_bit(smp->flags, SMP_FLAG_SC)) {
  if ((smp->local_dist & 0x08) &&
      (smp->remote_dist & 0x08)) {




   atomic_set_bit(smp->flags, SMP_FLAG_DERIVE_LK);
  }




  smp->local_dist &= ~0x08;
  smp->remote_dist &= ~0x08;
 }

 if (smp->remote_dist & 0x01) {
  atomic_set_bit(&smp->allowed_cmds, 0x06);
 } else if (smp->remote_dist & 0x02) {
  atomic_set_bit(&smp->allowed_cmds, 0x08);
 } else if (smp->remote_dist & 0x04) {
  atomic_set_bit(&smp->allowed_cmds, 0x0a);
 }

 atomic_set_bit(smp->flags, SMP_FLAG_KEYS_DISTR);


 if (1 &&
     conn->role == 0x00 && smp->remote_dist) {
  return;
 }

 if (bt_smp_distribute_keys(smp)) {
  return;
 }


 if (!smp->local_dist && !smp->remote_dist) {
  smp_pairing_complete(smp, 0);
 }
}







static int smp_sign_buf(const u8_t *key, u8_t *msg, u16_t len)
{
 u8_t *m = msg;
 u32_t cnt = __extension__ ({ struct __attribute__((__packed__)) { __typeof__(*((u32_t *)&msg[len])) __v; } *__p = (__typeof__(__p)) ((u32_t *)&msg[len]); __p->__v; });
 u8_t *sig = msg + len;
 u8_t key_s[16], tmp[16];
 int err;


                        ;

 sys_mem_swap(m, len + sizeof(cnt));
 sys_memcpy_swap(key_s, key, 16);

 err = bt_smp_aes_cmac(key_s, m, len + sizeof(cnt), tmp);
 if (err) {
  printf("Data signing failed""\r\n");
  return err;
 }

 sys_mem_swap(tmp, sizeof(tmp));
 memcpy(tmp + 4, &cnt, sizeof(cnt));


 sys_mem_swap(m, len + sizeof(cnt));

 memcpy(sig, tmp + 4, 12);

 ;

 return 0;
}



int bt_smp_sign_verify(struct bt_conn *conn, struct net_buf *buf)
{
 struct bt_keys *keys;
 u8_t sig[12];
 u32_t cnt;
 int err;


 memcpy(sig, net_buf_simple_tail(&(buf)->b) - sizeof(sig), sizeof(sig));

 keys = bt_keys_find(BT_KEYS_REMOTE_CSRK, conn->id, &conn->le.dst);
 if (!keys) {
  printf("Unable to find Remote CSRK for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)))
                                       ;
  return -2;
 }


 cnt = (keys->remote_csrk.cnt);
 memcpy(net_buf_simple_tail(&(buf)->b) - sizeof(sig), &cnt, sizeof(cnt));


                                                                 ;

 err = smp_sign_buf(keys->remote_csrk.val, buf->data,
      buf->len - sizeof(sig));
 if (err) {
  printf("Unable to create signature for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)))
                                       ;
  return -5;
 };

 if (memcmp(sig, net_buf_simple_tail(&(buf)->b) - sizeof(sig), sizeof(sig))) {
  printf("Unable to verify signature for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)))
                                       ;
  return -77;
 };

 keys->remote_csrk.cnt++;

 return 0;
}

int bt_smp_sign(struct bt_conn *conn, struct net_buf *buf)
{
 struct bt_keys *keys;
 u32_t cnt;
 int err;

 keys = bt_keys_find(BT_KEYS_LOCAL_CSRK, conn->id, &conn->le.dst);
 if (!keys) {
  printf("Unable to find local CSRK for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)))
                                       ;
  return -2;
 }


 net_buf_simple_add(&(buf)->b, 12);


 cnt = (keys->local_csrk.cnt);
 memcpy(net_buf_simple_tail(&(buf)->b) - 12, &cnt, sizeof(cnt));


                                                               ;

 err = smp_sign_buf(keys->local_csrk.val, buf->data, buf->len - 12);
 if (err) {
  printf("Unable to create signature for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)))
                                       ;
  return -5;
 }

 keys->local_csrk.cnt++;

 return 0;
}
# 4853 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
static inline int smp_self_test(void)
{
 return 0;
}


int bt_smp_auth_passkey_entry(struct bt_conn *conn, unsigned int passkey)
{
 struct bt_smp *smp;
 u8_t err;

 smp = smp_chan_get(conn);
 if (!smp) {
  return -22;
 }

 if (!atomic_test_and_clear_bit(smp->flags, SMP_FLAG_USER)) {
  return -22;
 }


 if (!atomic_test_bit(smp->flags, SMP_FLAG_SC)) {
  legacy_passkey_entry(smp, passkey);
  return 0;
 }


 smp->passkey = (passkey);

 if (1 &&
     smp->chan.chan.conn->role == 0x00) {
  err = smp_send_pairing_confirm(smp);
  if (err) {
   smp_error(smp, 0x01);
   return 0;
  }
  atomic_set_bit(&smp->allowed_cmds, 0x03);
  return 0;
 }

 if (1 &&
     atomic_test_bit(smp->flags, SMP_FLAG_CFM_DELAYED)) {
  err = smp_send_pairing_confirm(smp);
  if (err) {
   smp_error(smp, 0x01);
   return 0;
  }
  atomic_set_bit(&smp->allowed_cmds, 0x04);
 }

 return 0;
}

int bt_smp_auth_passkey_confirm(struct bt_conn *conn)
{
 struct bt_smp *smp;

 smp = smp_chan_get(conn);
 if (!smp) {
  return -22;
 }

 if (!atomic_test_and_clear_bit(smp->flags, SMP_FLAG_USER)) {
  return -22;
 }


 if (atomic_test_bit(smp->flags, SMP_FLAG_DHKEY_PENDING)) {
  atomic_set_bit(smp->flags, SMP_FLAG_DHKEY_SEND);
  return 0;
 }


 if (atomic_test_bit(smp->flags, SMP_FLAG_DHCHECK_WAIT)) {
  atomic_set_bit(smp->flags, SMP_FLAG_DHKEY_SEND);
  return 0;
 }

 if (atomic_test_bit(smp->flags, SMP_FLAG_DHKEY_SEND)) {
  u8_t err;


  if (smp->chan.chan.conn->role == 0x00) {
   err = compute_and_send_master_dhcheck(smp);
   if (err) {
    smp_error(smp, err);
   }
   return 0;
  }



  err = compute_and_check_and_send_slave_dhcheck(smp);
  if (err) {
   smp_error(smp, err);
  }

 }

 return 0;
}

int bt_smp_le_oob_generate_sc_data(struct bt_le_oob_sc_data *le_sc_oob)
{
 int err;

 if (!sc_public_key) {
  err = k_sem_take(&sc_local_pkey_ready, -1);
  if (err) {
   return err;
  }
 }

 if (0) {
  u8_t rand_num[] = {
   0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08,
   0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08,
  };

  memcpy(le_sc_oob->r, rand_num, sizeof(le_sc_oob->r));
 } else {
  err = bt_rand(le_sc_oob->r, 16);
  if (err) {
   return err;
  }
 }

 err = smp_f4(sc_public_key, sc_public_key, le_sc_oob->r, 0,
       le_sc_oob->c);
 if (err) {
  return err;
 }

 return 0;
}

static 
# 4989 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
      _Bool 
# 4989 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           le_sc_oob_data_check(struct bt_smp *smp, 
# 4989 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                                                    _Bool 
# 4989 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                                                         oobd_local_present,
     
# 4990 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
    _Bool 
# 4990 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
         oobd_remote_present)
{
 
# 4992 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
_Bool 
# 4992 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
     req_oob_present = le_sc_oob_data_req_check(smp);
 
# 4993 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
_Bool 
# 4993 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
     rsp_oob_present = le_sc_oob_data_rsp_check(smp);

 if (1 &&
     smp->chan.chan.conn->role == 0x00) {
  if ((req_oob_present != oobd_remote_present) &&
      (rsp_oob_present != oobd_local_present)) {
   return 
# 4999 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
         0
# 4999 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
              ;
  }
 } else if (1) {
  if ((req_oob_present != oobd_local_present) &&
      (rsp_oob_present != oobd_remote_present)) {
   return 
# 5004 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
         0
# 5004 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
              ;
  }
 }

 return 
# 5008 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
       1
# 5008 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           ;
}

static int le_sc_oob_pairing_continue(struct bt_smp *smp)
{
 if (smp->oobd_remote) {
  int err;
  u8_t c[16];

  err = smp_f4(smp->pkey, smp->pkey, smp->oobd_remote->r, 0, c);
  if (err) {
   return err;
  }

  
# 5022 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
 _Bool 
# 5022 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
      match = (memcmp(c, smp->oobd_remote->c, sizeof(c)) == 0);

  if (!match) {
   smp_error(smp, 0x04);
   return 0;
  }
 }

 if (1 &&
     smp->chan.chan.conn->role == 0x00) {
  atomic_set_bit(&smp->allowed_cmds, 0x04);
 } else if (1) {
  atomic_set_bit(&smp->allowed_cmds, 0x0d);
  atomic_set_bit(smp->flags, SMP_FLAG_DHCHECK_WAIT);
 }

 return smp_send_pairing_random(smp);
}

int bt_smp_le_oob_set_sc_data(struct bt_conn *conn,
         const struct bt_le_oob_sc_data *oobd_local,
         const struct bt_le_oob_sc_data *oobd_remote)
{
 struct bt_smp *smp;

 smp = smp_chan_get(conn);
 if (!smp) {
  return -22;
 }

 if (!le_sc_oob_data_check(smp, (oobd_local != 
# 5052 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                                              ((void *)0)
# 5052 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                                                  ),
      (oobd_remote != 
# 5053 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
                     ((void *)0)
# 5053 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
                         ))) {
  return -22;
 }

 if (!atomic_test_and_clear_bit(smp->flags, SMP_FLAG_OOB_PENDING)) {
  return -22;
 }

 smp->oobd_local = oobd_local;
 smp->oobd_remote = oobd_remote;

 return le_sc_oob_pairing_continue(smp);
}

int bt_smp_le_oob_get_sc_data(struct bt_conn *conn,
         const struct bt_le_oob_sc_data **oobd_local,
         const struct bt_le_oob_sc_data **oobd_remote)
{
 struct bt_smp *smp;

 smp = smp_chan_get(conn);
 if (!smp) {
  return -22;
 }

 if (!smp->oobd_local && !smp->oobd_remote) {
  return -3;
 }

 if (oobd_local) {
  *oobd_local = smp->oobd_local;
 }

 if (oobd_remote) {
  *oobd_remote = smp->oobd_remote;
 }

 return 0;
}

int bt_smp_auth_cancel(struct bt_conn *conn)
{
 struct bt_smp *smp;

 smp = smp_chan_get(conn);
 if (!smp) {
  return -22;
 }

 if (!atomic_test_and_clear_bit(smp->flags, SMP_FLAG_USER)) {
  return -22;
 }

 switch (smp->method) {
 case PASSKEY_INPUT:
 case PASSKEY_DISPLAY:
  return smp_error(smp, 0x01);
 case PASSKEY_CONFIRM:
  return smp_error(smp, 0x04);
 case LE_SC_OOB:
  return smp_error(smp, 0x02);
 case JUST_WORKS:
  return smp_error(smp, 0x08);
 default:
  return 0;
 }
}


int bt_smp_auth_pairing_confirm(struct bt_conn *conn)
{
 struct bt_smp *smp;

 smp = smp_chan_get(conn);
 if (!smp) {
  return -22;
 }

 if (!atomic_test_and_clear_bit(smp->flags, SMP_FLAG_USER)) {
  return -22;
 }

 if (1 &&
     conn->role == BT_CONN_ROLE_MASTER) {
  if (!atomic_test_bit(smp->flags, SMP_FLAG_SC)) {
   atomic_set_bit(&smp->allowed_cmds,
           0x03);
   return legacy_send_pairing_confirm(smp);
  }

  if (!sc_public_key) {
   atomic_set_bit(smp->flags, SMP_FLAG_PKEY_SEND);
   return 0;
  }

  atomic_set_bit(&smp->allowed_cmds, 0x0c);
  return sc_send_public_key(smp);
 }


 if (!atomic_test_bit(smp->flags, SMP_FLAG_SC)) {
  atomic_set_bit(&smp->allowed_cmds,
          0x03);
  return send_pairing_rsp(smp);
 }

 atomic_set_bit(&smp->allowed_cmds, 0x0c);
 if (send_pairing_rsp(smp)) {
  return -5;
 }


 return 0;
}
# 5192 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
int bt_smp_start_security(struct bt_conn *conn)
{
 switch (conn->role) {

 case 0x00:
 {
  int err;
  struct bt_smp *smp;

  smp = smp_chan_get(conn);
  if (!smp) {
   return -57;
  }

  if (!smp_keys_check(conn)) {
   return smp_send_pairing_req(conn);
  }


  if (atomic_test_bit(smp->flags, SMP_FLAG_PAIRING)) {
   return -16;
  }


  if (atomic_test_bit(smp->flags, SMP_FLAG_ENC_PENDING)) {
   return -16;
  }


  err = bt_conn_le_start_encryption(conn,
        conn->le.keys->ltk.rand,
        conn->le.keys->ltk.ediv,
        conn->le.keys->ltk.val,
        conn->le.keys->enc_size);
  if (err) {
   return err;
  }

  atomic_set_bit(&smp->allowed_cmds, 0x0b);
  atomic_set_bit(smp->flags, SMP_FLAG_ENC_PENDING);
  return 0;
 }


 case 0x01:
  return smp_send_security_req(conn);

 default:
  return -22;
 }
}

void bt_smp_update_keys(struct bt_conn *conn)
{
 struct bt_smp *smp;

 smp = smp_chan_get(conn);
 if (!smp) {
  return;
 }

 if (!atomic_test_bit(smp->flags, SMP_FLAG_PAIRING)) {
  return;
 }





 if (conn->le.keys) {
  bt_keys_clear(conn->le.keys);
 }

 conn->le.keys = bt_keys_get_addr(conn->id, &conn->le.dst);
 if (!conn->le.keys) {
  printf("Unable to get keys for %s""\r\n", log_strdup(bt_addr_le_str_real(&conn->le.dst)))
                                       ;
  smp_error(smp, 0x08);
  return;
 }


 if (atomic_test_bit(smp->flags, SMP_FLAG_SC_DEBUG_KEY)) {
  conn->le.keys->flags |= BT_KEYS_DEBUG;
 }






 switch (smp->method) {
 case PASSKEY_DISPLAY:
 case PASSKEY_INPUT:
 case PASSKEY_CONFIRM:
 case LE_SC_OOB:
  conn->le.keys->flags |= BT_KEYS_AUTHENTICATED;
  break;
 case JUST_WORKS:
 default:

  conn->le.keys->flags &= ~BT_KEYS_AUTHENTICATED;
  break;
 }

 conn->le.keys->enc_size = get_encryption_key_size(smp);






 if (atomic_test_bit(smp->flags, SMP_FLAG_SC)) {
  conn->le.keys->flags |= BT_KEYS_SC;

  if (atomic_test_bit(smp->flags, SMP_FLAG_BOND)) {
   bt_keys_add_type(conn->le.keys, BT_KEYS_LTK_P256);
   memcpy(conn->le.keys->ltk.val, smp->tk,
          sizeof(conn->le.keys->ltk.val));
   (void)memset(conn->le.keys->ltk.rand, 0,
         sizeof(conn->le.keys->ltk.rand));
   (void)memset(conn->le.keys->ltk.ediv, 0,
         sizeof(conn->le.keys->ltk.ediv));
  }
 } else {
  conn->le.keys->flags &= ~BT_KEYS_SC;
 }
}

static int bt_smp_accept(struct bt_conn *conn, struct bt_l2cap_chan **chan)
{
 int i;
 static struct bt_l2cap_chan_ops ops = {
  .connected = bt_smp_connected,
  .disconnected = bt_smp_disconnected,
  .encrypt_change = bt_smp_encrypt_change,
  .recv = bt_smp_recv,
 };

 ;

 for (i = 0; i < ((unsigned long) (((int) sizeof(char[1 - 2 * !(!__builtin_types_compatible_p(__typeof__(bt_smp_pool), __typeof__(&(bt_smp_pool)[0])))]) - 1) + (sizeof(bt_smp_pool) / sizeof((bt_smp_pool)[0])))); i++) {
  struct bt_smp *smp = &bt_smp_pool[i];

  if (smp->chan.chan.conn) {
   continue;
  }

  smp->chan.chan.ops = &ops;

  *chan = &smp->chan.chan;

  return 0;
 }

 printf("No available SMP context for conn %p""\r\n", conn);

 return -12;
}

static 
# 5352 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3 4
      _Bool 
# 5352 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
           le_sc_supported(void)
{
# 5362 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
 return (bt_dev.supported_commands[34] & (1UL << (1))) &&
        (bt_dev.supported_commands[34] & (1UL << (2)));
}

const 
# 5366 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3
__attribute__((__aligned__(
# 5366 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
__alignof(struct bt_l2cap_fixed_chan)
# 5366 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c" 3
))) 
# 5366 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/host/smp.c"
struct bt_l2cap_fixed_chan smp_fixed_chan __attribute__((section("." "_bt_l2cap_fixed_chan" "." "static" "." "smp_fixed_chan"))) __attribute__((__used__)) = { .cid = 0x0006, .accept = bt_smp_accept, };





int bt_smp_init(void)
{






 static struct bt_pub_key_cb pub_key_cb = {
  .func = bt_smp_pkey_ready,
 };

    k_sem_init(&sc_local_pkey_ready, 0, 1);


 sc_supported = le_sc_supported();
 if (0 && !sc_supported) {
  printf("SC Pair Only Mode selected but LE SC not supported""\r\n");
  return -2;
 }





 ;

 bt_pub_key_gen(&pub_key_cb);

 return smp_self_test();
}
