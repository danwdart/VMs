$QEMU_X86_64 \
    -m 8G \
    $QEMU_USB \
    $QEMU_DISP_GL \
    $QEMU_VIRTIO_PERIPH \
    -nic user,model=virtio \
    $QEMU_SND \
    -drive file=SSD128G.img,id=hd \
    $QEMU_BALLOON \
    -boot menu=on