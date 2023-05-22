$QEMU_X86_64 -M q35,hpet=off -m 512 $QEMU_DISP_CIRRUS -device qemu-xhci -usb -device usb-tablet -device sb16 -nic user,model=ne2k_pci -monitor stdio \
    -drive file=win98se.img,id=hd,format=raw \
    -drive file=98utils.iso,id=utils,media=cdrom,format=raw  \
    $@