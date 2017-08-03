#include "gba/gba.h"
#include "global.h"
#include "main.h"

extern u32 gUnknown_03000BE0;
extern u8 gUnknown_03000BD0;
extern u8 gUnknown_030000AC;

extern struct UnknownStruct14 gUnknown_08866A48;

struct UnknownStruct14
{
    u8 filler0[0x30];
    u16 bldCnt;
    u16 bldAlpha;
    u16 bldY;
};

void cb_init_intro(void)
{
    void *arr[4];

    gUnknown_03000BE0 = 0;
    gUnknown_03000BD0 = 0;
    gUnknown_030012A0 = 0;
    gUnknown_03001710 = 0;
    arr[0] = &gUnknown_08866A48;
    arr[1] = NULL;
    arr[2] = NULL;
    arr[3] = NULL;
    sub_08032F24(arr, 0);
    REG_BLDCNT = gUnknown_08866A48.bldCnt;
    REG_BLDALPHA = gUnknown_08866A48.bldAlpha;
    REG_BLDY = gUnknown_08866A48.bldY;
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    REG_DISPCNT = 0x100;
    gUnknown_03000B54 = 0;
    sub_08029CDC(gUnknown_08866A48.bldCnt, gUnknown_08866A48.bldAlpha, gUnknown_08866A48.bldY);
}

void sub_0801BA6C(void)
{
    REG_BLDALPHA = 0;
    REG_BLDCNT = 0;
    gUnknown_030000AC = 1;
}

void sub_0801BA88(void)
{
    sub_08029C20();
    gUnknown_03000BE0++;
    if (gUnknown_03000BE0 > 180)
    {
        sub_0802D468(3, 23, 7, 0);
        gUnknown_030009C4 = MAIN_STATE_MOVIE;
    }
    sub_08008238();
    gUnknown_03000BE0 &= 0xFFFF;
}

void sub_0801BAC4(void)
{
    gUnknown_03000B54++;
}

void sub_0801BAD4(void)
{
}

asm(".align 2, 0");
