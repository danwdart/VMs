$QEMU_I386 -m 128 $QEMU_DISP_STD -device qemu-xhci $QEMU_USB \
    -device usb-storage,drive=hd -drive file=svardos.img,id=hd,if=none,format=raw \
    -nic user,model=e1000
