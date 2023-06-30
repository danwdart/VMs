$QEMU_X86_64 -m 2048 $QEMU_USB -drive id=hdd,file=image,format=raw,if=none -device virtio-blk-pci,drive=hdd -vga vmware -debugcon stdio
# migratable=off