$QEMU_X86_64 -m 512 $QEMU_DISP_CIRRUS -device qemu-xhci -usb -device usb-tablet -device sb16 -nic user,model=ne2k_pci -no-hpet \
    -drive file=win98se.img,if=virtio,format=raw \
    -fda boot.img -boot a -monitor stdio $@
