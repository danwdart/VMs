$QEMU_I386 -M q35,hpet=off -m 512 $QEMU_DISP_CIRRUS -device qemu-xhci -usb -device usb-tablet -device sb16 -nic user,model=ne2k_pci \
    -drive file=win98se.img,format=raw \
    -drive file=win98se.iso,media=cdrom,format=raw \
    -drive file=98utils.iso,media=cdrom,format=raw \
    -drive file=boot.img,format=raw,if=floppy \
    -monitor stdio $@