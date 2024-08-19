hangup () {
    echo Hanging up processes...
    kill -HUP $SWTPM_PID
    kill -HUP $QEMU_PID
    echo "Removing socket file..."
    rm -rf tpm0
}
trap hangup INT

mkdir tpm
swtpm socket --tpmstate dir=$PWD/tpm --tpm2 --ctrl type=unixio,path=tpm0 --log level=20 &
SWTPM_PID=$!
sudo $QEMU_X86_64 \
    -m 8G \
    $QEMU_USB \
    $QEMU_SECURE_OVMF \
    $QEMU_DISP_GL \
    -nic user,model=rtl8139 \
    $QEMU_SND \
    -drive file=/dev/disk/by-id/ata-SK_hynix_SC311_SATA_256GB_MD88N677513708O43,if=none,id=internal,format=raw \
    -device usb-storage,drive=internal \
    -drive file=/dev/disk/by-id/ata-SAMSUNG_MZ7LM480HMHQ-00005_S2UJNX0HC08585,if=none,id=external,format=raw \
    -device usb-storage,drive=external \
    -drive file=/dev/disk/by-id/usb-USB_SanDisk_3.2Gen1_0101b59f8195e18cb2f9f64bdf8b70a59280525a9faf046d2fec40df36b0d35c495600000000000000000000441b644100994a0091558107a8ae00eb-0:0,if=none,id=usbstick,format=raw \
    -device usb-storage,drive=usbstick \
    -drive file=$VIRTIO_WIN_ISO,if=none,id=virtio,media=cdrom \
    -device usb-storage,drive=virtio \
    $QEMU_BALLOON \
    $QEMU_EMU_TPM &
QEMU_PID=$!
wait