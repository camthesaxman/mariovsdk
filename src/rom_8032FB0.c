#include "gba/gba.h"

/*
struct Struct807DD94
{
    u16 *unk0;
};
*/

extern u16 *const gUnknown_0807DD94[];

extern u16 gUnknown_03000EA0[];
extern s16 gUnknown_030012E0;
extern u16 gUnknown_030012E8;
extern s16 gUnknown_030012F8;
extern u8 gUnknown_03001744;
extern u32 gUnknown_03001938;
extern u32 gUnknown_030019A0;
extern u32 gUnknown_03001A1C;

void sub_08032FB0(void)
{
    int i;
    u16 *ptr2 = gUnknown_03000EA0;
    u16 *ptr = ptr2;
    
    for (i = 0; i < 32; i++)
    {
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x100;
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x100;
    }
    CpuCopy16(ptr2, (void *)OAM, 0x400);
}

/*
void sub_08033024(void)
{
    if (gUnknown_030012E8 == 8 || gUnknown_030012E8 == 2)
    {
        sub_080070E8(12, 1);
        gUnknown_030012F8 = 0;
        gUnknown_030012E0 = 0;
        gUnknown_030012E8 = 0;
        sub_08071990(22, 8, 16, 64, 0, 128, 0);
        return;
    }
    
    if (!(gUnknown_03001A1C & 0x2000))
        return;
    if (gUnknown_0807DD94[0][0] > gUnknown_030012F8)
    {
        //u16 *r7;
        
        gUnknown_030012E8 = gUnknown_0807DD94[gUnknown_030012F8];
        gUnknown_030012E0 = gUnknown_0807DD94[gUnknown_030012F8];
        //r7 = &gUnknown_030012E0;
        if ((gUnknown_030012E0 & 0x200) && (gUnknown_030012E8 & 0x40))
        {
            sub_080070E8(0, 18);
            gUnknown_030012F8 = 0;
            gUnknown_030012E0 = 0;
            gUnknown_030012E8 = 0;
            gUnknown_030019A0 |= 0x200000;
            gUnknown_03001744 = 1;
        }
        else
        {
            sub_0806D1AC(gUnknown_030012E8, gUnknown_030012E0);
            if (gUnknown_03001938 & 0x800)
            {
                sub_0800EE70();
                return;
            }
            else
            {
                //_08033118
                gUnknown_030012F8++;
                return;
            }
        }
    }
    //_08033128
    else
    {
        sub_080070E8(6, 0);
        gUnknown_030012F8 = 0;
        gUnknown_030012E0 = 0;
        gUnknown_030012E8 = 0;
    }
}
*/

/*
void sub_08033440(void)
{
    if (gUnknown_030012A0 < 0)
        gUnknown_030012A0 = 0;
    if ((gUnknown_030012A0 >> 1) >= gUnknown_03001720)
        gUnknown_030012A0 = gUnknown_03001720 - 480;
    
    if (gUnknown_03001710 < 0)
        gUnknown_03001710 = 0;
    if ((gUnknown_03001710 >> 1) >= gUnknown_0300170C)
        gUnknown_03001710 = gUnknown_0300170C - 320;
    
    gUnknown_03001724 = gUnknown_030012A0 >> 1;
    gUnknown_030012F4 = gUnknown_03001710 >> 1;
}
*/
