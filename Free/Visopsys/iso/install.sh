$QEMU_I386 -m 256 $QEMU_USB2 \
    visopsys.img \
    -cdrom visopsys-0.92-x86.iso \
    $QEMU_DISP_STD \
    -boot d