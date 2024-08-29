$QEMU_X86 -m 1G $QEMU_DISP_GL $QEMU_VIRTIO_PERIPH -device virtio-net $QEMU_SND -drive file=$(readlink nixos*.iso),media=cdrom
