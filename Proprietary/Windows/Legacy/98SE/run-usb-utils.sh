$QEMU_X86_64 -m 512 $QEMU_DISP_CIRRUS -device qemu-xhci -usb -device usb-tablet -device sb16 -nic user,model=ne2k_pci -no-hpet -monitor stdio \
    -drive file=win98se.img,if=none,id=hd,format=raw -device usb-storage,drive=hd \
    -drive file=98utils.iso,if=none,id=utils,media=cdrom,format=raw -device usb-storage,drive=utils \
    $@