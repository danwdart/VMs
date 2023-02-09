$QEMU_X86_64 -cdrom *.iso -m 1024 $QEMU_VIRTIO_PERIPH -nic user,model=virtio $QEMU_DISP_GL $QEMU_BALLOON
