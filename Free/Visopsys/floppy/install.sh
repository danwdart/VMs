$QEMU_I386 -m 256 $QEMU_USB2 \
    visopsys.img \
    -fda visopsys-0.92-x86-floppy.img \
    $QEMU_DISP_STD \
    -boot a