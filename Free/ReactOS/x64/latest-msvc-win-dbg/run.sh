#!/bin/sh   
$QEMU_X86_64 reactos.img -cdrom reactos*x64*.iso -m 512M $QEMU_USB2 -monitor stdio $QEMU_DISP_STD $QEMU_OVMF