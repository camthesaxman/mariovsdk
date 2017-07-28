#!/bin/bash
#
# This is a simple script which compares code at a specified ROM offset
# Usage: ./asmdiff.sh rom_offset size
#

OBJDUMP="$DEVKITARM/bin/arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb"
OPTIONS="--start-address=$(($1)) --stop-address=$(($1 + $2))"
$OBJDUMP $OPTIONS baserom.gba > baserom.dump
$OBJDUMP $OPTIONS mariovsdk.gba > mariovsdk.dump
diff baserom.dump mariovsdk.dump
