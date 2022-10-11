$QEMU_I386 -m 512 $QEMU_USB -device ich9-intel-hda -nic user,model=ne2k_pci xphome.img -cdrom *.iso -monitor stdio
