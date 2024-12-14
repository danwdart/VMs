$QEMU_X86_64 dfly.img $QEMU_USB -device usb-storage,drive=usb -drive file=DragonFly-x86_64-LATEST-IMG.img,if=none,id=usb $QEMU_DISP_GL -boot menu=on -m 2G $QEMU_OVMF
