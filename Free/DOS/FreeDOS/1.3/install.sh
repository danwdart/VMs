$QEMU_I386 -m 128 $QEMU_DISP_STD -device qemu-xhci $QEMU_USB \
    -drive file=fd.img,id=hd,format=raw \
    -drive file=FD13FULL.img,id=install,format=raw \
    -boot menu=on
