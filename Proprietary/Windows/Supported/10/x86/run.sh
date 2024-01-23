$QEMU_X86 -m 2048 -device virtio-vga $QEMU_VIRTIO_PERIPH -nic user,model=virtio $QEMU_SND win10.img -cdrom Win10_21H2_EnglishInternational_x32.iso
