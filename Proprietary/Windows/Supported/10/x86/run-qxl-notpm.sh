$QEMU_X86 -m 4096 -usb $QEMU_DISP_QXL -device usb-kbd -device usb-tablet $QEMU_SND win10.img -cdrom Win10_21H2_EnglishInternational_x32.iso -drive file=virtio-win-*.iso,media=cdrom
