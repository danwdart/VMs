sudo qemu-system-aarch64 -M virt,accel=hvf -m 16G -cpu host -serial stdio -smp cores=8 \
    -boot menu=on \
    -device ich9-intel-hda \
    -device hda-micro \
    -display cocoa,show-cursor=on \
    $QEMU_VIRTIO_PERIPH \
    -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \
    $QEMU_AAVMF \
    -drive file=nixos.img,if=none,id=hd \
    -device virtio-blk-device,drive=hd \
    -nic vmnet-bridged,ifname=en0 # ,model=virtio-net-pci