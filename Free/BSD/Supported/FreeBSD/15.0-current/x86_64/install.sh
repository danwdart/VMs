$QEMU_X86_64_NOSSE2 \
    freebsd.img \
    $QEMU_USB \
    -device usb-storage,drive=installer \
    -drive file=FreeBSD-15.0-CURRENT-amd64-20241212-af66ffbf69e4-274168-memstick.img,if=none,id=installer \
    $QEMU_DISP_GPU_GL \
    -boot menu=on \
    -m 2G \
    $QEMU_OVMF
