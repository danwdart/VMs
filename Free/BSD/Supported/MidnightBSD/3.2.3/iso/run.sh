$QEMU_X86_64 \
    -drive file=midnightbsd.img,id=hd,format=raw \
    -device qemu-xhci $QEMU_USB $QEMU_DISP_GL -m 2G $QEMU_OVMF
