$QEMU_X86_64 dfly.img $QEMU_USB -device usb-storage,drive=usb -drive file=dfly-x86_64-6.2.2_REL.img,if=none,id=usb $QEMU_DISP_GL -boot menu=on -m 2G $QEMU_OVMF
