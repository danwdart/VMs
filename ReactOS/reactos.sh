#!/bin/sh
qemu-system-i386 reactos.qcow2 -cdrom reactos-bootcd-0.4.15-dev-2894-gd066dae-x86-gcc-lin-rel.iso -m 512 -enable-kvm -cpu host -usb -device usb-tablet -device usb-kbd
