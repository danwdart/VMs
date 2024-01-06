sudo diskutil unmountDisk /dev/rdisk4
sudo qemu-system-aarch64 -M virt,accel=hvf -m 16G -cpu host -serial stdio -smp cores=8 \
    -boot menu=on \
    $QEMU_SND \
    -display cocoa,show-cursor=on \
    $QEMU_VIRTIO_PERIPH \
    $QEMU_USB \
    $QEMU_BALLOON \
    $QEMU_DISP_GPU_GL \
    $QEMU_AAVMF \
    -drive file=nixos-plasma5-24.05pre564493.b0d36bd0a420-aarch64-linux.iso,if=none,id=cd \
    -device virtio-blk-device,drive=cd \
    -drive file=/dev/rdisk4,format=raw,if=none,id=sd \
    -device virtio-blk-device,drive=sd