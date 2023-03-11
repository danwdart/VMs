qemu-system-aarch64 -M virt,accel=hvf -m 8G -cpu host -serial stdio -smp cores=8 \
    -boot menu=on \
    -device ich9-intel-hda \
    -device hda-micro \
    -display cocoa,show-cursor=on \
    $QEMU_VIRTIO_PERIPH \
    -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \
    $QEMU_AAVMF \
    -drive file=nixos-plasma5-22.11.2979.47c00341629-aarch64-linux.iso,if=none,id=cd \
    -drive file=nixos.img,if=none,id=hd \
    -device virtio-blk-device,drive=hd \
    -device virtio-blk-device,drive=cd