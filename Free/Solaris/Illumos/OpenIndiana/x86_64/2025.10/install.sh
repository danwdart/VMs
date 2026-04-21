$QEMU_X86_64 openindiana.img $QEMU_USB -device usb-storage,drive=usb -drive file=OI-hipster-gui-20251026.usb,if=none,id=usb $QEMU_DISP_VMWARE -boot menu=on -m 4G $QEMU_OVMF
