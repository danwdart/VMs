$QEMU_X86_64 -device qemu-xhci $QEMU_USB \
    -drive file=freebsd.img,id=hd,format=raw \
    $QEMU_DISP_GL -boot menu=on -m 2048 $QEMU_OVMF
