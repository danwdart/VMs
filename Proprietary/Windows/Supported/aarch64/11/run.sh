qemu-system-aarch64 -M virt,highmem=off \
    -accel hvf \
    -m 3G -cpu host -serial stdio -smp 4 \
    -boot menu=on \
    -device intel-hda \
    -device hda-duplex \
    -device ramfb \
    -device qemu-xhci \
    $QEMU_USB \
    $QEMU_AAVMF \
    -display cocoa,show-cursor=on \
    -drive file=win11.qcow2,if=none,id=hd \
    -device usb-storage,drive=hd,serial=hd
    # -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \
    # -drive file=pflash0.img,format=raw,if=pflash,readonly=on \
    # -drive file=pflash1.img,format=raw,if=pflash \