$QEMU_X86_64 -m 2G $QEMU_OVMF -device virtio-vga $QEMU_VIRTIO_PERIPH -nic user,model=virtio $QEMU_SND win10.img -cdrom Win10_22H2_EnglishInternational_x64v1.iso
