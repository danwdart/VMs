qemu-system-i386 -m 32 $QEMU_DISP_STD $QEMU_USB \
    -device usb-storage,drive=hd -drive file=fd.img,if=none,id=hd,format=raw \
    -device usb-storage,drive=utils -drive file=utils.img,if=none,id=utils,format=raw
