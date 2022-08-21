$QEMU_X86 -m 2048 -device virtio-vga $QEMU_VIRTIO_PERIPH -device virtio-net -device ich9-intel-hda -device hda-output win10.img -cdrom Win10_21H2_EnglishInternational_x32.iso
