qemu-system-aarch64 -M virt,accel=hvf -m 16G -cpu host -serial stdio -smp cores=8 \
    -boot menu=on \
    $QEMU_SND \
    $QEMU_VIRTIO_PERIPH \
    $QEMU_USB \
    $QEMU_BALLOON \
    $QEMU_DISP_GPU_GL \
    $QEMU_AAVMF \
    -drive file=nixos.img,if=none,id=hd \
    -device virtio-blk-device,drive=hd,serial=hd \
    -drive file=nixos-broken.img,if=none,id=broken \
    -device virtio-blk-device,drive=broken,serial=broken \
    -nic user,model=virtio-net-pci \
    -boot menu=on