$QEMU_X86_64 -usb -m 1024 -drive file=haiku.img,if=virtio -nic user,model=virtio-net-pci  $QEMU_USB $QEMU_DISP_GL $QEMU_OVMF
