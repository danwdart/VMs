#!/bin/sh
$QEMU_I386 reactos.img -cdrom reactos*x86*.iso -m 512 -cpu host $QEMU_USB $QEMU_DISP_STD -monitor stdio
