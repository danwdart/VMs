$QEMU_X86_64 -m 4G $QEMU_OVMF -usb $QEMU_DISP_QXL -device usb-kbd -device usb-tablet $QEMU_SND win10.img -cdrom Win10_21H2_EnglishInternational_x64.iso -drive file=$VIRTIO_WIN_ISO,media=cdrom
