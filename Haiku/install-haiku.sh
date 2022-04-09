$QEMU_X86_64 -usb -m 1024 haiku.img -cdrom haiku-r1beta3-x86_64-anyboot.iso -device usb-tablet -device usb-kbd -boot d $QEMU_OVMF
