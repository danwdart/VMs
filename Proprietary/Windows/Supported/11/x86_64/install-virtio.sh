
sudo $QEMU_X86_64 \
    -m 8G \
    $QEMU_USB \
    $QEMU_SECURE_OVMF \
    $QEMU_DISP_GL \
    $QEMU_VIRTIO_PERIPH \
    -nic user,model=virtio \
    $QEMU_SND \
    -drive file=win11.img,if=virtio,id=hd \
    -drive file=$VIRTIO_WIN_ISO,if=none,id=virtio,media=cdrom \
    -device usb-storage,drive=virtio \
    -drive file=Win11_24H2_EnglishInternational_x64.iso,if=none,id=install,media=cdrom \
    -device usb-storage,drive=install \
    $QEMU_BALLOON