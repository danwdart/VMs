$QEMU_X86_64 -device qemu-xhci $QEMU_USB \
    -device usb-storage,drive=hd -drive file=freebsd.img,if=none,id=hd,format=raw \
    -device usb-storage,drive=installer -drive file=FreeBSD-13.1-RELEASE-amd64-memstick.img,if=none,id=installer,format=raw \
    $QEMU_DISP_GL -boot menu=on -m 2G $QEMU_OVMF
