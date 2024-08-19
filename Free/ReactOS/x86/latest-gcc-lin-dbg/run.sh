#!/bin/sh
$QEMU_I386 \
    -drive file=reactos.img,format=raw \
    -drive file=reactos-bootcd-0.4.15-dev-8552-g24517d5-x86-gcc-lin-dbg.iso,media=cdrom,format=raw \
    -m 512 -cpu host -smp cores=4,threads=2 $QEMU_USB2 $QEMU_DISP_STD -monitor stdio
