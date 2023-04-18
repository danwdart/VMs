qemu-system-aarch64 -M virt,highmem=off \
    -accel hvf \
    -m 3G -cpu cortex-a57 -serial stdio -smp 3 \
    -boot menu=on \
    -device intel-hda \
    -device hda-duplex \
    -device ramfb \
    -device VGA \
    -device qemu-xhci \
    $QEMU_USB \
    -display cocoa,show-cursor=on \
    -drive file=win11.qcow2,if=none,format=qcow2,id=hd \
    -device usb-storage,drive=hd,serial=hd \
    -drive file=iso/22000.1_MULTI_ARM64_EN-GB.ISO,if=none,format=raw,id=cd,media=cdrom \
    -device usb-storage,drive=cd,serial=hd \
    -drive file=pflash0.img,readonly=true,if=pflash \
    -drive file=pflash1.img,if=pflash
    # $QEMU_AAVMF
    
    # -drive file=system.vhdx,if=none,format=vhdx,id=system \
    # -device virtio-blk,drive=system,serial=system \
    # -drive file=drivers.vhdx,if=none,format=vhdx,id=drivers,readonly=on \
    # -device usb-storage,drive=drivers,serial=drivers \


    # $QEMU_AAVMF \
    # cortex-a55
    # -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \