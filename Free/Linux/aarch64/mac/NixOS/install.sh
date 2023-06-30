qemu-system-aarch64 -M virt,accel=hvf -m 16G -cpu host -serial stdio -smp cores=8 \
    -boot menu=on \
    $QEMU_SND \
    -display cocoa,show-cursor=on \
    $QEMU_VIRTIO_PERIPH \
    -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \
    $QEMU_AAVMF \
    -drive file=nixos-plasma5-23.05pre466020.60c1d71f2ba-aarch64-linux.iso,if=none,id=cd \
    -drive file=nixos.img,if=none,id=hd \
    -device virtio-blk-device,drive=hd \
    -device virtio-blk-device,drive=cd