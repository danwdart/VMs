#!/bin/sh
$QEMU_I386 \
    -drive file=reactos.img,format=raw \
    -drive file=reactos-bootcd-0.4.15-dev-5726-g13cf4c5-x86-gcc-lin-dbg.iso,media=cdrom,format=raw \
    -m 512 -cpu host -smp cores=4,threads=2 $QEMU_USB $QEMU_DISP_STD -monitor stdio
