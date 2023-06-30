$QEMU_I386 -M pc,hpet=off -m 512 $QEMU_DISP_CIRRUS -device qemu-xhci -usb -device usb-tablet -device sb16 -nic user,model=ne2k_pci \
    -drive file=win98se.img,format=raw \
    -drive file=win98se.iso,format=raw,media=cdrom \
    -fda boot.img \
    -boot a -monitor stdio $@
