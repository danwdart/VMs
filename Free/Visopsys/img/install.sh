$QEMU_I386 -m 256 $QEMU_USB2 \
    visopsys.img \
    -drive file=visopsys-0.92-x86-usb.img,if=none,id=install -device usb-storage,drive=install \
    $QEMU_DISP_STD \
    -boot menu=on