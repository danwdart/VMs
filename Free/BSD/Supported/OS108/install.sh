# https://gnats.os108.org/56361
# NetBSD dies due to a SSE2 bug.
$QEMU_X86_64_NETBSD os108.img $QEMU_USB -device usb-storage,drive=installer -drive file=OS108-9-1_XFCE4_amd64_USB.img,if=none,id=installer $QEMU_DISP_GL -boot menu=on -m 2048 $QEMU_OVMF
