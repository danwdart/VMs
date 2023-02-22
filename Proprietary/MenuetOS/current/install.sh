$QEMU_X86_64 -usb -m 1024 menuetos.img -fda M*.IMG -boot a $QEMU_USB -device virtio-vga-gl,xres=1920,yres=1080 -display gtk,gl=on
