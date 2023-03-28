qemu-system-aarch64 -M virt,accel=hvf -m 8G -cpu host -serial stdio -smp cores=8 \
    -no-acpi \
    -boot menu=on \
    -device ich9-intel-hda \
    -device hda-micro \
    -display cocoa,show-cursor=on \
    $QEMU_VIRTIO_PERIPH \
    -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \
    $QEMU_AAVMF \
    -drive file=netbsd.img,if=none,id=hd \
    -drive file=arm64.img,id=install,if=none,readonly=on \
    -device virtio-blk-device,drive=hd \
    -device virtio-blk-device,drive=install