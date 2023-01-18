$QEMU_X86_64 -m 512 $QEMU_DISP_CIRRUS -device usb-audio -device qemu-xhci -usb -device usb-tablet -nic user,model=ne2k_pci -no-hpet \
    -drive file=win98se.img,if=none,id=hd,format=raw -device usb-storage,drive=hd \
    -fda boot.img -boot a -monitor stdio $@
