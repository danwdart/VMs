$QEMU_X86 -m 1024 $QEMU_DISP_GL $QEMU_VIRTIO_PERIPH -device virtio-net $QEMU_SND -drive file=nixos.img,if=virtio -drive file=nixos-minimal-22.05.538.d9794b04bff-i686-linux.iso,media=cdrom
