# https://gnats.netbsd.org/56361
# NetBSD dies due to a SSE2 bug.
$QEMU_X86_64_NETBSD -device qemu-xhci $QEMU_USB \
    -device usb-storage,drive=hd -drive file=netbsd.img,if=none,id=hd,format=raw \
    -device usb-storage,drive=installer -drive file=NetBSD-10.99.12-amd64-install.img,if=none,id=installer,format=raw \
    $QEMU_DISP_GL -boot menu=on -m 2G $QEMU_OVMF
