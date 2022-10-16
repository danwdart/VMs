$QEMU_X86_64 -m 128 $QEMU_USB $QEMU_OVMF $QEMU_DISP_STD kolibri.raw -nic user,model=ne2k_pci $@
