$QEMU_I386 -m 128 $QEMU_DISP_STD -device qemu-xhci $QEMU_USB \
    -device usb-storage,drive=hd -drive file=fd.img,id=hd,format=raw
