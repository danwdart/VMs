$QEMU_X86_64 -m 4096 $QEMU_OVMF $QEMU_DISP_GL $QEMU_VIRTIO_PERIPH -device virtio-net -device intel-hda -drive file=win11.img,if=virtio -drive file=Win11_EnglishInternational_x64v1.iso,if=virtio,media=cdrom -drive file=virtio-win-0.1.215.iso,media=cdrom
