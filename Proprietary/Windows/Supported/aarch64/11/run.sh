qemu-system-aarch64 -M virt,highmem=off \
    -accel hvf \
    -m 3G -cpu cortex-a57 -serial stdio -smp 3 \
    -boot menu=on \
    -device intel-hda \
    -device hda-duplex \
    -device virtio-gpu-pci \
    -device qemu-xhci \
    $QEMU_USB \
    -display cocoa,show-cursor=on \
    -drive file=win11.qcow2,if=none,format=qcow2,id=install \
    -device usb-storage,drive=install,serial=install \
    -drive file=system.vhdx,if=none,format=vhdx,id=system \
    -device virtio-blk,drive=system,serial=system \
    -drive file=drivers.vhdx,if=none,format=vhdx,id=drivers,readonly=on \
    -device usb-storage,drive=drivers,serial=drivers \
    $QEMU_AAVMF


    # $QEMU_AAVMF \
    # cortex-a55
    # -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \