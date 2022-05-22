$QEMU_X86_64_BSD freebsd.img $QEMU_USB -device usb-storage,drive=installer -drive file=FreeBSD-13.1-RELEASE-amd64-memstick.img,if=none,id=installer $QEMU_DISP_GL -boot menu=on -m 2048 $QEMU_OVMF
