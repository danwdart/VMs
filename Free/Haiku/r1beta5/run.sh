$QEMU_X86_64 $QEMU_USB -m 1G \
    haiku.img \
    -boot d -nic user,model=virtio-net-pci $QEMU_BALLOON $QEMU_DISP_GL $QEMU_OVMF
