$QEMU_X86_64 -m 2048 $QEMU_OVMF -device virtio-vga $QEMU_VIRTIO_PERIPH -device virtio-net -device ich9-intel-hda -device hda-output win10.img -cdrom Win10_21H2_EnglishInternational_x64.iso
