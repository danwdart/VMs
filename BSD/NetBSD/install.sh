# https://gnats.netbsd.org/56361
# NetBSD dies due to a SSE2 bug.
$QEMU_X86_64_BSD netbsd.img $QEMU_USB -device usb-storage,drive=installer -drive file=NetBSD-9.2-amd64-install.img,if=none,id=installer $QEMU_DISP_GL -boot menu=on -m 2048 $QEMU_OVMF
