#!/bin/sh
qemu-system-x86_64 reactos.img -cdrom reactos*x64*.iso -m 128 $QEMU_USB2 -monitor stdio
