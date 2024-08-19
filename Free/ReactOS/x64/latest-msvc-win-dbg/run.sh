#!/bin/sh   
$QEMU_X86_64_PC reactos.img -cdrom reactos*x64*.iso -m 256 -cpu host  $QEMU_USB2 -monitor stdio $QEMU_DISP_STD