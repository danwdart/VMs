$QEMU_I386 -M q35,hpet=off -m 512 $QEMU_DISP_VMWARE -device qemu-xhci -usb -device usb-tablet -device sb16 -nic user,model=ne2k_pci -monitor stdio \
    -drive file=win98se.img,if=none,id=hd,format=raw -device usb-storage,drive=hd \
    $@