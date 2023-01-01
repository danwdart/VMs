$QEMU_X86_64 -usb -m 1024 -drive file=haiku.img,if=virtio -drive file=haiku-r1beta4-x86_64-anyboot.iso,if=virtio,media=cdrom -boot d -nic user,model=virtio-net-pci $QEMU_USB $QEMU_DISP_GL $QEMU_OVMF
