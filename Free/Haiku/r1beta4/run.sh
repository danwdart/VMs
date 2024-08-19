$QEMU_X86_64 -device qemu-xhci -m 1G \
    -drive file=haiku.img,format=raw,if=virtio,
    -nic user,model=virtio-net-pci $QEMU_BALLOON $QEMU_USB $QEMU_DISP_GL $QEMU_OVMF
