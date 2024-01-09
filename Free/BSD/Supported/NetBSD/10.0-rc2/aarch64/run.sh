#!/bin/sh
qemu-system-aarch64 -M virt,accel=hvf,highmem=off -m 3G -cpu cortex-a72 -serial stdio -smp cores=8 \
    $QEMU_SND \
    -display cocoa,show-cursor=on \
    $QEMU_USB \
    -device ramfb \
    $QEMU_AAVMF \
    $QEMU_RNG \
    -device virtio-net \
    -drive file=arm64.img,id=hd,if=none \
    -device usb-storage,drive=hd