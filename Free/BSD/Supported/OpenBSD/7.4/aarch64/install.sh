$QEMU_AARCH64 openbsd.img $QEMU_USB -device usb-storage,drive=installer -drive file=install74.img,if=none,id=installer $QEMU_DISP_GPU_GL -boot menu=on -m 2048 $QEMU_AAVMF
