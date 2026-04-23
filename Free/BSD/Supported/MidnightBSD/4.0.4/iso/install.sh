$QEMU_X86_64 -device qemu-xhci $QEMU_USB \
    -drive file=midnightbsd.img,id=hd,format=raw \
    -drive file=MidnightBSD-4.0.4--amd64-disc1.iso,id=installer,format=raw,media=cdrom \
    $QEMU_DISP_GL -boot menu=on -m 2G $QEMU_OVMF
