$QEMU_X86 -m 4096 $QEMU_DISP_GL $QEMU_VIRTIO_PERIPH -nic user,model=virtio $QEMU_SND -drive file=win10.img -drive file=Win10_21H2_EnglishInternational_x32.iso,media=cdrom -drive file=virtio-win-*.iso,media=cdrom
