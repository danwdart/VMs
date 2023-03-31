qemu-system-aarch64 -M virt,accel=hvf -m 8G -cpu host -smp cores=8 \
    -no-acpi \
    -boot menu=on \
    -device ich9-intel-hda \
    -device hda-micro \
    -display cocoa,show-cursor=on \
    $QEMU_USB \
    -device ramfb \
    -device VGA,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \
    $QEMU_AAVMF \
    -drive file=freebsd.img,if=none,id=hd \
    -drive file=FreeBSD-13.2-RC5-arm64-aarch64-memstick.img,id=install,if=none,readonly=on \
    -device virtio-blk-device,drive=hd \
    -device virtio-blk-device,drive=install