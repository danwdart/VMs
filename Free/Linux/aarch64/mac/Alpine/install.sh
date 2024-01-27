qemu-system-aarch64 -M virt,accel=hvf -m 1G -cpu host -serial stdio -smp cores=8 \
    $QEMU_SND \
    $QEMU_VIRTIO_PERIPH \
    $QEMU_USB \
    $QEMU_BALLOON \
    $QEMU_DISP_GPU_GL \
    $QEMU_AAVMF \
    -drive file=alpine-standard-3.19.1-aarch64.iso,if=none,id=cd \
    -device virtio-blk-device,drive=cd \
    -drive file=alpine.img,if=none,id=hd \
    -device virtio-blk-device,drive=hd