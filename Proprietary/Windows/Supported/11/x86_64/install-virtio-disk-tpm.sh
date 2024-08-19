
sudo $QEMU_X86_64 \
    -m 8G \
    $QEMU_USB \
    $QEMU_SECURE_OVMF \
    $QEMU_DISP_GL \
    $QEMU_VIRTIO_PERIPH \
    -nic user,model=virtio \
    $QEMU_SND \
    -drive file=/dev/disk/by-id/ata-SK_hynix_SC311_SATA_256GB_MD88N677513708O43,if=virtio,format=raw \
    -drive file=/dev/disk/by-id/ata-SAMSUNG_MZ7LM480HMHQ-00005_S2UJNX0HC08585,if=virtio,format=raw \
    -drive file=/dev/disk/by-id/usb-USB_SanDisk_3.2Gen1_0101b59f8195e18cb2f9f64bdf8b70a59280525a9faf046d2fec40df36b0d35c495600000000000000000000441b644100994a0091558107a8ae00eb-0:0,if=virtio,format=raw \
    -drive file=$VIRTIO_WIN_ISO,if=none,id=virtio,media=cdrom \
    -device usb-storage,drive=virtio \
    -drive file=Win11_23H2_EnglishInternational_x64v2.iso,if=none,id=install,media=cdrom \
    -device usb-storage,drive=install \
    $QEMU_BALLOON \
    $QEMU_TPM