$QEMU_X86_64 $QEMU_USB2 \
    -drive file=solaris.img,id=hd,format=raw \
    -drive file=sol-11_4-text-x86.iso,id=installer,format=raw,media=cdrom \
    $QEMU_DISP_GL -boot menu=on -m 2G $QEMU_OVMF
