$QEMU_X86_64 -cdrom slax-64bit-11.3.0.iso -m 1024 $QEMU_VIRTIO_PERIPH -nic user,model=virtio $QEMU_DISP_GL -device virtio-balloon
