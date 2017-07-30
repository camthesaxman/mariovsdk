#include "gba/gba.h"

#define EWRAM 0x02000000
#define IWRAM 0x03000000

extern s16 gUnknown_030012A0;
extern s16 gUnknown_030012F4;
extern s16 gUnknown_0300170C;
extern s16 gUnknown_03001710;
extern u32 gUnknown_03001714;
extern u32 gUnknown_03001718;
extern s16 gUnknown_03001720;
extern s16 gUnknown_03001724;

extern void sub_08032FB0(void);

void sub_08033CE0(void);
void sub_08033D1C(void);
void sub_08033D30(void);
void sub_08033D58(void);

void sub_08033C38(void)
{
    REG_IME = 0;
    REG_IE |= INTR_FLAG_TIMER2;
    gUnknown_03001714 = 0;
    REG_TM2CNT = 0x800000;
    REG_TM3CNT = 0x840000;
    REG_IME = 1;
}

void sub_08033C74(void)
{
    REG_IME = 0;
    gUnknown_03001718 = (REG_TM3CNT_L << 16) | REG_TM2CNT_L;
    REG_IME = 1;
}

void sub_08033CA0(void)
{
    REG_IME = 0;
    REG_TM2CNT = 0;
    REG_TM3CNT = 0;
    REG_IE &= ~INTR_FLAG_TIMER2;
    REG_IME = 1;
}

void sub_08033CD0(void)
{
    sub_08033CE0();
    sub_08033D1C();
}

void sub_08033CE0(void)
{
    DmaFill32(3, 0, (void *)EWRAM, 0x40000);
    DmaFill32(3, 0, (void *)IWRAM, 0x7E00);
}

void sub_08033D1C(void)
{
    sub_08033D30();
    sub_08032FB0();
    sub_08033D58();
}

void sub_08033D30(void)
{
    int i;
    u16 var = 252;
    u16 *ptr = &var;  // Why would you do this?

    for (i = 0; i < 0xC000; i++)
        *((u16 *)VRAM + i) = *ptr;
}

void sub_08033D58(void)
{
    DmaFill16(3, 0, (void *)PLTT, 0x400);
}
