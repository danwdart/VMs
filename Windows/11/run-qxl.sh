sudo $QEMU_X86_64 -m 4096 $QEMU_OVMF $QEMU_DISP_QXL $QEMU_VIRTIO_PERIPH -device virtio-net -device ich9-intel-hda -device hda-output -drive file=win11.img,if=virtio $QEMU_TPM
