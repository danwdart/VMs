qemu-system-aarch64 -M virt,accel=hvf -m 16G -cpu host -serial stdio -smp cores=8 \
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
    -drive file=sd.img,format=raw,if=none,id=sd \
    -device virtio-blk-device,drive=sd \
    -nic vmnet-bridged,ifname=en0,mac=52:54:00:12:34:56,model=virtio-net-pci \
    -boot menu=on