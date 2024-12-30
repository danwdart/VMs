$QEMU_X86_64 $QEMU_USB $QEMU_VIRTIO_PERIPH $QEMU_OVMF $QEMU_DISP_GL $QEMU_BALLOON -m 2G \
    -drive file=chimera.img,format=raw,if=none,id=hd \
    -drive file=chimera-linux-x86_64-LIVE-20241204-plasma.iso,format=raw,if=none,id=cd,media=cdrom \
    -device usb-storage,drive=hd \
    -device usb-storage,drive=cd
