#include <stdio.h>
#include <stdint.h>

#include "panic.h"

int backtrace_now(int (*print_func)(const char *fmt, ...), uintptr_t *regs) __attribute__ ((weak, alias ("backtrace_riscv")));

#ifdef CONF_ENABLE_FRAME_PTR

/** WARNING: to use call trace facilities, enable
 *  compiler's frame pointer feature:
 *  -fno-omit-frame-pointer
 */


/* function call stack graph
 *
 *                                   low addr
 *                                  |___..___|<--- current sp
 *                                  |   ..   |
 *                                  |___..___|
 *                               $$$|___fp___|<------ previous fp
 * func_A frame start -->        $  |___ra___|
 *                               $  |        |<--- current fp
 *                               $  |   ..   |
 *                               $  |________|
 *                             ++$++|___fp___|
 * func_B stack start -->      + $  |___ra___|
 *                             + $$>|        |
 *                             +    |        |
 *                             +    |___..___|
 *                           ##+####|___fp___|
 * func_C stack start -->    # +    |___ra___|
 *                           # ++++>|        |
 *                           #       high addr
 *                           ######>
 *
 *                   func_C () {
 *                      ...
 *                      func_B();
 *                      ...
 *                   }
 *
 *                   func_B() {
 *                      ...
 *                      func_A();
 *                      ...
 *                   }
 */

static void backtrace_stack(int (*print_func)(const char *fmt, ...),
                            uintptr_t *fp, uintptr_t *regs)
{
    uintptr_t *ra;
    uint32_t i = 0; 

    while (1) {
        ra = (uintptr_t *)*(unsigned long *)(fp - 1);

        if (ra == 0) {
            print_func("backtrace: INVALID!!!\r\n");
            break;
        }

        print_func("backtrace: %p\r\n", ra);
        if (1 == i)
            print_func("backtrace: %p   <--- TRAP\r\n", regs[0]);

        fp = (uintptr_t *)*(fp - 2);

        i ++;
    }
}

int backtrace_riscv(int (*print_func)(const char *fmt, ...), uintptr_t *regs)
{
    static int     processing_backtrace = 0;
    uintptr_t *fp;

    if (processing_backtrace == 0) {
        processing_backtrace = 1;
    } else {
        print_func("backtrace nested...\r\n");
        return -1;
    }

    __asm__("add %0, x0, fp" : "=r"(fp));

    print_func("=== backtrace start ===\r\n");

    backtrace_stack(print_func, fp, regs);

    print_func("=== backtrace end ===\r\n\r\n");

    processing_backtrace = 0;

    return 0;
}

#else
int backtrace_riscv(int (*print_func)(const char *fmt, ...), uintptr_t *regs)
{
    return -1;
}
#endif
