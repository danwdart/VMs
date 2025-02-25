$QEMU_I386 -m 128 $QEMU_DISP_STD -device qemu-xhci $QEMU_USB \
    -device usb-storage,drive=hd -drive file=fd.img,if=none,id=hd,format=raw \
    -device usb-storage,drive=install -drive file=FD14FULL.img,if=none,id=install,format=raw \
    -boot menu=on
