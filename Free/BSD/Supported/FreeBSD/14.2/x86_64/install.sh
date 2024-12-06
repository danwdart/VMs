$QEMU_X86_64 freebsd.img $QEMU_USB -device usb-storage,drive=installer -drive file=FreeBSD-14.2-RELEASE-amd64-memstick.img,if=none,id=installer $QEMU_DISP_GL -boot menu=on -m 2G $QEMU_OVMF
