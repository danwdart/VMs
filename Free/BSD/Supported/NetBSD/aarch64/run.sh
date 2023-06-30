qemu-system-aarch64 -M virt,accel=hvf,acpi=off -m 8G -cpu host -serial stdio -smp cores=8 \
    -boot menu=on \
    $QEMU_SND \
    -display cocoa,show-cursor=on \
    $QEMU_VIRTIO_PERIPH \
    -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \
    $QEMU_AAVMF \
    -drive file=netbsd.img,if=none,id=hd \
    -drive file=arm64.img,id=install,if=none,readonly=on \
    -device virtio-blk-device,drive=hd \
    -device virtio-blk-device,drive=install