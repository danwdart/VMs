$QEMU_AARCH64 \
    freebsd.img \
    $QEMU_USB \
    -device usb-storage,drive=installer \
    -drive file=FreeBSD-15.0-CURRENT-arm64-aarch64-20240104-8bf0882e186e-267378-memstick.img,if=none,id=installer \
    $QEMU_DISP_GPU_GL \
    $QEMU_RNG \
    -boot menu=on \
    -m 2G \
    $QEMU_AAVMF
