$QEMU_X86_64 -m 512 $QEMU_DISP_STD -usb -device usb-tablet -device sb16 -nic user,model=ne2k_pci -no-hpet -monitor stdio -drive file=win98se.img,if=none,id=hd -device usb-storage,drive=hd