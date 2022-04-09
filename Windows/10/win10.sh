$QEMU_X86_64 -m 2048 $QEMU_OVMF -device virtio-vga $QEMU_VIRTIO_PERIPH -device virtio-net -device intel-hda win10.img -cdrom win10.iso
