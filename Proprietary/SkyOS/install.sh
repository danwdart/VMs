$QEMU_X86 $QEMU_USB2 -m 2G \
    skyos.img \
    -cdrom retail.iso \
    -boot d $QEMU_BALLOON $QEMU_DISP_STD
