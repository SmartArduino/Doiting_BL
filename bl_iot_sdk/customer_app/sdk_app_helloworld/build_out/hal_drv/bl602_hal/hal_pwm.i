# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/hal_drv//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
# 30 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h" 1
# 33 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
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
# 34 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h" 1
# 36 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 149 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int wchar_t;
# 37 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h" 2


# 38 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
struct utils_list_hdr
{
    struct utils_list_hdr *next;
};

struct utils_list
{

    struct utils_list_hdr *first;

    struct utils_list_hdr *last;
};
# 62 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_init(struct utils_list *list);
# 75 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_pool_init(struct utils_list *list, void *pool, size_t elmt_size, unsigned int elmt_cnt, void *default_value);
# 85 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_push_back(struct utils_list *list,
                       struct utils_list_hdr *list_hdr);
# 96 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_push_front(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 106 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
struct utils_list_hdr *utils_list_pop_front(struct utils_list *list);
# 119 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_extract(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 131 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
int utils_list_find(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 148 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_insert(struct utils_list * const list, struct utils_list_hdr * const element,
        int (*cmp)(struct utils_list_hdr const *elementA,
        struct utils_list_hdr const *elementB));
# 166 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_insert_after(struct utils_list * const list, struct utils_list_hdr * const prev_element, struct utils_list_hdr * const element);
# 182 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_insert_before(struct utils_list * const list, struct utils_list_hdr * const next_element, struct utils_list_hdr * const element);
# 194 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_concat(struct utils_list *list1, struct utils_list *list2);
# 210 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
void utils_list_remove(struct utils_list *list, struct utils_list_hdr *prev_element, struct utils_list_hdr *element);
# 220 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
static inline int utils_list_is_empty(const struct utils_list *const list)
{
    return (
# 222 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h" 3 4
           ((void *)0) 
# 222 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
                == list->first);
}
# 234 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
unsigned int utils_list_cnt(const struct utils_list *const list);
# 245 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
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
# 280 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
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
# 305 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
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
# 434 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
static inline int utils_dlist_entry_number(utils_dlist_t *queue)
{
 int num;
 utils_dlist_t *cur = queue;
 for (num=0;cur->next != queue;cur=cur->next, num++)
  ;

 return num;
}
# 462 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
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
# 571 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
static inline int utils_slist_entry_number(utils_slist_t *queue)
{
 int num;
    utils_slist_t *cur = queue;
    for (num=0;cur->next;cur=cur->next, num++)
  ;

    return num;
}
# 35 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h" 2





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
# 67 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_init(uint8_t id, int pin);
# 77 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_freq_update(uint8_t id, uint32_t freq);
# 87 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_freq_get(uint8_t id, uint32_t *p_freq);
# 98 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_duty_set(uint8_t id, uint32_t duty, uint32_t duration_ms);
# 108 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_duty_get(uint8_t id, uint32_t *p_duty);
# 117 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_stop(uint8_t id);
# 126 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
int hal_pwm_start(uint8_t id);

int32_t vfs_pwm_init(uint32_t fdt, uint32_t dtb_uart_offset);
# 31 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 2

# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/device/vfs_pwm.h" 1
# 12 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/device/vfs_pwm.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_inode.h" 1







# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdbool.h" 1 3 4
# 9 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_inode.h" 2

# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 1 3







# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 10 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 1 3
# 14 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_newlib_version.h" 1 3
# 15 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 2 3
# 11 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 1 3



# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 5 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/features.h" 1 3
# 6 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 12 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 9 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 2 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 1 3
# 10 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 11 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 45 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 1 3
# 41 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3

# 41 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 46 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3

# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 48 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 12 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 14 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 15 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 24 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 357 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 1 3
# 28 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


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
# 90 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
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
# 16 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 1 3
# 11 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
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
# 98 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
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
# 292 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
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
# 819 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 13 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3



# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 17 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3


# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/time.h" 1 3
# 20 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3
# 28 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 1 3
# 28 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;






# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 1 3
# 20 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 3
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
# 47 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3


# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 1 3





# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_endian.h" 1 3
# 7 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 2 3
# 50 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 1 3
# 14 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 1 3
# 41 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 15 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 1 3
# 35 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef __int_least64_t time_t;
# 52 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 1 3
# 38 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 1 3
# 45 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 2 3
# 58 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 34 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef unsigned long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 60 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3


int select (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 51 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3




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
# 119 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 157 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
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
# 220 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __int64_t sbintime_t;


# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 1 3
# 23 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 1 3
# 48 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
struct sched_param {
  int sched_priority;
# 61 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
};
# 24 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 2 3
# 32 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_t;
# 61 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
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
# 154 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 168 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
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
# 224 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/types.h" 1 3
# 225 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 29 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3



# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 33 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3




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


# 101 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
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
# 154 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
extern long _timezone;
extern int _daylight;


extern char *_tzname[2];
# 10 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 2 3
# 27 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 3
struct stat
{
  dev_t st_dev;
  ino_t st_ino;
  mode_t st_mode;
  nlink_t st_nlink;
  uid_t st_uid;
  gid_t st_gid;
  dev_t st_rdev;
  off_t st_size;
# 50 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 3
  time_t st_atime;
  long st_spare1;
  time_t st_mtime;
  long st_spare2;
  time_t st_ctime;
  long st_spare3;
  blksize_t st_blksize;
  blkcnt_t st_blocks;
  long st_spare4[2];


};
# 147 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 3
int chmod (const char *__path, mode_t __mode );
int fchmod (int __fd, mode_t __mode);
int fstat (int __fd, struct stat *__sbuf );
int mkdir (const char *_path, mode_t __mode );
int mkfifo (const char *__path, mode_t __mode );
int stat (const char *restrict __path, struct stat *restrict __sbuf );
mode_t umask (mode_t __mask );







int fchmodat (int, const char *, mode_t, int);
int fstatat (int, const char *restrict , struct stat *restrict, int);
int mkdirat (int, const char *, mode_t);
int mkfifoat (int, const char *, mode_t);
int mknodat (int, const char *, mode_t, dev_t);
int utimensat (int, const char *, const struct timespec *, int);


int futimens (int, const struct timespec *);
# 11 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_inode.h" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_conf.h" 1
# 12 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_inode.h" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_dir.h" 1




# 4 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_dir.h"
struct statfs {
    long f_type;
    long f_bsize;
    long f_blocks;
    long f_bfree;
    long f_bavail;
    long f_files;
    long f_ffree;
    long f_fsid;
    long f_namelen;
};

typedef struct {
    int d_ino;
    uint8_t d_type;
    char d_name[];
} aos_dirent_t;

typedef struct {
    int dd_vfs_fd;
    int dd_rsv;
} aos_dir_t;
# 13 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_inode.h" 2





enum {
    VFS_TYPE_NOT_INIT,
    VFS_TYPE_CHAR_DEV,
    VFS_TYPE_BLOCK_DEV,
    VFS_TYPE_FS_DEV
};
# 44 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_inode.h"
typedef const struct file_ops file_ops_t;
typedef const struct fs_ops fs_ops_t;

union inode_ops_t {
    const file_ops_t *i_ops;
    const fs_ops_t *i_fops;
};


typedef struct {
    union inode_ops_t ops;
    void *i_arg;
    char *i_name;
    int i_flags;
    uint8_t type;
    uint8_t refs;
} inode_t;

typedef struct {
    inode_t *node;
    void *f_arg;
    size_t offset;
} file_t;

struct pollfd;
typedef void (*poll_notify_t)(struct pollfd *fd, void *arg);
struct file_ops {
    int (*open) (inode_t *node, file_t *fp);
    int (*close) (file_t *fp);
    ssize_t (*read) (file_t *fp, void *buf, size_t nbytes);
    ssize_t (*write) (file_t *fp, const void *buf, size_t nbytes);
    int (*ioctl) (file_t *fp, int cmd, unsigned long arg);

    int (*poll) (file_t *fp, 
# 77 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_inode.h" 3 4
                                 _Bool 
# 77 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_inode.h"
                                      flag, poll_notify_t notify, struct pollfd *fd, void *arg);

    int (*sync) (file_t *fp);
};

struct fs_ops {
    int (*open) (file_t *fp, const char *path, int flags);
    int (*close) (file_t *fp);
    ssize_t (*read) (file_t *fp, char *buf, size_t len);
    ssize_t (*write) (file_t *fp, const char *buf, size_t len);
    off_t (*lseek) (file_t *fp, off_t off, int whence);
    int (*sync) (file_t *fp);
    int (*stat) (file_t *fp, const char *path, struct stat *st);
    int (*unlink) (file_t *fp, const char *path);
    int (*rename) (file_t *fp, const char *oldpath, const char *newpath);
    aos_dir_t *(*opendir) (file_t *fp, const char *path);
    aos_dirent_t *(*readdir) (file_t *fp, aos_dir_t *dir);
    int (*closedir) (file_t *fp, aos_dir_t *dir);
    int (*mkdir) (file_t *fp, const char *path);
    int (*rmdir) (file_t *fp, const char *path);
    void (*rewinddir)(file_t *fp, aos_dir_t *dir);
    long (*telldir) (file_t *fp, aos_dir_t *dir);
    void (*seekdir) (file_t *fp, aos_dir_t *dir, long loc);
    int (*ioctl) (file_t *fp, int cmd, unsigned long arg);
    int (*statfs) (file_t *fp, const char *path, struct statfs *suf);
    int (*access) (file_t *fp, const char *path, int amode);
};

int inode_init(void);
int inode_alloc(void);
int inode_del(inode_t *node);
inode_t *inode_open(const char *path);
int inode_ptr_get(int fd, inode_t **node);
int inode_avail_count(void);
void inode_ref(inode_t *);
void inode_unref(inode_t *);
int inode_busy(inode_t *);
int inode_reserve(const char *path, inode_t **inode);
int inode_release(const char *path);
int inode_forearch_name(int (*cb)(void *arg, inode_t *node), void *arg);
# 13 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/device/vfs_pwm.h" 2
# 21 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/device/vfs_pwm.h"
extern const struct file_ops pwm_ops;
# 30 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/device/vfs_pwm.h"
int vfs_pwm_open(inode_t *inode, file_t *fp);
# 39 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/device/vfs_pwm.h"
int vfs_pwm_close(file_t *fp);
# 50 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/device/vfs_pwm.h"
int vfs_pwm_ioctl(file_t *fp, int cmd, unsigned long arg);
# 33 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_err.h" 1
# 12 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_err.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/errno.h" 1 3





# 5 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/errno.h" 3
typedef int error_t;



# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/errno.h" 1 3
# 15 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/errno.h" 3
extern int *__errno (void);




extern const char * const _sys_errlist[];
extern int _sys_nerr;
# 10 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/errno.h" 2 3
# 13 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_err.h" 2
# 34 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_register.h" 1
# 14 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_register.h"

# 14 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/vfs_register.h"
int aos_register_driver(const char *path, file_ops_t *fops, void *arg);
int aos_unregister_driver(const char *path);

int aos_register_fs(const char *path, fs_ops_t *fops, void *arg);
int aos_unregister_fs(const char *path);
# 35 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/hal/soc/pwm.h" 1







typedef struct {
    float duty_cycle;
    uint32_t freq;
} pwm_config_t;

typedef struct {
    uint8_t port;
    pwm_config_t config;
    void *priv;
} pwm_dev_t;
# 27 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/hal/soc/pwm.h"
int32_t hal_pwm_init_bydev(pwm_dev_t *pwm);
# 36 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/hal/soc/pwm.h"
int32_t hal_pwm_start_bydev(pwm_dev_t *pwm);
# 45 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/hal/soc/pwm.h"
int32_t hal_pwm_stop_bydev(pwm_dev_t *pwm);
# 55 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/fs/vfs/include/hal/soc/pwm.h"
int32_t hal_pwm_para_chg_bydev(pwm_dev_t *pwm, pwm_config_t para);

int32_t hal_pwm_set_duty_bydev(pwm_dev_t *pwm, float duty);
int32_t hal_pwm_set_freq_bydev(pwm_dev_t *pwm, uint32_t freq);







int32_t hal_pwm_finalize_bydev(pwm_dev_t *pwm);
# 36 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h" 1







# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 9 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h" 2
# 22 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    typedef struct
    {
        void *hdl;
    } aos_hdl_t;

    typedef aos_hdl_t aos_task_t;
    typedef aos_hdl_t aos_mutex_t;
    typedef aos_hdl_t aos_sem_t;
    typedef aos_hdl_t aos_queue_t;
    typedef aos_hdl_t aos_timer_t;
    typedef aos_hdl_t aos_work_t;

    typedef struct
    {
        void *hdl;
        void *stk;
    } aos_workqueue_t;

    typedef unsigned int aos_task_key_t;




    void aos_reboot(void);






    int aos_get_hz(void);






    const char *aos_version_get(void);
# 71 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_task_new(const char *name, void (*fn)(void *), void *arg,
                     int stack_size);
# 89 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_task_new_ext(aos_task_t *task, const char *name, void (*fn)(void *),
                         void *arg, int stack_size, int prio);






    void aos_task_exit(int code);






    const char *aos_task_name(void);
# 113 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_task_key_create(aos_task_key_t *key);






    void aos_task_key_delete(aos_task_key_t key);
# 130 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_task_setspecific(aos_task_key_t key, void *vp);






    void *aos_task_getspecific(aos_task_key_t key);
# 148 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_new(aos_mutex_t *mutex);







    void aos_mutex_free(aos_mutex_t *mutex);
# 167 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_lock(aos_mutex_t *mutex, unsigned int timeout);
# 177 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_unlock(aos_mutex_t *mutex);
# 186 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_is_valid(aos_mutex_t *mutex);
# 197 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_sem_new(aos_sem_t *sem, int count);







    void aos_sem_free(aos_sem_t *sem);
# 216 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_sem_wait(aos_sem_t *sem, unsigned int timeout);







    void aos_sem_signal(aos_sem_t *sem);
# 233 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_sem_is_valid(aos_sem_t *sem);







    void aos_sem_signal_all(aos_sem_t *sem);
# 254 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_new(aos_queue_t *queue, void *buf, unsigned int size,
                      int max_msg);






    void aos_queue_free(aos_queue_t *queue);
# 273 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_send(aos_queue_t *queue, void *msg, unsigned int size);
# 285 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_recv(aos_queue_t *queue, unsigned int ms, void *msg,
                       unsigned int *size);
# 295 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_is_valid(aos_queue_t *queue);
# 304 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    void *aos_queue_buf_ptr(aos_queue_t *queue);
# 317 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_new(aos_timer_t *timer, void (*fn)(void *, void *), void *arg,
                      int ms, int repeat);
# 332 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_new_ext(aos_timer_t *timer, void (*fn)(void *, void *),
                          void *arg, int ms, int repeat,
                          unsigned char auto_run);






    void aos_timer_free(aos_timer_t *timer);
# 350 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_start(aos_timer_t *timer);
# 359 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_stop(aos_timer_t *timer);
# 369 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_change(aos_timer_t *timer, int ms);
# 380 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_workqueue_create(aos_workqueue_t *workqueue, int pri,
                             int stack_size);
# 393 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_work_init(aos_work_t *work, void (*fn)(void *), void *arg, int dly);






    void aos_work_destroy(aos_work_t *work);
# 410 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_work_run(aos_workqueue_t *workqueue, aos_work_t *work);
# 419 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_work_sched(aos_work_t *work);
# 428 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    int aos_work_cancel(aos_work_t *work);
# 438 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    void *aos_realloc(void *mem, unsigned int size);
# 447 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    void *aos_malloc(unsigned int size);
# 457 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    void *aos_calloc(unsigned int nitems, unsigned int size);
# 466 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    void *aos_zalloc(unsigned int size);







    void aos_alloc_trace(void *addr, size_t allocator);






    void aos_free(void *mem);






    long long aos_now(void);






    long long aos_now_ms(void);
# 512 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
    char *aos_now_time_str(char *buffer, const int len);






    void aos_msleep(int ms);




    void aos_init(void);




    void aos_start(void);
# 37 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 2

# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/bl_pwm.h" 1
# 33 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/bl_pwm.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h" 1
# 39 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/pwm_reg.h" 1
# 39 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/pwm_reg.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 1
# 64 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
typedef enum
{
# 79 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
  MSOFT_IRQn =3,
  MTIME_IRQn =7,
  MEXT_IRQn =11,
  CLIC_SOFT_PEND_IRQn =12,


  BMX_ERR_IRQn = 16 +0,
  BMX_TO_IRQn = 16 +1,
  L1C_BMX_ERR_IRQn = 16 +2,
  L1C_BMX_TO_IRQn = 16 +3,
  SEC_BMX_ERR_IRQn = 16 +4,
  RF_TOP_INT0_IRQn = 16 +5,
  RF_TOP_INT1_IRQn = 16 +6,
  SDIO_IRQn = 16 +7,
  DMA_BMX_ERR_IRQn = 16 +8,
  SEC_GMAC_IRQn = 16 +9,
  SEC_CDET_IRQn = 16 +10,
  SEC_PKA_IRQn = 16 +11,
  SEC_TRNG_IRQn = 16 +12,
  SEC_AES_IRQn = 16 +13,
  SEC_SHA_IRQn = 16 +14,
  DMA_ALL_IRQn = 16 +15,
  RESERVED0 = 16 +16,
  RESERVED1 = 16 +17,
  RESERVED2 = 16 +18,
  IRTX_IRQn = 16 +19,
  IRRX_IRQn = 16 +20,
  RESERVED3 = 16 +21,
  RESERVED4 = 16 +22,
  SF_CTRL_IRQn = 16 +23,
  RESERVED5 = 16 +24,
  GPADC_DMA_IRQn = 16 +25,
  EFUSE_IRQn = 16 +26,
  SPI_IRQn = 16 +27,
  RESERVED6 = 16 +28,
  UART0_IRQn = 16 +29,
  UART1_IRQn = 16 +30,
  RESERVED7 = 16 +31,
  I2C_IRQn = 16 +32,
  RESERVED8 = 16 +33,
  PWM_IRQn = 16 +34,
  RESERVED9 = 16 +35,
  TIMER_CH0_IRQn = 16 +36,
  TIMER_CH1_IRQn = 16 +37,
  TIMER_WDT_IRQn = 16 +38,
  RESERVED10 = 16 +39,
  RESERVED11 = 16 +40,
  RESERVED12 = 16 +41,
  RESERVED13 = 16 +42,
  RESERVED14 = 16 +43,
  GPIO_INT0_IRQn = 16 +44,
  RESERVED16 = 16 +45,
  RESERVED17 = 16 +46,
  RESERVED18 = 16 +47,
  RESERVED19 = 16 +48,
  RESERVED20 = 16 +49,
  PDS_WAKEUP_IRQn = 16 +50,
  HBN_OUT0_IRQn = 16 +51,
  HBN_OUT1_IRQn = 16 +52,
  BOR_IRQn = 16 +53,
  WIFI_IRQn = 16 +54,
  BZ_PHY_IRQn = 16 +55,
  BLE_IRQn = 16 +56,
  MAC_TXRX_TIMER_IRQn = 16 +57,
  MAC_TXRX_MISC_IRQn = 16 +58,
  MAC_RX_TRG_IRQn = 16 +59,
  MAC_TX_TRG_IRQn = 16 +60,
  MAC_GEN_IRQn = 16 +61,
  MAC_PORT_TRG_IRQn = 16 +62,
  WIFI_IPC_PUBLIC_IRQn = 16 +63,
  IRQn_LAST,
} IRQn_Type;
# 211 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
typedef enum
{
  BL_AHB_MASTER_CPU = 0,
  BL_AHB_MASTER_AP2NP,
  BL_AHB_MASTER_EMAC,
  BL_AHB_MASTER_SEC0,
  BL_AHB_MASTER_DMA,
  BL_AHB_MASTER_606,
  BL_AHB_MASTER_SEC1,
  BL_AHB_MASTER_154,
  BL_AHB_MASTER_CCI,
}BL_AHB_Master_Type;

typedef enum
{
  BL_AHB_SLAVE0_S2F = 0,
  BL_AHB_SLAVE0_MAX,
}BL_AHB_Slave0_Type;

typedef enum
{
  BL_AHB_SLAVE1_GLB = 0x00,
  BL_AHB_SLAVE1_RF = 0x01,
  BL_AHB_SLAVE1_GPIP = 0x02,
  BL_AHB_SLAVE1_DBG = 0x03,
  BL_AHB_SLAVE1_SEC = 0x04,
  BL_AHB_SLAVE1_TZ1 = 0x05,
  BL_AHB_SLAVE1_TZ2 = 0x06,
  BL_AHB_SLAVE1_EFUSE = 0x07,
  BL_AHB_SLAVE1_CCI = 0x08,
  BL_AHB_SLAVE1_L1C = 0x09,

  BL_AHB_SLAVE1_SFC = 0x0B,
  BL_AHB_SLAVE1_DMA = 0x0C,
  BL_AHB_SLAVE1_SDU = 0x0D,
  BL_AHB_SLAVE1_PDSHBN = 0x0E,
  BL_AHB_SLAVE1_WRAM = 0x0F,

  BL_AHB_SLAVE1_UART0 = 0x10,
  BL_AHB_SLAVE1_UART1 = 0x11,
  BL_AHB_SLAVE1_SPI = 0x12,
  BL_AHB_SLAVE1_I2C = 0x13,
  BL_AHB_SLAVE1_PWM = 0x14,
  BL_AHB_SLAVE1_TMR = 0x15,
  BL_AHB_SLAVE1_IRR = 0x16,
  BL_AHB_SLAVE1_CKS =0x17,

  BL_AHB_SLAVE1_MAX =0x18,

}BL_AHB_Slave1_Type;

typedef enum
{
  BL_AHB_SEC_ENG_AES0 = 0,
  BL_AHB_SEC_ENG_AES1,
  BL_AHB_SEC_ENG_SHA0,
  BL_AHB_SEC_ENG_SHA1,
}BL_AHB_Sec_Eng_Type;

typedef enum
{
  BL_AHB_DMA0_CH0 = 0,
  BL_AHB_DMA0_CH1,
  BL_AHB_DMA0_CH2,
  BL_AHB_DMA0_CH3,
  BL_AHB_DMA0_CH4,
}BL_AHB_DMA0_CHNL_Type;

typedef enum
{
  BL_AHB_SLAVE2_WIFI_CFG = 0,
  BL_AHB_SLAVE2_MAX,
}BL_AHB_Slave2_Type;

typedef enum
{
  BL_AHB_SLAVE3_BLE = 0,
  BL_AHB_SLAVE3_MAX,
}BL_AHB_Slave3_Type;

typedef enum
{
  BL_CORE_MASTER_IBUS_CPU = 0,
  BL_CORE_MASTER_DBUS_CPU,
  BL_CORE_MASTER_BUS_S2F,
  BL_CORE_MASTER_MAX,
}BL_Core_Master_Type;

typedef enum
{
  BL_CORE_SLAVE0_DTCM_CPU = 0,
  BL_CORE_SLAVE0_MAX,
}BL_Core_Slave0_Type;

typedef enum
{
  BL_CORE_SLAVE1_XIP_CPU = 0,
  BL_CORE_SLAVE1_ITCM_CPU,
  BL_CORE_SLAVE1_ROM,
  BL_CORE_SLAVE1_MAX,
}BL_Core_Slave1_Type;

typedef enum
{
  BL_CORE_SLAVE2_F2S = 0,
  BL_CORE_SLAVE2_MAX,
}BL_Core_Slave2_Type;





# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h" 1







extern uint32_t SystemCoreClock;

extern void SystemCoreClockUpdate (void);
extern void SystemInit (void);
extern void System_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority);
extern void Systick_Stop(void);
extern void Systick_Start(void);
# 324 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 336 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
# 87 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
__attribute__( ( always_inline ) ) static inline void __enable_irq(void)
{
  __asm volatile ("csrsi mstatus, 8");
}

__attribute__( ( always_inline ) ) static inline void __disable_irq(void)
{
  __asm volatile ("csrci mstatus, 8");
}

__attribute__((always_inline)) static inline uint32_t __REV(uint32_t value)
{

    uint32_t res = 0;

    res = (value << 24) | (value >> 24);
    res &= 0xFF0000FF;
    res |= ((value >> 8) & 0x0000FF00) | ((value << 8) & 0x00FF0000);

    return res;
}

__attribute__((always_inline)) static inline uint32_t __REV16(uint32_t value)
{
  return __builtin_bswap16(value);
}

extern void clic_enable_interrupt (uint32_t source);
extern void clic_disable_interrupt ( uint32_t source);
extern void clic_set_pending(uint32_t source);
extern void clic_clear_pending(uint32_t source);
# 337 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/clic.h" 1
# 338 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/riscv_encoding.h" 1
# 339 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 40 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/pwm_reg.h" 2
# 470 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/pwm_reg.h"
struct pwm_reg {

    union {
        struct {
            uint32_t pwm_interrupt_sts : 6;
            uint32_t reserved_6_7 : 2;
            uint32_t pwm_int_clear : 6;
            uint32_t reserved_14_31 : 18;
        }BF;
        uint32_t WORD;
    } pwm_int_config;


    uint8_t RESERVED0x4[28];


    union {
        struct {
            uint32_t pwm_clk_div : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm0_clkdiv;


    union {
        struct {
            uint32_t pwm_thre1 : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm0_thre1;


    union {
        struct {
            uint32_t pwm_thre2 : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm0_thre2;


    union {
        struct {
            uint32_t pwm_period : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm0_period;


    union {
        struct {
            uint32_t reg_clk_sel : 2;
            uint32_t pwm_out_inv : 1;
            uint32_t pwm_stop_mode : 1;
            uint32_t pwm_sw_force_val : 1;
            uint32_t pwm_sw_mode : 1;
            uint32_t pwm_stop_en : 1;
            uint32_t pwm_sts_top : 1;
            uint32_t reserved_8_31 : 24;
        }BF;
        uint32_t WORD;
    } pwm0_config;


    union {
        struct {
            uint32_t pwm_int_period_cnt : 16;
            uint32_t pwm_int_enable : 1;
            uint32_t reserved_17_31 : 15;
        }BF;
        uint32_t WORD;
    } pwm0_interrupt;


    uint8_t RESERVED0x38[8];


    union {
        struct {
            uint32_t pwm_clk_div : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm1_clkdiv;


    union {
        struct {
            uint32_t pwm_thre1 : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm1_thre1;


    union {
        struct {
            uint32_t pwm_thre2 : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm1_thre2;


    union {
        struct {
            uint32_t pwm_period : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm1_period;


    union {
        struct {
            uint32_t reg_clk_sel : 2;
            uint32_t pwm_out_inv : 1;
            uint32_t pwm_stop_mode : 1;
            uint32_t pwm_sw_force_val : 1;
            uint32_t pwm_sw_mode : 1;
            uint32_t pwm_stop_en : 1;
            uint32_t pwm_sts_top : 1;
            uint32_t reserved_8_31 : 24;
        }BF;
        uint32_t WORD;
    } pwm1_config;


    union {
        struct {
            uint32_t pwm_int_period_cnt : 16;
            uint32_t pwm_int_enable : 1;
            uint32_t reserved_17_31 : 15;
        }BF;
        uint32_t WORD;
    } pwm1_interrupt;


    uint8_t RESERVED0x58[8];


    union {
        struct {
            uint32_t pwm_clk_div : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm2_clkdiv;


    union {
        struct {
            uint32_t pwm_thre1 : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm2_thre1;


    union {
        struct {
            uint32_t pwm_thre2 : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm2_thre2;


    union {
        struct {
            uint32_t pwm_period : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm2_period;


    union {
        struct {
            uint32_t reg_clk_sel : 2;
            uint32_t pwm_out_inv : 1;
            uint32_t pwm_stop_mode : 1;
            uint32_t pwm_sw_force_val : 1;
            uint32_t pwm_sw_mode : 1;
            uint32_t pwm_stop_en : 1;
            uint32_t pwm_sts_top : 1;
            uint32_t reserved_8_31 : 24;
        }BF;
        uint32_t WORD;
    } pwm2_config;


    union {
        struct {
            uint32_t pwm_int_period_cnt : 16;
            uint32_t pwm_int_enable : 1;
            uint32_t reserved_17_31 : 15;
        }BF;
        uint32_t WORD;
    } pwm2_interrupt;


    uint8_t RESERVED0x78[8];


    union {
        struct {
            uint32_t pwm_clk_div : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm3_clkdiv;


    union {
        struct {
            uint32_t pwm_thre1 : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm3_thre1;


    union {
        struct {
            uint32_t pwm_thre2 : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm3_thre2;


    union {
        struct {
            uint32_t pwm_period : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm3_period;


    union {
        struct {
            uint32_t reg_clk_sel : 2;
            uint32_t pwm_out_inv : 1;
            uint32_t pwm_stop_mode : 1;
            uint32_t pwm_sw_force_val : 1;
            uint32_t pwm_sw_mode : 1;
            uint32_t pwm_stop_en : 1;
            uint32_t pwm_sts_top : 1;
            uint32_t reserved_8_31 : 24;
        }BF;
        uint32_t WORD;
    } pwm3_config;


    union {
        struct {
            uint32_t pwm_int_period_cnt : 16;
            uint32_t pwm_int_enable : 1;
            uint32_t reserved_17_31 : 15;
        }BF;
        uint32_t WORD;
    } pwm3_interrupt;


    uint8_t RESERVED0x98[8];


    union {
        struct {
            uint32_t pwm_clk_div : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm4_clkdiv;


    union {
        struct {
            uint32_t pwm_thre1 : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm4_thre1;


    union {
        struct {
            uint32_t pwm_thre2 : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm4_thre2;


    union {
        struct {
            uint32_t pwm_period : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm4_period;


    union {
        struct {
            uint32_t reg_clk_sel : 2;
            uint32_t pwm_out_inv : 1;
            uint32_t pwm_stop_mode : 1;
            uint32_t pwm_sw_force_val : 1;
            uint32_t pwm_sw_mode : 1;
            uint32_t pwm_stop_en : 1;
            uint32_t pwm_sts_top : 1;
            uint32_t reserved_8_31 : 24;
        }BF;
        uint32_t WORD;
    } pwm4_config;


    union {
        struct {
            uint32_t pwm_int_period_cnt : 16;
            uint32_t pwm_int_enable : 1;
            uint32_t reserved_17_31 : 15;
        }BF;
        uint32_t WORD;
    } pwm4_interrupt;

};

typedef volatile struct pwm_reg pwm_reg_t;
# 893 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/pwm_reg.h"
struct pwm_channel_reg {

    union {
        struct {
            uint32_t pwm_clk_div : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm_clkdiv;


    union {
        struct {
            uint32_t pwm_thre1 : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm_thre1;


    union {
        struct {
            uint32_t pwm_thre2 : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm_thre2;


    union {
        struct {
            uint32_t pwm_period : 16;
            uint32_t reserved_16_31 : 16;
        }BF;
        uint32_t WORD;
    } pwm_period;


    union {
        struct {
            uint32_t reg_clk_sel : 2;
            uint32_t pwm_out_inv : 1;
            uint32_t pwm_stop_mode : 1;
            uint32_t pwm_sw_force_val : 1;
            uint32_t pwm_sw_mode : 1;
            uint32_t pwm_stop_en : 1;
            uint32_t pwm_sts_top : 1;
            uint32_t reserved_8_31 : 24;
        }BF;
        uint32_t WORD;
    } pwm_config;


    union {
        struct {
            uint32_t pwm_int_period_cnt : 16;
            uint32_t pwm_int_enable : 1;
            uint32_t reserved_17_31 : 15;
        }BF;
        uint32_t WORD;
    } pwm_interrupt;

};

typedef volatile struct pwm_channel_reg pwm_channel_reg_t;
# 40 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 1



# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 1
# 5 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 1




# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 36 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 37 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3



# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 1 3 4
# 40 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 3 4

# 40 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 63 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3



typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stdio.h" 1 3
# 80 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 181 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 257 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 284 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 339 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 374 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 396 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 577 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 601 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 687 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
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
# 797 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3

# 6 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 2

# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 17 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 18 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3






# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 1 3
# 44 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3


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


# 25 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




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
# 76 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);






char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);
# 100 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
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
# 175 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 1 3
# 15 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 8 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 2





# 12 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
void * pvPortMalloc( size_t xWantedSize );
void* pvPortRealloc(void* ptr, size_t newsize);
void* pvPortCalloc(size_t numElements, size_t sizeOfElement);
void vPortFree( void *pv );






void bflb_platform_init(uint32_t baudrate);
void bflb_platform_deinit(void);
void bflb_platform_printf(char *fmt,...);
void bflb_platform_dump(const void *data,uint32_t len);
void bflb_platform_prints(char *data);
void bflb_platform_printx(uint32_t val);
void bflb_platform_printc(char c);
void bflb_platform_print_set(uint8_t logDisable);
int bflb_platform_get_random(uint8_t *data,uint32_t len);
int bflb_platform_get_input(uint8_t *data,uint32_t maxLen);

void bflb_platform_clear_time(void);
uint32_t bflb_platform_get_systick_int_cnt(void);
uint64_t bflb_platform_get_time_ms();
void bflb_platform_start_time(void);
void bflb_platform_stop_time(void);
void bflb_platform_set_alarm_time(uint64_t time);
void bflb_platform_init_time(void);
void bflb_platform_deinit_time(void);
void bflb_platform_delay_ms(uint32_t time);
uint32_t bflb_platform_get_log(uint8_t *data,uint32_t maxlen);
# 6 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 2
# 22 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
typedef enum
{
  SUCCESS = 0,
  ERROR = 1,
  TIMEOUT = 2,
}BL_Err_Type;




typedef enum
{
  DISABLE = 0,
  ENABLE = 1,
}BL_Fun_Type;




typedef enum
{
  RESET = 0,
  SET = 1,
}BL_Sts_Type;




typedef enum
{
  UNMASK = 0,
  MASK = 1
}BL_Mask_Type;
# 106 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
typedef enum
{
  LOGIC_LO = 0,
  LOGIC_HI = !LOGIC_LO
}LogicalStatus;




typedef enum
{
  DEACTIVE = 0,
  ACTIVE = !DEACTIVE
}ActiveStatus;




typedef void (intCallback_Type)(void);







extern intCallback_Type ** intCbfArra[];
void Install_Int_Callback(IRQn_Type intPeriph, uint32_t intType, intCallback_Type * cbFun);

void ASM_Delay_Us(uint32_t core,uint32_t cnt);
void BL602_Delay_US(uint32_t cnt);
void BL602_Delay_MS(uint32_t cnt);
void *BL602_MemCpy(void *dst, const void *src, uint32_t n);
uint32_t *BL602_MemCpy4(uint32_t *dst, const uint32_t *src, uint32_t n);
void *BL602_MemCpy_Fast(void *pdst, const void *psrc, uint32_t n);
void* BL602_MemSet(void *s, uint8_t c, uint32_t n);
uint32_t *BL602_MemSet4(uint32_t *dst, const uint32_t val, uint32_t n);
int BL602_MemCmp(const void *s1, const void *s2, uint32_t n);
# 41 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h" 2
# 57 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h"
typedef enum {
    PWM_CH0 = 0,
    PWM_CH1,
    PWM_CH2,
    PWM_CH3,
    PWM_CH4,
    PWM_CH_MAX,
}PWM_CH_ID_Type;




typedef enum {
    PWM_CLK_XCLK = 0,
    PWM_CLK_BCLK,
    PWM_CLK_32K,
}PWM_Clk_Type;




typedef enum {
    PWM_STOP_ABRUPT = 0,
    PWM_STOP_GRACEFUL,
}PWM_Stop_Mode_Type;




typedef enum {
    PWM_POL_NORMAL = 0,
    PWM_POL_INVERT,
}PWM_Polarity_Type;




typedef enum {
    PWM_INT_PULSE_CNT = 0,
    PWM_INT_ALL,
}PWM_INT_Type;




typedef struct {
    PWM_CH_ID_Type ch;
    PWM_Clk_Type clk;
    PWM_Stop_Mode_Type stopMode;
    PWM_Polarity_Type pol;
    uint16_t clkDiv;
    uint16_t period;
    uint16_t threshold1;
    uint16_t threshold2;
    uint16_t intPulseCnt;
}PWM_CH_CFG_Type;
# 174 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h"
BL_Err_Type PWM_Channel_Init(PWM_CH_CFG_Type *chCfg);
void PWM_Channel_Update(uint8_t ch, uint16_t period, uint16_t threshold1, uint16_t threshold2);
void PWM_Channel_Set_Div(uint8_t ch, uint16_t div);
void PWM_Channel_Set_Threshold1(uint8_t ch, uint16_t threshold1);
void PWM_Channel_Set_Threshold2(uint8_t ch, uint16_t threshold2);
void PWM_Channel_Set_Period(uint8_t ch, uint16_t period);
void PWM_Channel_Get(uint8_t ch, uint16_t *period, uint16_t *threshold1, uint16_t *threshold2);
void PWM_IntMask(uint8_t ch,PWM_INT_Type intType, BL_Mask_Type intMask);
void PWM_Channel_Enable(uint8_t ch);
void PWM_Channel_Disable(uint8_t ch);
void PWM_Int_Callback_Install(uint32_t intType,intCallback_Type* cbFun);
# 34 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/bl_pwm.h" 2





int32_t bl_pwm_init(uint8_t id, uint8_t pin, uint32_t freq);
int32_t bl_pwm_start(uint8_t id);
int32_t bl_pwm_stop(uint8_t id);
int32_t bl_pwm_set_freq(uint8_t id, uint32_t freq);
int32_t bl_pwm_set_duty(uint8_t id, float duty);
int32_t bl_pwm_get_duty(uint8_t id, float *p_duty);
# 39 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h" 1
# 83 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt_env.h" 1
# 84 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 85 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt_env.h" 2

# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 1 3
# 10 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 11 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3





# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 17 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3



# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/stdlib.h" 1 3
# 21 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3

# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/alloca.h" 1 3
# 23 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3
# 33 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3



# 35 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
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
# 191 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
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
# 224 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
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
# 312 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
void qsort_r (void *__base, size_t __nmemb, size_t __size, void *__thunk, int (*_compar)(void *, const void *, const void *))
             __asm__ ("" "__bsd_qsort_r");
# 322 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 339 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3

# 87 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt_env.h" 2

# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/limits.h" 1 3 4
# 34 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/limits.h" 3 4
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/syslimits.h" 1 3 4






# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/limits.h" 1 3 4
# 194 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/limits.h" 3 4
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/limits.h" 1 3 4





# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/syslimits.h" 1 3 4
# 7 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/limits.h" 2 3 4
# 195 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/limits.h" 2 3 4
# 8 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/syslimits.h" 2 3 4
# 35 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include-fixed/limits.h" 2 3 4
# 89 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt_env.h" 2
# 98 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"

# 98 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"
typedef uint16_t fdt16_t;
typedef uint32_t fdt32_t;
typedef uint64_t fdt64_t;
# 111 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"
static inline uint16_t fdt16_to_cpu(fdt16_t x)
{
    return ( uint16_t)((((unsigned long long)((uint8_t *)&x)[0]) << 8) | ((unsigned long long)((uint8_t *)&x)[1]));
}
static inline fdt16_t cpu_to_fdt16(uint16_t x)
{
    return ( fdt16_t)((((unsigned long long)((uint8_t *)&x)[0]) << 8) | ((unsigned long long)((uint8_t *)&x)[1]));
}

static inline uint32_t fdt32_to_cpu(fdt32_t x)
{
    return ( uint32_t)((((unsigned long long)((uint8_t *)&x)[0]) << 24) | (((unsigned long long)((uint8_t *)&x)[1]) << 16) | (((unsigned long long)((uint8_t *)&x)[2]) << 8) | ((unsigned long long)((uint8_t *)&x)[3]));
}
static inline fdt32_t cpu_to_fdt32(uint32_t x)
{
    return ( fdt32_t)((((unsigned long long)((uint8_t *)&x)[0]) << 24) | (((unsigned long long)((uint8_t *)&x)[1]) << 16) | (((unsigned long long)((uint8_t *)&x)[2]) << 8) | ((unsigned long long)((uint8_t *)&x)[3]));
}

static inline uint64_t fdt64_to_cpu(fdt64_t x)
{
    return ( uint64_t)((((unsigned long long)((uint8_t *)&x)[0]) << 56) | (((unsigned long long)((uint8_t *)&x)[1]) << 48) | (((unsigned long long)((uint8_t *)&x)[2]) << 40) | (((unsigned long long)((uint8_t *)&x)[3]) << 32) | (((unsigned long long)((uint8_t *)&x)[4]) << 24) | (((unsigned long long)((uint8_t *)&x)[5]) << 16) | (((unsigned long long)((uint8_t *)&x)[6]) << 8) | ((unsigned long long)((uint8_t *)&x)[7]));
}
static inline fdt64_t cpu_to_fdt64(uint64_t x)
{
    return ( fdt64_t)((((unsigned long long)((uint8_t *)&x)[0]) << 56) | (((unsigned long long)((uint8_t *)&x)[1]) << 48) | (((unsigned long long)((uint8_t *)&x)[2]) << 40) | (((unsigned long long)((uint8_t *)&x)[3]) << 32) | (((unsigned long long)((uint8_t *)&x)[4]) << 24) | (((unsigned long long)((uint8_t *)&x)[5]) << 16) | (((unsigned long long)((uint8_t *)&x)[6]) << 8) | ((unsigned long long)((uint8_t *)&x)[7]));
}
# 84 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/fdt.h" 1
# 32 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/fdt.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt_env.h" 1
# 33 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/fdt.h" 2
# 87 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/fdt.h"
struct fdt_header {
    fdt32_t magic;
    fdt32_t totalsize;
    fdt32_t off_dt_struct;
    fdt32_t off_dt_strings;
    fdt32_t off_mem_rsvmap;
    fdt32_t version;
    fdt32_t last_comp_version;


    fdt32_t boot_cpuid_phys;


    fdt32_t size_dt_strings;


    fdt32_t size_dt_struct;
};

struct fdt_reserve_entry {
    fdt64_t address;
    fdt64_t size;
};

struct fdt_node_header {
    fdt32_t tag;
    char name[0];
};

struct fdt_property {
    fdt32_t tag;
    fdt32_t len;
    fdt32_t nameoff;
    char data[0];
};
# 141 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/fdt.h"
int blfdt_cli_init(void);
# 85 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h" 2
# 177 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const void *fdt_offset_ptr(const void *fdt, int offset, unsigned int checklen);

static inline void *fdt_offset_ptr_w(void *fdt, int offset, int checklen)
{
    return (void *)(uintptr_t)fdt_offset_ptr(fdt, offset, checklen);
}

uint32_t fdt_next_tag(const void *fdt, int offset, int *nextoffset);
# 193 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
static inline uint32_t fdt32_ld(const fdt32_t *p)
{
    const uint8_t *bp = (const uint8_t *)p;

    return ((uint32_t)bp[0] << 24)
        | ((uint32_t)bp[1] << 16)
        | ((uint32_t)bp[2] << 8)
        | bp[3];
}

static inline uint64_t fdt64_ld(const fdt64_t *p)
{
    const uint8_t *bp = (const uint8_t *)p;

    return ((uint64_t)bp[0] << 56)
        | ((uint64_t)bp[1] << 48)
        | ((uint64_t)bp[2] << 40)
        | ((uint64_t)bp[3] << 32)
        | ((uint64_t)bp[4] << 24)
        | ((uint64_t)bp[5] << 16)
        | ((uint64_t)bp[6] << 8)
        | bp[7];
}





int fdt_next_node(const void *fdt, int offset, int *depth);
# 230 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_first_subnode(const void *fdt, int offset);
# 243 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_next_subnode(const void *fdt, int offset);
# 295 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
static inline void fdt_set_magic(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->magic = cpu_to_fdt32(val); };
static inline void fdt_set_totalsize(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->totalsize = cpu_to_fdt32(val); };
static inline void fdt_set_off_dt_struct(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->off_dt_struct = cpu_to_fdt32(val); };
static inline void fdt_set_off_dt_strings(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->off_dt_strings = cpu_to_fdt32(val); };
static inline void fdt_set_off_mem_rsvmap(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->off_mem_rsvmap = cpu_to_fdt32(val); };
static inline void fdt_set_version(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->version = cpu_to_fdt32(val); };
static inline void fdt_set_last_comp_version(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->last_comp_version = cpu_to_fdt32(val); };
static inline void fdt_set_boot_cpuid_phys(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->boot_cpuid_phys = cpu_to_fdt32(val); };
static inline void fdt_set_size_dt_strings(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->size_dt_strings = cpu_to_fdt32(val); };
static inline void fdt_set_size_dt_struct(void *fdt, uint32_t val) { struct fdt_header *fdth = (struct fdt_header *)fdt; fdth->size_dt_struct = cpu_to_fdt32(val); };






size_t fdt_header_size_(uint32_t version);
static inline size_t fdt_header_size(const void *fdt)
{
    return fdt_header_size_(((fdt32_ld(&((const struct fdt_header *)(fdt))->version))));
}
# 334 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_check_header(const void *fdt);
# 355 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_move(const void *fdt, void *buf, int bufsize);





int fdt_check_full(const void *fdt, size_t bufsize);
# 377 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const char *fdt_get_string(const void *fdt, int stroffset, int *lenp);
# 391 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const char *fdt_string(const void *fdt, int stroffset);
# 406 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
uint32_t fdt_get_max_phandle(const void *fdt);
# 419 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_num_mem_rsv(const void *fdt);
# 436 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_get_mem_rsv(const void *fdt, int n, uint64_t *address, uint64_t *size);
# 451 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_subnode_offset_namelen(const void *fdt, int parentoffset,
                   const char *name, int namelen);
# 478 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_subnode_offset(const void *fdt, int parentoffset, const char *name);
# 490 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_path_offset_namelen(const void *fdt, const char *path, int namelen);
# 516 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_path_offset(const void *fdt, const char *path);
# 541 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const char *fdt_get_name(const void *fdt, int nodeoffset, int *lenp);
# 561 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_first_property_offset(const void *fdt, int nodeoffset);
# 582 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_next_property_offset(const void *fdt, int offset);
# 638 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const struct fdt_property *fdt_get_property_by_offset(const void *fdt,
                              int offset,
                              int *lenp);
# 654 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const struct fdt_property *fdt_get_property_namelen(const void *fdt,
                            int nodeoffset,
                            const char *name,
                            int namelen, int *lenp);
# 688 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const struct fdt_property *fdt_get_property(const void *fdt, int nodeoffset,
                        const char *name, int *lenp);
static inline struct fdt_property *fdt_get_property_w(void *fdt, int nodeoffset,
                              const char *name,
                              int *lenp)
{
    return (struct fdt_property *)(uintptr_t)
        fdt_get_property(fdt, nodeoffset, name, lenp);
}
# 730 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const void *fdt_getprop_by_offset(const void *fdt, int offset,
                  const char **namep, int *lenp);
# 746 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const void *fdt_getprop_namelen(const void *fdt, int nodeoffset,
                const char *name, int namelen, int *lenp);
static inline void *fdt_getprop_namelen_w(void *fdt, int nodeoffset,
                      const char *name, int namelen,
                      int *lenp)
{
    return (void *)(uintptr_t)fdt_getprop_namelen(fdt, nodeoffset, name,
                              namelen, lenp);
}
# 785 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const void *fdt_getprop(const void *fdt, int nodeoffset,
            const char *name, int *lenp);
static inline void *fdt_getprop_w(void *fdt, int nodeoffset,
                  const char *name, int *lenp)
{
    return (void *)(uintptr_t)fdt_getprop(fdt, nodeoffset, name, lenp);
}
# 805 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
uint32_t fdt_get_phandle(const void *fdt, int nodeoffset);
# 817 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const char *fdt_get_alias_namelen(const void *fdt,
                  const char *name, int namelen);
# 833 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const char *fdt_get_alias(const void *fdt, const char *name);
# 860 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_get_path(const void *fdt, int nodeoffset, char *buf, int buflen);
# 892 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_supernode_atdepth_offset(const void *fdt, int nodeoffset,
                 int supernodedepth, int *nodedepth);
# 914 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_node_depth(const void *fdt, int nodeoffset);
# 937 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_parent_offset(const void *fdt, int nodeoffset);
# 977 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_node_offset_by_prop_value(const void *fdt, int startoffset,
                  const char *propname,
                  const void *propval, int proplen);
# 1000 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_node_offset_by_phandle(const void *fdt, uint32_t phandle);
# 1024 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_node_check_compatible(const void *fdt, int nodeoffset,
                  const char *compatible);
# 1061 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_node_offset_by_compatible(const void *fdt, int startoffset,
                  const char *compatible);
# 1076 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_stringlist_contains(const char *strlist, int listlen, const char *str);
# 1088 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_stringlist_count(const void *fdt, int nodeoffset, const char *property);
# 1109 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_stringlist_search(const void *fdt, int nodeoffset, const char *property,
              const char *string);
# 1136 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
const char *fdt_stringlist_get(const void *fdt, int nodeoffset,
                   const char *property, int index,
                   int *lenp);
# 1173 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_address_cells(const void *fdt, int nodeoffset);
# 1194 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_size_cells(const void *fdt, int nodeoffset);
# 1218 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_setprop_inplace_namelen_partial(void *fdt, int nodeoffset,
                    const char *name, int namelen,
                    uint32_t idx, const void *val,
                    int len);
# 1253 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_setprop_inplace(void *fdt, int nodeoffset, const char *name,
            const void *val, int len);
# 1285 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
static inline int fdt_setprop_inplace_u32(void *fdt, int nodeoffset,
                      const char *name, uint32_t val)
{
    fdt32_t tmp = cpu_to_fdt32(val);
    return fdt_setprop_inplace(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}
# 1320 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
static inline int fdt_setprop_inplace_u64(void *fdt, int nodeoffset,
                      const char *name, uint64_t val)
{
    fdt64_t tmp = cpu_to_fdt64(val);
    return fdt_setprop_inplace(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}






static inline int fdt_setprop_inplace_cell(void *fdt, int nodeoffset,
                       const char *name, uint32_t val)
{
    return fdt_setprop_inplace_u32(fdt, nodeoffset, name, val);
}
# 1362 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_nop_property(void *fdt, int nodeoffset, const char *name);
# 1386 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_nop_node(void *fdt, int nodeoffset);





int fdt_create(void *buf, int bufsize);
int fdt_resize(void *fdt, void *buf, int bufsize);
int fdt_add_reservemap_entry(void *fdt, uint64_t addr, uint64_t size);
int fdt_finish_reservemap(void *fdt);
int fdt_begin_node(void *fdt, const char *name);
int fdt_property(void *fdt, const char *name, const void *val, int len);
static inline int fdt_property_u32(void *fdt, const char *name, uint32_t val)
{
    fdt32_t tmp = cpu_to_fdt32(val);
    return fdt_property(fdt, name, &tmp, sizeof(tmp));
}
static inline int fdt_property_u64(void *fdt, const char *name, uint64_t val)
{
    fdt64_t tmp = cpu_to_fdt64(val);
    return fdt_property(fdt, name, &tmp, sizeof(tmp));
}


static inline int fdt_property_cell(void *fdt, const char *name, uint32_t val)
{
    return fdt_property_u32(fdt, name, val);
}
# 1429 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_property_placeholder(void *fdt, const char *name, int len, void **valp);



int fdt_end_node(void *fdt);
int fdt_finish(void *fdt);





int fdt_create_empty_tree(void *buf, int bufsize);
int fdt_open_into(const void *fdt, void *buf, int bufsize);
int fdt_pack(void *fdt);
# 1466 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_add_mem_rsv(void *fdt, uint64_t address, uint64_t size);
# 1490 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_del_mem_rsv(void *fdt, int n);
# 1516 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_set_name(void *fdt, int nodeoffset, const char *name);
# 1546 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_setprop(void *fdt, int nodeoffset, const char *name,
        const void *val, int len);
# 1577 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_setprop_placeholder(void *fdt, int nodeoffset, const char *name,
                int len, void **prop_data);
# 1608 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
static inline int fdt_setprop_u32(void *fdt, int nodeoffset, const char *name,
                  uint32_t val)
{
    fdt32_t tmp = cpu_to_fdt32(val);
    return fdt_setprop(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}
# 1643 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
static inline int fdt_setprop_u64(void *fdt, int nodeoffset, const char *name,
                  uint64_t val)
{
    fdt64_t tmp = cpu_to_fdt64(val);
    return fdt_setprop(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}






static inline int fdt_setprop_cell(void *fdt, int nodeoffset, const char *name,
                   uint32_t val)
{
    return fdt_setprop_u32(fdt, nodeoffset, name, val);
}
# 1749 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_appendprop(void *fdt, int nodeoffset, const char *name,
           const void *val, int len);
# 1780 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
static inline int fdt_appendprop_u32(void *fdt, int nodeoffset,
                     const char *name, uint32_t val)
{
    fdt32_t tmp = cpu_to_fdt32(val);
    return fdt_appendprop(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}
# 1815 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
static inline int fdt_appendprop_u64(void *fdt, int nodeoffset,
                     const char *name, uint64_t val)
{
    fdt64_t tmp = cpu_to_fdt64(val);
    return fdt_appendprop(fdt, nodeoffset, name, &tmp, sizeof(tmp));
}






static inline int fdt_appendprop_cell(void *fdt, int nodeoffset,
                      const char *name, uint32_t val)
{
    return fdt_appendprop_u32(fdt, nodeoffset, name, val);
}
# 1885 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_delprop(void *fdt, int nodeoffset, const char *name);
# 1900 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_add_subnode_namelen(void *fdt, int parentoffset,
                const char *name, int namelen);
# 1935 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_add_subnode(void *fdt, int parentoffset, const char *name);
# 1958 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_del_node(void *fdt, int nodeoffset);
# 1989 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
int fdt_overlay_apply(void *fdt, void *fdto);





const char *fdt_strerror(int errval);
# 40 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 2

# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_log.h" 1
# 39 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_log.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 35 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 56 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 74 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/platform.h" 1
# 127 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/platform.h"
unsigned long get_cpu_freq(void);
unsigned long get_timer_freq(void);
uint64_t get_timer_value(void);
# 75 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 2
# 149 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
void vAssertCalled( void );
# 57 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/projdefs.h" 1
# 35 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 60 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h" 1
# 45 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/deprecated_definitions.h" 1
# 46 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h" 2






# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h" 1
# 62 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
typedef uint32_t StackType_t;
typedef int32_t BaseType_t;
typedef uint32_t UBaseType_t;
typedef uint32_t TickType_t;
# 84 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern BaseType_t TrapNetCounter;
extern void vTaskSwitchContext( void );
# 94 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskEnterCritical( void );
extern void vTaskExitCritical( void );
# 149 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
inline __attribute__(( always_inline)) static BaseType_t xPortIsInsideInterrupt( void )
{
    return TrapNetCounter ? 1 : 0;
}
# 53 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h" 2
# 99 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/mpu_wrappers.h" 1
# 100 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h" 2
# 117 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
  StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;




typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 139 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 63 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 1044 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1095 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1130 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;


  uint8_t uxDummy20;
# 1143 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
} StaticTask_t;
# 1159 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1203 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;


  UBaseType_t uxDummy3;



   uint8_t ucDummy4;


} StaticEventGroup_t;
# 1232 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 1260 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;

  UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 40 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_log.h" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h" 1
# 36 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h" 1
# 139 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
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
# 345 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h" 2
# 69 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
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
# 330 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 446 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
 TaskHandle_t xTaskCreateStatic( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         StackType_t * const puxStackBuffer,
         StaticTask_t * const pxTaskBuffer ) ;
# 665 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 706 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 758 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 817 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 842 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 889 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 915 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 971 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1013 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1064 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1113 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1142 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1175 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskStartScheduler( void ) ;
# 1231 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskEndScheduler( void ) ;
# 1282 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspendAll( void ) ;
# 1336 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1351 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCount( void ) ;
BaseType_t xTaskGetTickCount2( TickType_t *ticks, BaseType_t *overflow ) ;
# 1368 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1382 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1395 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1411 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1438 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1465 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;
# 1529 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1538 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1637 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
# 1684 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1738 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1768 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetIdleRunTimeCounter( void ) ;
# 1849 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1940 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2017 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2118 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2187 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2203 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2224 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2257 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2271 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2297 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2308 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2364 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2385 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
void vTaskStepTickSafe( const TickType_t xTicksToJump ) ;
# 2402 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 41 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_log.h" 2
# 85 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_log.h"
typedef enum LOG_BUF_OUT_DATA_TYPE {
    LOG_BUF_OUT_DATA_TYPE_HEX,
    LOG_BUF_OUT_DATA_TYPE_INT8,
    LOG_BUF_OUT_DATA_TYPE_UNT8,
} LOG_BUF_OUT_DATA_TYPE_T;
# 156 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_log.h"
int log_buf_out(const char *file, int line, void *inbuf, int len, LOG_BUF_OUT_DATA_TYPE_T type);

void bl_printk(const char *format, ...);
# 42 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 2

# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/sys/bloop/looprt/include/looprt.h" 1
# 34 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/sys/bloop/looprt/include/looprt.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/sys/bloop/bloop/include/bloop.h" 1
# 40 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/sys/bloop/bloop/include/bloop.h"
struct loop_ctx;

struct loop_msg {
    struct utils_list_hdr item;
    union {
        void *container;
        struct {
            uint8_t priority;
            uint8_t id_dst;
            uint8_t id_msg;
            uint8_t id_src;
        } header;
    } u;
    void *arg1;
    void *arg2;
    unsigned int time_added;
    unsigned int time_consumed;
};

struct loop_evt_handler_statistic {
    unsigned int time_max;
    unsigned int time_consumed;
    unsigned int time_accumulated;
    unsigned int count_triggered;
};

struct loop_evt_handler {
    const char *name;
    int (*evt)(struct loop_ctx *loop, const struct loop_evt_handler *handler, uint32_t *bitmap_evt, uint32_t *evt_type_map);
    int (*handle)(struct loop_ctx *loop, const struct loop_evt_handler *handler, struct loop_msg *msg);
};




struct loop_ctx {
    TaskHandle_t looper;
    uint32_t bitmap_evt_async;
    uint32_t bitmap_evt_sync;
    uint32_t bitmap_msg;
    uint32_t evt_type_map_async[(32)];
    uint32_t evt_type_map_sync[(32)];
    struct utils_list list[(32)];
    struct loop_evt_handler_statistic statistic[(32)];
    const struct loop_evt_handler *(handlers[(32)]);

    utils_dlist_t timer_dlist;
    utils_dlist_t timer_dued;
};

struct loop_timer {
    utils_dlist_t dlist_item;






    uint8_t flags;

    unsigned int time_added;
    unsigned int time_target;
    int idx_task;
    uint32_t evt_type_map;
    void (*cb)(struct loop_ctx *loop, struct loop_timer *timer, void *arg);
    void *arg;
};


extern struct loop_evt_handler bloop_handler_sys;


int bloop_init(struct loop_ctx *loop);
int bloop_run(struct loop_ctx *loop);
int bloop_status_dump(struct loop_ctx *loop);
int bloop_handler_register(struct loop_ctx *loop, const struct loop_evt_handler *handler, int priority);
int bloop_handler_unregister(struct loop_ctx *loop, const struct loop_evt_handler *handler, int priority);
void bloop_timer_init(struct loop_timer *timer, int use_auto_free);
void bloop_timer_configure(struct loop_timer *timer, unsigned int delay_ms,
        void(*cb)(struct loop_ctx *loop, struct loop_timer *timer, void *arg), void *arg,
        int idx_task, uint32_t evt_type_map);
void bloop_timer_repeat_enable(struct loop_timer *timer);
void bloop_timer_register(struct loop_ctx *loop, struct loop_timer *timer);
void bloop_wait_startup(struct loop_ctx *loop);


void bloop_evt_set_async(struct loop_ctx *loop, unsigned int evt, uint32_t evt_map);
void bloop_evt_set_async_fromISR(struct loop_ctx *loop, unsigned int evt, uint32_t evt_map);

void bloop_evt_set_sync(struct loop_ctx *loop, unsigned int evt, uint32_t evt_map);
void bloop_evt_unset_sync(struct loop_ctx *loop, unsigned int evt);
# 35 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/sys/bloop/looprt/include/looprt.h" 2
int looprt_test_cli_init(void);
int looprt_start(StackType_t *proc_stack_looprt, int stack_count, StaticTask_t *proc_task_looprt);
int looprt_start_auto(void);
void looprt_evt_status_dump(void);
void looprt_evt_notify_async(unsigned int task, uint32_t evt_map);
void looprt_evt_notify_async_fromISR(unsigned int task, uint32_t evt_map);
void looprt_evt_schedule(int task, uint32_t evt_map, int delay_ms);


int looprt_handler_register(const struct loop_evt_handler *handler, int priority);
int looprt_timer_register(struct loop_timer *timer);
# 44 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 2
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/sys/bloop/loopset/include/loopset_pwm.h" 1
# 35 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/sys/bloop/loopset/include/loopset_pwm.h"
typedef void (*loopset_func_t) (void *p_arg);

int loopset_pwm_hook_on_looprt(void);
int loopset_pwm_hook_off_looprt(void);

void loopset_pwm_trigger_stop (void);
void loopset_pwm_trigger_start (void);

void loopset_pwm_trigger_on(unsigned int timeon_ms, loopset_func_t cb, void *p_arg);
void loopset_pwm_trigger_off(void);
# 45 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 2





static uint8_t __g_init_flag = 0;
static hal_pwm_dev_t __g_pwm_dev[5] = {0};

typedef struct pwm_priv_data {
    aos_mutex_t mutex;
} pwm_priv_data_t;

static int8_t inited;
static pwm_dev_t *dev_pwm0 = 
# 58 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                            ((void *)0)
# 58 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                                ;
static pwm_dev_t *dev_pwm1 = 
# 59 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                            ((void *)0)
# 59 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                                ;
static pwm_dev_t *dev_pwm2 = 
# 60 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                            ((void *)0)
# 60 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                                ;
static pwm_dev_t *dev_pwm3 = 
# 61 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                            ((void *)0)
# 61 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                                ;
static pwm_dev_t *dev_pwm4 = 
# 62 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                            ((void *)0)
# 62 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                                ;

static int pwm_dev_malloc(pwm_dev_t **pdev)
{
    if (*pdev) {
        do { ; bl_printk("[%10u][%s: %s:%4d] " "arg err.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[31mERROR \x1b[0m", "hal_pwm.c", 67); ; } while(0==1);
        return -1;
    }

    *pdev = pvPortMalloc(sizeof(pwm_dev_t));
    if (*pdev == 0) {
        do { ; bl_printk("[%10u][%s: %s:%4d] " "mem err.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[31mERROR \x1b[0m", "hal_pwm.c", 73); ; } while(0==1);
        return -1;
    }

    (*pdev)->priv = 
# 77 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                   ((void *)0)
# 77 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                       ;
    (*pdev)->priv = pvPortMalloc(sizeof(pwm_priv_data_t));
    if ((*pdev)->priv == 
# 79 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                        ((void *)0)
# 79 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                            ) {
        do { ; bl_printk("[%10u][%s: %s:%4d] " "mem err.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[31mERROR \x1b[0m", "hal_pwm.c", 80); ; } while(0==1);
        return -1;
    }

    return 0;
}

static void pwm_dev_setdef(pwm_dev_t **pdev, uint8_t id)
{
    if (*pdev == 
# 89 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                ((void *)0)
# 89 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                    ) {
        do { ; bl_printk("[%10u][%s: %s:%4d] " "mem err.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[31mERROR \x1b[0m", "hal_pwm.c", 90); ; } while(0==1);
        return;
    }

    (*pdev)->port = id;
}

static int dev_pwm_init(uint8_t id, const char *path)
{
    pwm_dev_t **pdev = 
# 99 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                      ((void *)0)
# 99 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                          ;
    int ret;

    if ((id >= 3) || (path == 0)) {
        do { ; bl_printk("[%10u][%s: %s:%4d] " "arg err.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[31mERROR \x1b[0m", "hal_pwm.c", 103); ; } while(0==1);
        return -1;
    }

    switch (id) {
        case 0:
        {
            pdev = &dev_pwm0;
        } break;
        case 1:
        {
            pdev = &dev_pwm1;
        } break;
        case 2:
        {
            pdev = &dev_pwm2;
        } break;
        case 3:
        {
            pdev = &dev_pwm3;
        } break;
        case 4:
        {
            pdev = &dev_pwm4;
        } break;
        default:
        {
            do { ; bl_printk("[%10u][%s: %s:%4d] " "err.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[31mERROR \x1b[0m", "hal_pwm.c", 130); ; } while(0==1);
            return -1;
        } break;
    }

    if (pwm_dev_malloc(pdev) != 0) {
        return -1;
    }

    pwm_dev_setdef(pdev, id);
    ret = aos_register_driver(path, &pwm_ops, *pdev);
    if (ret != 0u) {
        return ret;
    }

    return 0;
}

int32_t hal_pwm_init_bydev(pwm_dev_t *pwm)
{
    pwm_priv_data_t *data;

    data = pwm->priv;
    if (aos_mutex_new(&(data->mutex))) {

        return -1;
    }
    return 0;
}

int32_t hal_pwm_finalize_bydev(pwm_dev_t *pwm)
{
    pwm_priv_data_t *data;

    data = pwm->priv;
    aos_mutex_free(&(data->mutex));

    return 0;
}




static void fdt_pwm_module_init(const void *fdt, int pwm_offset)
{


    int offset1 = 0;

    const uint32_t *addr_prop = 0;
    int lentmp = 0;
    const char *result = 0;
    int countindex = 0;
    int i;

    uint8_t id;
    char *path = 
# 186 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                ((void *)0)
# 186 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                    ;
    uint8_t pin;
    uint32_t freq;

    const char *pwm_node[5] = {
        "pwm@4000A420",
        "pwm@4000A440",
        "pwm@4000A460",
        "pwm@4000A480",
        "pwm@4000A4A0",
    };

    for (i = 0; i < 5; i++) {
        offset1 = fdt_subnode_offset(fdt, pwm_offset, pwm_node[i]);
        if (0 >= offset1) {
            do { ; bl_printk("[%10u][%s: %s:%4d] " "pwm[%d] %s NULL.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[32mINFO  \x1b[0m", "hal_pwm.c", 201, i, pwm_node[i]); ; } while(0==1);
            continue;
        }
        countindex = fdt_stringlist_count(fdt, offset1, "status");
        if (countindex != 1) {
            do { ; bl_printk("[%10u][%s: %s:%4d] " "pwm[%d] status_countindex = %d NULL.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[32mINFO  \x1b[0m", "hal_pwm.c", 206, i, countindex); ; } while(0==1);
            continue;
        }
        result = fdt_stringlist_get(fdt, offset1, "status", 0, &lentmp);
        if ((lentmp != 4) || (memcmp("okay", result, 4) != 0)) {
            do { ; bl_printk("[%10u][%s: %s:%4d] " "pwm[%d] status = %s\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[32mINFO  \x1b[0m", "hal_pwm.c", 211, i, result); ; } while(0==1);
            continue;
        }


        countindex = fdt_stringlist_count(fdt, offset1, "path");
        if (countindex != 1) {
            do { ; bl_printk("[%10u][%s: %s:%4d] " "pwm[%d] path_countindex = %d NULL.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[32mINFO  \x1b[0m", "hal_pwm.c", 218, i, countindex); ; } while(0==1);
            continue;
        }
        result = fdt_stringlist_get(fdt, offset1, "path", 0, &lentmp);
        if ((lentmp < 0) || (lentmp > 32))
        {
            do { ; bl_printk("[%10u][%s: %s:%4d] " "pwm[%d] path lentmp = %d\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[32mINFO  \x1b[0m", "hal_pwm.c", 224, i, lentmp); ; } while(0==1);
        }
        path = (char *)result;


        addr_prop = fdt_getprop(fdt, offset1, "id", &lentmp);
        if (addr_prop == 
# 230 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                        ((void *)0)
# 230 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                            ) {
            do { ; bl_printk("[%10u][%s: %s:%4d] " "pwm[%d] id NULL.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[32mINFO  \x1b[0m", "hal_pwm.c", 231, i); ; } while(0==1);
            continue;
        }
        id = ((uint8_t)fdt32_to_cpu(*(uint32_t *)((uint8_t *)addr_prop + 0)));


        addr_prop = fdt_getprop(fdt, offset1, "pin", &lentmp);
        if (addr_prop == 
# 238 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                        ((void *)0)
# 238 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                            ) {
            do { ; bl_printk("[%10u][%s: %s:%4d] " "pwm[%d] pin NULL.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[32mINFO  \x1b[0m", "hal_pwm.c", 239, i); ; } while(0==1);
            continue;
        }
        pin = ((uint8_t)fdt32_to_cpu(*(uint32_t *)((uint8_t *)addr_prop + 0)));


        addr_prop = fdt_getprop(fdt, offset1, "freq", &lentmp);
        if (addr_prop == 
# 246 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                        ((void *)0)
# 246 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                            ) {
            do { ; bl_printk("[%10u][%s: %s:%4d] " "pwm[%d] freq NULL.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[32mINFO  \x1b[0m", "hal_pwm.c", 247, i); ; } while(0==1);
            continue;
        }
        freq = ((uint32_t)fdt32_to_cpu(*(uint32_t *)((uint8_t *)addr_prop + 0)));

        do { ; bl_printk("[%10u][%s: %s:%4d] " "path = %s, id = %d, pin = %d, freq = %ld\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[32mINFO  \x1b[0m", "hal_pwm.c",
                                   253
# 252 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
        , path, id, pin, freq); ; } while(0==1)
                                    ;
        bl_pwm_init(id, pin, freq);
        if (dev_pwm_init(id, (const char *)path) != 0) {
            do { ; bl_printk("[%10u][%s: %s:%4d] " "dev_pwm_init err.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[31mERROR \x1b[0m", "hal_pwm.c", 256); ; } while(0==1);
        }
    }
}

int32_t vfs_pwm_init(uint32_t fdt, uint32_t dtb_pwm_offset)
{
    if (inited == 1) {
        return 0u;
    }

    fdt_pwm_module_init((const void *)fdt, (int)dtb_pwm_offset);

    inited = 1;

    return 0u;
}

int32_t hal_pwm_start_bydev(pwm_dev_t *pwm)
{
    bl_pwm_start(pwm->port);
    return 0;
}

int32_t hal_pwm_stop_bydev(pwm_dev_t *pwm)
{
    bl_pwm_stop(pwm->port);
    return 0;
}

int32_t hal_pwm_para_chg_bydev(pwm_dev_t *pwm, pwm_config_t para)
{
    return 0;
}

int32_t hal_pwm_set_duty_bydev(pwm_dev_t *pwm, float duty)
{

    bl_pwm_set_duty(pwm->port, duty);
    return 0;
}

int32_t hal_pwm_set_freq_bydev(pwm_dev_t *pwm, uint32_t freq)
{
    do { ; bl_printk("[%10u][%s: %s:%4d] " "not support.\r\n", (xPortIsInsideInterrupt())?(xTaskGetTickCountFromISR()):(xTaskGetTickCount()), "\x1b[31mERROR \x1b[0m", "hal_pwm.c", 300); ; } while(0==1);
    bl_pwm_set_freq(pwm->port, freq);
    return 0;
}

static void __pwm_duty_adjust (int id)
{
    hal_pwm_dev_t *p_dev = &__g_pwm_dev[id];
    hal_pwm_ev_t *p_ev;

    if (p_dev->p_now_ev == 
# 310 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                          ((void *)0)
# 310 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                              ) {
        p_dev->p_now_ev = (hal_pwm_ev_t *)utils_list_pop_front(&p_dev->list_head);
    }
    if ((p_ev = p_dev->p_now_ev) == 
# 313 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                                   ((void *)0)
# 313 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                                       ) {
        return;
    }

    if (p_ev->remain_ms) {
        p_ev->remain_ms--;
        p_dev->now_duty = p_dev->now_duty + p_ev->adjust_duty;

        bl_pwm_set_duty(id, p_dev->now_duty);

        if (p_ev->remain_ms == 0) {
            if (p_dev->now_duty != p_ev->duty) {
                p_ev->remain_ms++;
                p_ev->adjust_duty = p_ev->duty - p_dev->now_duty;
            } else {
                if (p_ev->cb) {
                    p_ev->cb(p_ev->p_arg);
                }

                p_dev->p_now_ev = (hal_pwm_ev_t *)utils_list_pop_front(&p_dev->list_head);
            }
        }
    }
}

static void __loop_pwm_trigger (void *p_arg)
{
    int id;
    uint8_t stop = 1;

    vTaskEnterCritical();
    for (id = 0; id < 5; id++) {
        if (__g_pwm_dev[id].active) {
            __pwm_duty_adjust(id);
        }
        if (__g_pwm_dev[id].p_now_ev != 
# 348 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                                       ((void *)0)
# 348 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                                           ) {
            stop = 0;
        }
    }
    if (stop) {
        loopset_pwm_trigger_stop();
    }
    vTaskExitCritical();
}

static void __ev_complete (void *p_arg)
{
    hal_pwm_ev_t *p_ev = (hal_pwm_ev_t *)p_arg;
    printf("pwm_duty_set finish duty %f\r\n", p_ev->duty);
    vPortFree(p_ev);
}

int hal_pwm_start(uint8_t id)
{
    if (id >= 5) {
        return -1;
    }

    bl_pwm_start(id);
    return 0;
}

int hal_pwm_stop(uint8_t id)
{
    if (id >= 5) {
        return -1;
    }

    bl_pwm_stop(id);
    return 0;
}

static struct utils_list_hdr * __list_last (struct utils_list *list)
{
    if (utils_list_is_empty(list)) {
        return 
# 388 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
              ((void *)0)
# 388 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                  ;
    }
    return list->last;
}

int hal_pwm_duty_set(uint8_t id, uint32_t duty, uint32_t duration_ms)
{
    float now_duty, adjust_duty;
    hal_pwm_dev_t *p_dev;
    hal_pwm_ev_t *p_ev, *p_temp_ev;

    if (id >= 5 || duty > (100 * 100)) {
        return -1;
    }

    p_dev = &__g_pwm_dev[id];

    if (duration_ms == 0) {
        p_dev->now_duty = (float)duty / 100;
        bl_pwm_set_duty(id, p_dev->now_duty);
        return 0;
    }

    p_ev = pvPortMalloc(sizeof(hal_pwm_ev_t));
    if (
# 412 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
       ((void *)0) 
# 412 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
            == p_ev) {
        return -1;
    }
    memset(p_ev, 0, sizeof(hal_pwm_ev_t));

    if (p_dev->p_now_ev) {
        if (!(p_temp_ev = (hal_pwm_ev_t *)__list_last(&p_dev->list_head))) {
            p_temp_ev = p_dev->p_now_ev;
        }
        now_duty = p_temp_ev->duty;
    } else {
        bl_pwm_get_duty(id, &now_duty);
    }

    adjust_duty = (float)duty / 100 - now_duty;
    adjust_duty = adjust_duty / duration_ms;
    if (adjust_duty == 0.0) {
        return 0;
    }

    p_ev->cb = __ev_complete;
    p_ev->p_arg = p_ev;

    vTaskEnterCritical();
    p_ev->duty = (float)duty / 100;
    p_ev->remain_ms = duration_ms;
    p_ev->adjust_duty = adjust_duty;
    utils_list_push_back(&p_dev->list_head, &p_ev->item);
    vTaskExitCritical();

    loopset_pwm_trigger_start();

    printf("now_duty %f, adjust_duty %f\r\n", now_duty, adjust_duty);

    return 0;
}

int hal_pwm_duty_get(uint8_t id, uint32_t *p_duty)
{
    float duty;
    if (id >= 5 || 
# 452 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                                   ((void *)0) 
# 452 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                                        == p_duty) {
        return -1;
    }
    bl_pwm_get_duty(id, &duty);
    *p_duty = duty * 100;
    return 0;
}

int hal_pwm_freq_get(uint8_t id, uint32_t *p_freq)
{
    if (id >= 5 || 
# 462 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                                   ((void *)0) 
# 462 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                                        == p_freq) {
        return -1;
    }
    *p_freq = __g_pwm_dev[id].freq;
    int32_t bl_pwm_get_duty(uint8_t id, float *p_duty);
    return 0;
}

int hal_pwm_freq_update(uint8_t id, uint32_t freq)
{
    if (id >= 5) {
        return -1;
    }
    if (freq <= (40000000 / (1UL << 16)) || freq > (40000000 / 100)) {
        return -1;
    }
    __g_pwm_dev[id].freq = freq;
    bl_pwm_set_freq(id, freq);
    bl_pwm_set_duty(id, __g_pwm_dev[id].now_duty);
    return 0;
}

int hal_pwm_init(uint8_t id, int pin)
{
    if (id >= 5) {
        return -1;
    }

    memset(&__g_pwm_dev[id], 0, sizeof(hal_pwm_dev_t));

    __g_pwm_dev[id].active = 1;
    __g_pwm_dev[id].freq = 2000;

    utils_list_init(&__g_pwm_dev[id].list_head);
    bl_pwm_init(id, pin, __g_pwm_dev[id].freq);

    if (!__g_init_flag) {
        __g_init_flag = 1;
        loopset_pwm_hook_on_looprt();
        loopset_pwm_trigger_on(1, __loop_pwm_trigger, 
# 501 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c" 3 4
                                                                         ((void *)0)
# 501 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.c"
                                                                             );
    }

    return 0;
}

int hal_pwm_deinit(uint8_t id)
{
    if (id >= 5) {
        return -1;
    }
    hal_pwm_stop(id);
    memset(__g_pwm_dev, 0, sizeof(__g_pwm_dev));
    __g_init_flag = 0;

    loopset_pwm_trigger_off();
    loopset_pwm_hook_off_looprt();

    return 0;
}
