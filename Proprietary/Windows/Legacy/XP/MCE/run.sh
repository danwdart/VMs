$QEMU_I386 -m 512 $QEMU_USB -device ich9-intel-hda -nic user xpmce.img -cdrom *.iso -monitor stdio
