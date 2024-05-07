#!/bin/sh
$QEMU_X86_64 reactos.img -cdrom reactos*x64*.iso -m 128 $QEMU_USB2 -monitor stdio
