qemu-system-aarch64 -M virt,accel=hvf -m 8G -cpu host -serial stdio -smp cores=8 \
    -boot menu=on \
    -device ich9-intel-hda \
    -device hda-micro \
    -display cocoa,show-cursor=on \
    $QEMU_VIRTIO_PERIPH \
    -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \
    $QEMU_AAVMF \
    -drive file=NetBSD-9.3-evbarm-aarch64.iso,if=none,id=cd \
    -drive file=netbsd.img,if=none,id=hd \
    -drive file=fat:efi,id=boot,if=none,readonly=on \
    -device virtio-blk-device,drive=hd \
    -device virtio-blk-device,drive=cd \
    -device virtio-blk-device,drive=boot