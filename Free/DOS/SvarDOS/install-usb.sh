$QEMU_I386 -m 128 $QEMU_DISP_STD -device qemu-xhci $QEMU_USB \
    -device usb-storage,drive=hd -drive file=svardos.img,if=none,id=hd,format=raw \
    -device usb-storage,drive=install -drive file=sv-repo.iso,if=none,id=install,media=cdrom,format=raw \
    -nic user,model=e1000