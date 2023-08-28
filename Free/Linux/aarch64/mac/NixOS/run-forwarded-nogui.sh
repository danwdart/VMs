qemu-system-aarch64 -M virt,accel=hvf -m 16G -cpu host -smp cores=8 \
    -boot menu=on \
    $QEMU_SND \
    -display cocoa,show-cursor=on \
    $QEMU_VIRTIO_PERIPH \
    $QEMU_USB \
    $QEMU_BALLOON \
    $QEMU_DISP_GPU_GL \
    $QEMU_AAVMF \
    -drive file=nixos.img,if=none,id=hd \
    -device virtio-blk-device,drive=hd \
    -nic user,mac=52:54:00:12:34:56,model=virtio-net-pci,hostfwd=tcp::2222-:22 \
    -nographic