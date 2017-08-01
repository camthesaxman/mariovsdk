#include "gba/gba.h"
#include "global.h"

struct UnknownStruct5
{
    u8 filler0[8];
    u16 unk8;
};

struct UnknownStruct4
{
    struct UnknownStruct5 *unk0;
    u32 unk4;
    u8 filler8[0x20-8];
    u32 unk20;
};

extern s32 gUnknown_0300002C;
extern u8 gUnknown_03000033;
extern u8 gUnknown_030009EC;
extern s32 gUnknown_03000B44;
extern u32 gUnknown_03000B48;
extern u32 gUnknown_03000B4C;
extern u8 gUnknown_03000B5C;
extern u8 gUnknown_03000B60;
extern u32 gUnknown_03000B6C;
extern struct UnknownStruct4 gUnknown_03000B90;
extern u32 gUnknown_03000BB8;
extern u32 gUnknown_030009DC;
extern u8 gUnknown_0300192C[];  // unknown type
extern u8 gUnknown_03001930[];  // unknown type
extern u8 gUnknown_030009E4[];  // unknown type
extern u8 gUnknown_03001A30[];  // unknown type

void sub_08007154(void)
{
    gUnknown_030009C4 = gUnknown_030009CC;
    gUnknown_03000024 = 1;
}

void sub_08007170(void)
{
    sub_08034898(2);
    sub_0802BA94();
    sub_0802BC98();
    sub_0802D1D0();
    sub_0803109C();
    sub_080714A8();
    sub_080317F8();
    gUnknown_030009EC = 1;
    sub_0802BF1C();
    gUnknown_03000B54 = gUnknown_03000B90.unk0->unk8 * 60 + 60;
    if (gUnknown_03000B80 == 0 && (gUnknown_03000B90.unk20 & 8))
    {
        u32 var;
        
        if (gUnknown_03000B44 > 60)
            gUnknown_03000B54 += gUnknown_03000B44 - 60;
        var = sub_0802F5C0(gUnknown_03000B44);
        gUnknown_030009DC = var;
        gUnknown_03000B44 = 0;
    }
    sub_0802C20C();
    if (gUnknown_030009D0 & 24)
        sub_0802C7A4();
    else
        sub_0802CF08();
    sub_08006968(gUnknown_03000B90.unk4);
    gUnknown_03000B5C = 0;
    gUnknown_0300002C = -1;
    gUnknown_03000B60 = 0;
    sub_080386DC();
    sub_08031BF0(gUnknown_0300192C, gUnknown_03001930);
    if (gUnknown_03000B90.unk20 & 8)
    {
        gUnknown_03000B4C = gUnknown_03000B48;
        gUnknown_03000B6C = gUnknown_03000BB8;
        CpuCopy16(gUnknown_030009E4, gUnknown_03001A30, 4);
    }
    else
    {
        gUnknown_03000B4C = 0;
    }
    gUnknown_03000033 = 0;
}

/*
void sub_080072A4(void)
{
    
}
*/
