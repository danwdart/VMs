$QEMU_RISCV64 \
    -device virtio-blk-device,drive=hd \
    -drive file=artifacts/image.qcow2,if=none,id=hd \
    -device virtio-net-device,netdev=net \
    -netdev user,id=net,hostfwd=tcp::2222-:22 \
    -kernel artifacts/kernel \
    -initrd artifacts/initrd \
    -append "root=LABEL=rootfs" \
    $QEMU_RNG \
    $QEMU_DISP_GL \
    $QEMU_VIRTIO_PERIPH