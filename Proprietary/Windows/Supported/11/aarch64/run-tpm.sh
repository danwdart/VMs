mkdir -p tpm
swtpm socket --tpmstate dir=$PWD/tpm --tpm2 --ctrl type=unixio,path=tpm0 --log level=20 &
SWTPM_PID=$!
sudo qemu-system-aarch64 -M virt,accel=hvf \
    -m 8G -cpu max -serial stdio -smp cores=8 \
    -boot menu=on \
    -device intel-hda \
    -device hda-duplex \
    $QEMU_DISP_GPU_GL \
    $QEMU_USB \
    $QEMU_VIRTIO_PERIPH \
    -display cocoa \
    -drive file=win11.qcow2,if=none,format=qcow2,id=hd \
    -device usb-storage,drive=hd,serial=hd \
    -nic vmnet-bridged,ifname=en0,model=virtio-net-pci \
    $QEMU_AAVMF \
    -chardev socket,id=chrtpm,path=tpm0 -tpmdev emulator,id=tpm0,chardev=chrtpm -device tpm-tis-device,tpmdev=tpm0 \
    -boot menu=on
QEMU_PID=$!
kill -HUP $SWTPM_PID
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
    # $QEMU_DISP_GPU_GL \