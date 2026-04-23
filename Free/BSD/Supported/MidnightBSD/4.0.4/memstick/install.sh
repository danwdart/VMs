$QEMU_X86_64 -device qemu-xhci $QEMU_USB \
    -drive file=midnightbsd.img,id=hd,format=raw \
    -drive file=MidnightBSD-4.0.4--amd64-memstick.img,id=installer,format=raw \
    $QEMU_DISP_GL -boot menu=on -m 2G $QEMU_OVMF
