qemu-system-aarch64 -M virt,accel=hvf -m 16G -cpu host -serial stdio -smp cores=8 \
    $QEMU_SND \
    $QEMU_VIRTIO_PERIPH \
    $QEMU_USB \
    $QEMU_BALLOON \
    $QEMU_DISP_GPU_GL \
    $QEMU_AAVMF \
    -drive file=nixos.img,if=none,id=hd \
    -device virtio-blk-device,drive=hd \
    -nic user,model=virtio-net-pci \
    -device qemu-xhci \
    -device usb-host,vendorid=0x1d50,productid=0x6089 \
    -device usb-host,vendorid=0x1fc9,productid=0x000c