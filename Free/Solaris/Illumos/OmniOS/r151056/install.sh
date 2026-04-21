$QEMU_X86_64 omnios.img $QEMU_USB -device usb-storage,drive=usb -drive file=omnios-r151056.usb-dd,if=none,id=usb $QEMU_DISP_GL -boot menu=on -m 4G $QEMU_OVMF
