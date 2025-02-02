$QEMU_X86_64 $QEMU_USB -m 1G \
    haiku.img \
    -cdrom haiku-r1beta5-x86_64-anyboot.iso \
    -boot d -nic user,model=virtio-net-pci $QEMU_BALLOON $QEMU_DISP_GL $QEMU_OVMF
