qemu-system-aarch64 -M virt,accel=hvf -m 16G -cpu host -smp cores=8 \
    $QEMU_SND \
    $QEMU_VIRTIO_PERIPH \
    $QEMU_USB \
    $QEMU_BALLOON \
    $QEMU_DISP_GPU_GL \
    $QEMU_AAVMF \
    -drive file=nixos.img,if=none,id=hd \
    -device virtio-blk-device,drive=hd \
    -drive file=sd.img,format=raw,if=none,id=sd \
    -device virtio-blk-device,drive=sd \
    -nic user,model=virtio-net-pci,hostfwd=tcp::2222-:22 \
    -nographic