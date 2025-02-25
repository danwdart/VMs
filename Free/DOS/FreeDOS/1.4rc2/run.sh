$QEMU_I386 -m 128 $QEMU_DISP_STD -device qemu-xhci $QEMU_USB \
    -drive file=fd.img,id=hd,if=none,format=raw
