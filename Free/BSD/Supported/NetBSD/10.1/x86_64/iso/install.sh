# https://gnats.netbsd.org/56361
# NetBSD dies due to a SSE2 bug.
$QEMU_X86_64 netbsd.img $QEMU_USB -cdrom NetBSD-10.1-amd64.iso $QEMU_DISP_GL -boot menu=on -m 2G $QEMU_OVMF
