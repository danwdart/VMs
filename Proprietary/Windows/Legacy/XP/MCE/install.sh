$QEMU_I386 -m 512 $QEMU_USB $QEMU_SND -nic user,model=ne2k_pci xpmce.img -cdrom *.iso -monitor stdio
