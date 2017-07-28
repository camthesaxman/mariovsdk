#include "gba/gba.h"

struct Struct30009B0
{
    s32 unk0;
    s32 unk4;
    u8 unk8;
    s16 unk10;
    s16 unk12;
};

extern u8 gUnknown_03000B64;
extern u8 gUnknown_03000B78;
extern struct Struct30009B0 gUnknown_030009B0;
extern u32 gUnknown_030009C4;
extern u16 gUnknown_030012E0;

extern void sub_08033C38(void);
extern void sub_08033CE0(void);

int sub_080066FC();
void sub_08006FF0(void);

// 0x08006DF8
void AgbMain(void)
{
    sub_08033CE0();  
    gUnknown_03000B64 = 0;
    gUnknown_03000B78 = 0;
    gUnknown_030009C4 = 34;
    sub_08033C38();
    sub_08006FF0();
}

void sub_08006E28(void)
{
    u32 arr[4];
    
    if ((gUnknown_030012E0 & 1) && gUnknown_030009B0.unk8 != 0)
        gUnknown_030009B0.unk10 = 0xFD80;
    
    gUnknown_030009B0.unk10 = 0;  // wat?
    gUnknown_030009B0.unk12 = 0;
    
    if (gUnknown_030012E0 & 0x10)
        gUnknown_030009B0.unk12 = 0x100;
    else if (gUnknown_030012E0 & 0x20)
        gUnknown_030009B0.unk12 = 0xFF00;
    
    if (gUnknown_030012E0 & 0x40)
        gUnknown_030009B0.unk10 = 0xFF00;
    else if (gUnknown_030012E0 & 0x80)
        gUnknown_030009B0.unk10 = 0x100;
    
    if (gUnknown_030012E0 & 0x200)
    {
        gUnknown_030009B0.unk12 = 0xFF00;
        gUnknown_030009B0.unk10 = 0xFF00;
    }
    else if (gUnknown_030012E0 & 0x100)
    {
        gUnknown_030009B0.unk12 = 0x100;
        gUnknown_030009B0.unk10 = 0x100;
    }
    
    arr[0] = gUnknown_030009B0.unk0;
    arr[1] = gUnknown_030009B0.unk4;
    arr[2] = gUnknown_030009B0.unk0 + 0x800;
    arr[3] = gUnknown_030009B0.unk4 + 0x1000;
    
    if (gUnknown_030009B0.unk12 != 0)
    {
        if (sub_080066FC(arr, gUnknown_030009B0.unk12, 0, 0) != 0)
            gUnknown_030009B0.unk12 = 0;
    }
    
    gUnknown_030009B0.unk0 += gUnknown_030009B0.unk12;
    arr[0] += gUnknown_030009B0.unk12;
    arr[2] += gUnknown_030009B0.unk12;
    gUnknown_030009B0.unk8 = 0;
    
    if (gUnknown_030009B0.unk10 != 0)
    {
        if (sub_080066FC(arr, 0, gUnknown_030009B0.unk10, 0) != 0)
            gUnknown_030009B0.unk10 = 0;
    }
    
    gUnknown_030009B0.unk4 += gUnknown_030009B0.unk10;
    if (gUnknown_030009B0.unk10 > 0x200)
        gUnknown_030009B0.unk10 = 0x200;
    if ((gUnknown_030009B0.unk4 >> 8) > 159)
    {
        gUnknown_030009B0.unk4 = 0;
        gUnknown_030009B0.unk10 = 0;
    }
}
