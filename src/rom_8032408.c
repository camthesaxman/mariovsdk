#include "gba/gba.h"
#include "global.h"

extern u8 gUnknown_03001F50[];  // unknown type
extern u8 gUnknown_03007AB0[];  // unknown type
extern u32 *gUnknown_0300029C;

extern u16 gUnknown_0807DD14[];
extern const struct UnknownStruct10 gUnknown_08B2AD88;

void sub_08032408(void)
{
    gUnknown_03000B50 = 0;
    gUnknown_03001704 = 0;
    gUnknown_03000B80 = 0;
    sub_08032F68();
    sub_0803482C(gUnknown_03001F50, gUnknown_03007AB0);
    sub_0802F060();
    sub_0807166C(sub_08034854(0x15A4), 0x15A4, 3, 3, 8);
    sub_08034884(0);
    CpuFill16(0, (void *)PLTT, 0x200);
    CpuCopy16(gUnknown_0807DD14, (void *)(PLTT + 0x200), 6);
    sub_080348C8(&gUnknown_08B2AD88, 0, 0, 0);
    gUnknown_0300029C = sub_08034854(0x100C);
    CpuFill16(0, gUnknown_0300029C, 0x100C);
    gUnknown_0300029C[0x400] = 0;
    REG_DISPCNT = 0x1140;
    sub_080331FC();
}
