$QEMU_X86_64 -m 2048 $QEMU_DISP_GL $QEMU_VIRTIO_PERIPH $QEMU_OVMF -nic user,model=virtio -device ich9-intel-hda -device hda-output  -drive file=hello.img -drive file=hello-0.8.0_0H248-FreeBSD-13.1-amd64.iso,media=cdrom -boot menu=on

