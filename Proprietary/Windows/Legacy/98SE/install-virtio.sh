$QEMU_X86_64 -M q35,hpet=off -m 512 $QEMU_DISP_CIRRUS -device qemu-xhci -usb -device usb-tablet -device sb16 -nic user,model=ne2k_pci \
    -drive file=win98se.img,if=virtio,format=raw \
    -fda boot.img -boot a -monitor stdio $@
