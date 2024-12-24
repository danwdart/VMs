$QEMU_I386 -m 128 $QEMU_DISP_STD -device qemu-xhci $QEMU_USB \
    -drive file=svardos.img,id=hd,format=raw \
    -drive file=sv-repo.iso,id=install,media=cdrom,format=raw \
    -nic user,model=e1000