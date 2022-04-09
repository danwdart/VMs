$QEMU_X86_64 airyx.img -usb -cdrom Airyx_0.2.2-F12.2_h0.5.0-amd64.iso -device usb-kbd -device usb-tablet $QEMU_DISP_GL -boot menu=on -m 8192 $QEMU_OVMF
