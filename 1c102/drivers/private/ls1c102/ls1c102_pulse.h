#ifndef _LS1C102_PULSE_H
#define _LS1C102_PULSE_H

#ifdef __cplusplus
extern "C" {
#endif

#include "test.h"
#include "ls1x_latimer.h"

void pulse_init(int num, uint32_t fre_d, int clk);
void pulse_enable(int num);
void pulse_disable(int num);

#ifdef __cplusplus
}
#endif

#endif // _LS1C102_PULSE_H

