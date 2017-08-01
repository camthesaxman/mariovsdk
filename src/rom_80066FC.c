#include "gba/gba.h"
#include "global.h"

int sub_080066FC(u32 *a, int b, int c, int d)
{
    return gUnknown_03000964(a, b, c, d);
}

/*
int sub_08006710(s32 *a)
{
    u32 r4 = (a[1] >> 11) * 64;
    u32 r5 = (a[3] >> 11) * 64;
    u32 r7 = (a[0] >> 11);
    u32 r6 = (a[2] >> 11);
    
    if (r6 > 63)
        r6 = 63;
    if (r5 > 0xFBF)
        r5 = 0xFC0;
    while (r4 <= r5)
    {
        u32 r2 = r4 + r7;
        u32 r3 = r4 + r6;
        
        while (r2 <= r3)
        {
            if (gUnknown_0807820C[0x400C + r2] == 4)
                return 1;
            r2++;
        }
        r4 += 64;
    }
    return 0;
}
*/