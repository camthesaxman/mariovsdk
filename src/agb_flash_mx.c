#include "gba/gba.h"
#include "gba/flash_internal.h"

/*
const u16 mxMaxTime[] =
{
      10, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
      10, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
    2000, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
    2000, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
};

const struct FlashSetupInfo MX29L010 =
{
    ProgramFlashByte_MX,
    ProgramFlashSector_MX,
    EraseFlashChip_MX,
    EraseFlashSector_MX,
    WaitForFlashWrite_Common,
    mxMaxTime,
    {
        131072, // ROM size
        {
            4096, // sector size
              12, // bit shift to multiply by sector size (4096 == 1 << 12)
              32, // number of sectors
               0  // appears to be unused
        },
        { 3, 1 }, // wait state setup data
#if defined(GERMAN) && defined(SAPPHIRE)
        { { 0xBF, 0xD4 } } // ID
#else
        { { 0xC2, 0x09 } } // ID
#endif
    }
};

const struct FlashSetupInfo DefaultFlash =
{
    ProgramFlashByte_MX,
    ProgramFlashSector_MX,
    EraseFlashChip_MX,
    EraseFlashSector_MX,
    WaitForFlashWrite_Common,
    mxMaxTime,
    {
        131072, // ROM size
        {
            4096, // sector size
              12, // bit shift to multiply by sector size (4096 == 1 << 12)
              32, // number of sectors
               0  // appears to be unused
        },
        { 3, 1 }, // wait state setup data
        { { 0x00, 0x00 } } // ID of 0
    }
};
*/

u16 EraseFlashChip_MX(void)
{
    u16 result;
    u16 readFlash1Buffer[0x20];

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x80);
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x10);

    SetReadFlash1(readFlash1Buffer);

    result = WaitForFlashWrite(3, FLASH_BASE, 0xFF);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

u16 EraseFlashSector_MX(u16 sectorNum)
{
    u16 numTries;
    u16 result;
    u8 *addr;
    u16 readFlash1Buffer[0x20];

    if (sectorNum > 15)
        return 0x80FF;

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];

    addr = FLASH_BASE + (sectorNum << gFlash->sector.shift);

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x80);
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    *addr = 0x30;

    SetReadFlash1(readFlash1Buffer);

    result = WaitForFlashWrite(2, addr, 0xFF);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

/*static*/ u16 ProgramByte(u8 *src, u8 *dest)
{
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xA0);
    *dest = *src;

    return WaitForFlashWrite(1, dest, *src);
}

u32 sub_080746F4();

u32 sub_080746D0();

u16 ProgramFlashSector_MX(u16 sectorNum, u8 *src)
{
    u16 result;
    u8 *dest;
    u16 buffer[0x30];
    u16 *funcSrc;
    u16 *funcDest;
    u8 i;
    u8 r6;
    u16 size;

    if (sectorNum > 15)
        return 0x80FF;

    dest = FLASH_BASE + (sectorNum << gFlash->sector.shift);
    
    // Copy function code into the buffer
    funcSrc = (u16 *)((s32)sub_080746D0 & ~1);
    funcDest = buffer;
    size = ((s32)sub_080746F4 - (s32)sub_080746D0);
    while (size != 0)
    {
        *funcDest++ = *funcSrc++;
        size -= sizeof(u16);
    }
    
    i = 0;
    while ((result = EraseFlashSector_MX(sectorNum)) != 0
     ||    (result = sub_080746F4(dest, (u32)buffer + 1)) != 0)
    {
        i++;
        if (i == 81)
            return result;
    }
    
    r6 = 1;
    if (i != 0)
        r6 = 6;
    for (i = 1; i <= r6; i++)
        EraseFlashSector_MX(sectorNum);
    
    SetReadFlash1(buffer);
    
    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];
    
    gFlashNumRemainingBytes = gFlash->sector.size;
    
    while (gFlashNumRemainingBytes > 0)
    {
        result = ProgramByte(src, dest);

        if (result != 0)
            break;

        gFlashNumRemainingBytes--;
        src++;
        dest++;
    }
    
    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

u32 sub_080746D0(u8 *buffer)
{
    u32 size = gFlash->sector.size;
    
    while (size != 0)
    {
        if (*buffer++ != 0xFF)
            break;
        size--;
    }
    return size;
}

u32 sub_080746F4(u8 *buffer, u32 (*func)(u8 *))
{
    if (func(buffer) != 0)
        return 0x8004;
    else
        return 0;
}

u32 sub_0807470C(u16 offset, u8 *src)
{
    // TODO: fix this
    register u32 result asm("r5");
    //u32 result;
    u8 *dest;
    u16 buffer[0x20];
    
    if (offset >= gFlash->sector.count)
        return 0x80FF;
    
    result = EraseFlashSector_MX(offset);
    if (result == 0)
    {
        SetReadFlash1(buffer);
        
        REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];
        
        gFlashNumRemainingBytes = gFlash->sector.size;
        dest = FLASH_BASE + (offset << gFlash->sector.shift);
        while (gFlashNumRemainingBytes > 0)
        {
            result = ProgramByte(src, dest);

            if (result != 0)
                break;

            gFlashNumRemainingBytes--;
            src++;
            dest++;
        }
        
        REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;
    }
    
    return result;
}


