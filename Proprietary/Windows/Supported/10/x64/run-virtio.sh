sudo $QEMU_X86_64 -m 4G $QEMU_OVMF $QEMU_DISP_GL $QEMU_VIRTIO_PERIPH -nic user,model=virtio $QEMU_SND -drive file=win10.img,if=virtio -drive file=Win10_21H2_EnglishInternational_x64.iso,media=cdrom -drive file=$VIRTIO_WIN_ISO,media=cdrom $QEMU_TPM
