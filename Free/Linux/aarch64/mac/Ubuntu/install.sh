qemu-system-aarch64 -M virt,accel=hvf -m 16G -cpu host -serial stdio -smp cores=8 \
    -boot menu=on \
    $QEMU_SND \
    -display cocoa,show-cursor=on \
    $QEMU_VIRTIO_PERIPH \
    $QEMU_USB \
    $QEMU_BALLOON \
    -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \
    $QEMU_AAVMF \
    -drive file=noble-desktop-arm64.iso,if=none,id=cd \
    -drive file=ubuntu.img,if=none,id=hd \
    -device virtio-blk-device,drive=hd \
    -device virtio-blk-device,drive=cd