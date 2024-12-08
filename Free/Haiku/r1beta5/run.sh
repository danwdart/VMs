$QEMU_X86_64 $QEMU_USB -m 1G \
    -drive file=haiku.img,format=raw,id=disk,if=none \
    -device usb-storage,drive=disk \
    -boot d -nic user,model=virtio-net-pci $QEMU_BALLOON $QEMU_DISP_GL $QEMU_OVMF
