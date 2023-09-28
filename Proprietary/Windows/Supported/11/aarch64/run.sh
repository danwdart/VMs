qemu-system-aarch64 -M virt,highmem=off \
    -accel hvf \
    -m 3G -cpu cortex-a57 -serial stdio -smp 3 \
    -boot menu=on \
    -device intel-hda \
    -device hda-duplex \
    -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \
    -device qemu-xhci \
    $QEMU_VIRTIO_PERIPH \
    -display cocoa \
    -drive file=win11.qcow2,if=none,format=qcow2,id=hd \
    -device usb-storage,drive=hd,serial=hd \
    -nic user,model=virtio-net-pci \
    $QEMU_AAVMF \
    -boot menu=on
    # -device usb-net \
    # -nic vmnet-bridged,ifname=en0,model=ne2k_pci \
    # ,show-cursor=on \
    # ,model=virtio-net-pci \
     # ,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \
    # -drive file=iso/22000.1_MULTI_ARM64_EN-GB.ISO,if=none,format=raw,id=cd,media=cdrom \
    # -device usb-storage,drive=cd,serial=cd \

    # -device VGA \
    # -drive file=pflash0.img,readonly=true,if=pflash \
    # -drive file=pflash1.img,if=pflash
    # 
    
    # -drive file=system.vhdx,if=none,format=vhdx,id=system \
    # -device virtio-blk,drive=system,serial=system \
    # -drive file=drivers.vhdx,if=none,format=vhdx,id=drivers,readonly=on \
    # -device usb-storage,drive=drivers,serial=drivers \


    # $QEMU_AAVMF \
    # cortex-a55
    # -device virtio-gpu-pci,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT \