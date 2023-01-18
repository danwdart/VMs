$QEMU_X86_64 -device qemu-xhci $QEMU_USB \
    -drive file=freebsd.img,id=hd,format=raw \
    -drive file=FreeBSD-13.1-RELEASE-amd64-memstick.img,id=installer,format=raw \
    $QEMU_DISP_GL -boot menu=on -m 2048 $QEMU_OVMF
