$QEMU_X86_64 -m 2G $QEMU_DISP_GL $QEMU_VIRTIO_PERIPH $QEMU_OVMF -nic user $QEMU_SND \
    -drive file=hello.img,format=raw \
    -boot menu=on

