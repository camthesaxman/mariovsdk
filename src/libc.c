/*
 * This implementation of C library functions comes from newlib version 1.8.2
 */

#include <stddef.h>

#define LBLOCKSIZE (sizeof(long))

// Nonzero if (long)X contains a NULL byte.
#define CONTAINSNULL(X) (((X) - 0x01010101) & ~(X) & 0x80808080)

// Nonzero if X is not aligned on a "long" boundary.
#define UNALIGNED(X) ((long)X & (LBLOCKSIZE - 1))

void *memcpy(void *dst0, const void *src0, size_t len0)
{
    char *dst = dst0;
    const char *src = src0;
    long *aligned_dst;
    const long *aligned_src;
    unsigned int len = len0;

    // If the size is small, or either src or dst is unaligned,
    // then go to the byte copy loop. This should be rare.
    if (len >= 16 && !(UNALIGNED(src) | UNALIGNED(dst)))
    {
        aligned_dst = (long *)dst;
        aligned_src = (long *)src;

        // Copy 4X long words at a time if possible.
        while (len >= 16)
        {
            *aligned_dst++ = *aligned_src++;
            *aligned_dst++ = *aligned_src++;
            *aligned_dst++ = *aligned_src++;
            *aligned_dst++ = *aligned_src++;
            len -= 16;
        }

        // Copy one long word at a time if possible
        while (len >= 4)
        {
            *aligned_dst++ = *aligned_src++;
            len -= 4;
        }

        dst = (char *)aligned_dst;
        src = (char *)aligned_src;
    }

    // Pick up any remaining bytes with a byte copier.
    while (len--)
        *dst++ = *src++;

    return dst0;
}

void *memset(void *m, int c, size_t n)
{
    char *s = (char *)m;
    int count, i;
    unsigned long buffer;
    unsigned long *aligned_addr;
    unsigned char *unaligned_addr;

    // If the size is small or m is unaligned,
    // then go to the byte copy loop. This should be rare.
    if (n >= LBLOCKSIZE && !UNALIGNED(m))
    {
        // We know that n is large and m is word-aligned.
        aligned_addr = (unsigned long *)m;

        // Store C into each char sized location in buffer so that
        // we can set large blocks quickly.
        c &= 0xFF;
        if (LBLOCKSIZE == 4)
        {
            buffer = (c << 8) | c;
            buffer |= (buffer << 16);
        }
        else
        {
            buffer = 0;
            for (i = 0; i < LBLOCKSIZE; i++)
                buffer = (buffer << 8) | c;
        }

        while (n >= LBLOCKSIZE * 4)
        {
            *aligned_addr++ = buffer;
            *aligned_addr++ = buffer;
            *aligned_addr++ = buffer;
            *aligned_addr++ = buffer;
            n -= LBLOCKSIZE * 4;
        }
        while (n >= LBLOCKSIZE)
        {
            *aligned_addr++ = buffer;
            n -= LBLOCKSIZE;
        }

        s = (char *)aligned_addr;
    }

    // Pick up the remainder with a bytewise loop.
    while (n--)
        *s++ = (char)c;

    return m;
}

size_t strlen(const char *str)
{
    const char *start = str;
    unsigned long *aligned_addr;

    if (!UNALIGNED (str))
    {
        /* If the string is word-aligned, we can check for the presence of 
           a null in each word-sized block.  */
        aligned_addr = (unsigned long*)str;
        while (!CONTAINSNULL (*aligned_addr))
            aligned_addr++;

        /* Once a null is detected, we check each byte in that block for a
           precise position of the null.  */
        str = (char*)aligned_addr;
    }
 
    while (*str)
        str++;
    return str - start;
}

// HACK: Force assembler to pad with 0 instead of nop
asm(".align 2, 0");
