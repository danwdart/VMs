sudo $QEMU_X86_64 -m 4096 $QEMU_SECURE_OVMF $QEMU_DISP_GL $QEMU_VIRTIO_PERIPH -device virtio-net -device ich9-intel-hda -device hda-output -drive file=win11.img,if=virtio -drive file=virtio-win-0.1.217.iso,media=cdrom,if=virtio $QEMU_TPM
