#include "gba/gba.h"
#include "global.h"

struct Struct30009B0
{
    s32 unk0;
    s32 unk4;
    u8 unk8;
    s16 unk10;
    s16 unk12;
};

extern u32 gUnknown_03000020;
extern u32 gUnknown_03000024;
extern u8 gUnknown_03000B64;
extern u32 gUnknown_03000B70;
extern u8 gUnknown_03000B78;
extern struct Struct30009B0 gUnknown_030009B0;
extern u32 gUnknown_030009C0;
extern u32 gUnknown_030009C4;
extern u16 gUnknown_030012E0;
extern u8 gUnknown_030012F4;
extern s16 gUnknown_03001724;

extern void (*const gUnknown_0807823C[])(void);
extern const u32 gUnknown_0807846C[];
extern const u32 gUnknown_08078354[];
extern void (*const gUnknown_080782C8[])(void);
extern void (*const gUnknown_080783E0[])(void);

extern void sub_0801500C();
extern void sub_08033C38(void);
extern void sub_08033CE0(void);
extern void sub_08033EA0();
extern void sub_08033EE0(void);

int sub_080066FC();
void main_loop(void);

// 0x08006DF8
void AgbMain(void)
{
    sub_08033CE0();  
    gUnknown_03000B64 = 0;
    gUnknown_03000B78 = 0;
    gUnknown_030009C4 = 34;
    sub_08033C38();
    main_loop();
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

void sub_08006F5C(u32 a, u32 b)
{
    CpuFill16(0, &gUnknown_030009B0, 4);
    gUnknown_030009B0.unk0 = a << 8;
    gUnknown_030009B0.unk4 = b << 8;
}

void sub_08006F90(void)
{
    struct OamData *oam = &gUnknown_03000EA0;
    s32 x;
    s32 y;
    
    x = ((gUnknown_030009B0.unk0 >> 8) - gUnknown_03001724 - 4) & 0xFF;
    oam->x = x;
    y = (gUnknown_030009B0.unk4 >> 8) - gUnknown_030012F4;
    oam->y = y;
    oam->affineMode = 0;
    oam->tileNum = 0;
}

// 0x08006FF0
void main_loop(void)
{
    gUnknown_030009C0 = gUnknown_030009C4;
    gUnknown_03000B70 = 0;
    
    while (1)
    {
        gUnknown_03000020 = gUnknown_030009C0;
        if (gUnknown_0807823C[gUnknown_03000020] != NULL)
            gUnknown_0807823C[gUnknown_03000020]();
        if (gUnknown_030009C0 == 19 || gUnknown_030009C0 == 15)
        {
            gUnknown_030009C0 = 13;
            gUnknown_03000020 = 13;
            gUnknown_030009C4 = 13;
        }
        else if (gUnknown_030009C0 == 6)
        {
            gUnknown_030009C0 = 5;
            gUnknown_03000020 = 5;
            gUnknown_030009C4 = 5;
        }
        sub_0801500C(gUnknown_0807846C[gUnknown_03000020]);
        sub_08033EA0(gUnknown_08078354[gUnknown_03000020]);
        
        while (gUnknown_030009C4 == gUnknown_03000020 && gUnknown_03000024 == 0)
        {
            if (gUnknown_080782C8[gUnknown_03000020] != NULL)
                gUnknown_080782C8[gUnknown_03000020]();
            sub_08033EE0();
        }
        gUnknown_03000024 = 0;
        if (gUnknown_080783E0[gUnknown_03000020] != NULL)
            gUnknown_080783E0[gUnknown_03000020]();
        gUnknown_030009C0 = gUnknown_030009C4;
    }
}

extern s8 gUnknown_03000BB4;
extern u16 gUnknown_03001708;
extern u16 gUnknown_030012E8;
extern u32 gUnknown_030009CC;
extern u32 gUnknown_030009C8;

void sub_080070E8(s32 a, s32 b)
{
    if (gUnknown_030009C4 != 31)
    {
        if (gUnknown_03000BB4 != 0 && a == 8)
            a = 24;
        if (b == 0)
        {
            gUnknown_030009C4 = a;
        }
        else
        {
            gUnknown_030009CC = a;
            gUnknown_030009C8 = gUnknown_030009C4;
            gUnknown_030009C4 = 31;
        }
        
        gUnknown_03000024 = 1;
        gUnknown_030012E8 = gUnknown_03001708 = 0;
    }
}
