#!/bin/sh
qemu-system-i386 reactos.img -cdrom reactos*x86*.iso -m 512 -enable-kvm -cpu host -usb -device usb-tablet -device usb-kbd
