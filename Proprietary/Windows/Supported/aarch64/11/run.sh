qemu-system-aarch64 -M virt,highmem=off \
    -accel hvf \
    -m 3G -cpu cortex-a76 -serial stdio -smp cores=4 \
    -boot menu=on \
    -device intel-hda \
    -device hda-duplex \
    -device ramfb \
    -device qemu-xhci \
    $QEMU_USB \
    -display cocoa,show-cursor=on \
    -drive file=win11.qcow2,if=none,id=hd \
    -device nvme,drive=hd,serial=hd \
    -drive file=pflash0.img,format=raw,if=pflash,readonly=on \
    -drive file=pflash1.img,format=raw,if=pflash


    # $QEMU_AAVMF \
    # cortex-a55
    # -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \