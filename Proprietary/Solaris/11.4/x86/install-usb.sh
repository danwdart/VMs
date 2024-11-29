$QEMU_X86_64 $QEMU_USB \
    -device usb-storage,drive=hd -drive file=solaris.img,if=none,id=hd,format=raw \
    -device usb-storage,drive=installer -drive file=sol-11_4-text-x86.usb,if=none,id=installer,format=raw \
    $QEMU_DISP_GL -boot menu=on -m 2G $QEMU_OVMF
