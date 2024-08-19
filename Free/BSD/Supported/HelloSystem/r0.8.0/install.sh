$QEMU_X86_64 -m 2G $QEMU_DISP_GL $QEMU_VIRTIO_PERIPH $QEMU_OVMF -nic user \
    $QEMU_SND \
    -drive file=hello.img,format=raw \
    -drive file=hello-0.8.0_0H284-FreeBSD-13.1-amd64.iso,format=raw,media=cdrom \
    -boot menu=on

