# https://gnats.netbsd.org/56361
# NetBSD dies due to a SSE2 bug.
$QEMU_X86_64_NOSSE2 -device qemu-xhci $QEMU_USB \
    -drive file=netbsd.img,id=hd,format=raw \
    -drive file=NetBSD-9.3-amd64-install.img,id=installer,format=raw \
    $QEMU_DISP_GL -boot menu=on -m 2G $QEMU_OVMF
