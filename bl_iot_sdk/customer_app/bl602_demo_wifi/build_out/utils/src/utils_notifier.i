# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/src/utils_notifier.c"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/utils//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/src/utils_notifier.c"
# 31 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/src/utils_notifier.c"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_notifier.h" 1
# 34 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_notifier.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h" 1
# 36 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_list.h"
# 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 149 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4

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
# 35 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_notifier.h" 2

typedef struct utils_list ntf_list_t;
typedef int (*utils_notifier_fn_t)(void *cb_arg, void *env);

typedef struct utils_notifier {
    struct utils_list_hdr node;
    utils_notifier_fn_t cb;
    void *cb_arg;
    int priority;
} utils_notifier_t;

int utils_notifier_chain_init(ntf_list_t *nl);
int utils_notifier_chain_register(ntf_list_t *nl, utils_notifier_t *node);
int utils_notifier_chain_call(ntf_list_t *nl, void *env);
# 32 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/src/utils_notifier.c" 2

int utils_notifier_chain_init(ntf_list_t *nl)
{
    utils_list_init((struct utils_list *)nl);

    return 0;
}

int utils_notifier_chain_register(ntf_list_t *nl, utils_notifier_t *node)
{
    if (!nl || !node) {
        return -1;
    }
    utils_list_push_back((struct utils_list *)nl, (struct utils_list_hdr *)node);

    return 0;
}

int utils_notifier_chain_call(ntf_list_t *nl, void *env)
{
    utils_notifier_t *raw;

    if (!nl) {
        return 0;
    }

    raw = (utils_notifier_t *)nl->first;

    while (raw) {
        if (raw->cb) {
            raw->cb(raw->cb_arg, env);
        }
        raw = (utils_notifier_t *)raw->node.next;
    }

    return 0;
}
