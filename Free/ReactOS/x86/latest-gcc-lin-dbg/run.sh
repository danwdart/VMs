#!/bin/sh
$QEMU_I386 reactos.img -cdrom reactos*x86*.iso -m 512 -cpu host -smp cores=4,threads=2 $QEMU_USB $QEMU_DISP_STD -monitor stdio
