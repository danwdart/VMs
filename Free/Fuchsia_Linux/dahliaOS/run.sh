$QEMU_X86_64 $QEMU_VIRTIO_PERIPH -usb $QEMU_OVMF $QEMU_DISP_GL $QEMU_BALLOON dahliaos.img -device usb-storage,drive=usb -drive file=dahliaOS_220222_efi.img,if=none,id=usb -m 1G
