$QEMU_X86_64 openbsd.img $QEMU_USB -device usb-storage,drive=installer -drive file=install72.img,if=none,id=installer $QEMU_DISP_GL -boot menu=on -m 2048 $QEMU_OVMF
