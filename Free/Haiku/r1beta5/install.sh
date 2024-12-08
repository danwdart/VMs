$QEMU_X86_64 $QEMU_USB -m 1G \
    -drive file=haiku.img,format=raw,id=disk,if=none \
    -device usb-storage,drive=disk \
    -drive file=haiku-r1beta5-x86_64-anyboot.iso,format=raw,media=cdrom,id=install,if=none \
    -device usb-storage,drive=install \
    -boot d -nic user,model=virtio-net-pci $QEMU_BALLOON $QEMU_DISP_GL $QEMU_OVMF
