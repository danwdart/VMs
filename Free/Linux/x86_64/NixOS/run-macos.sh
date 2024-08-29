$QEMU_X86_64_MACOS $QEMU_USB $QEMU_VIRTIO_PERIPH $QEMU_OVMF $QEMU_DISP_GL_MACOS $QEMU_BALLOON -m 4G \
    -drive file=nixos.img,format=raw,if=none,id=hd \
    -drive file=$(readlink nixos-*.iso),format=raw,if=none,id=cd,media=cdrom \
    -device usb-storage,drive=hd \
    -device usb-storage,drive=cd
