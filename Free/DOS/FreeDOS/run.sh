$QEMU_I386 -m 32 $QEMU_DISP_STD $QEMU_USB fd.img -device usb-storage,drive=usb -drive file=FD13FULL.img,if=none,id=usb -boot menu=on
