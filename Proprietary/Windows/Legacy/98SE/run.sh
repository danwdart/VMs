$QEMU_I386 -m 512 $QEMU_DISP_CIRRUS -device usb-audio -device qemu-xhci -usb -device usb-tablet -nic user,model=ne2k_pci -no-hpet -monitor stdio \
    -drive file=win98se.img,format=raw \
    $@