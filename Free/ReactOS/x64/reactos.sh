#!/bin/sh
qemu-system-x86_64 reactos.img -cdrom reactos*x64*.iso -m 128 -enable-kvm -cpu host -usb -device usb-tablet -device usb-kbd -monitor stdio
