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
    $QEMU_DISP_GVT_OVMF \
    $QEMU_VIRTIO_PERIPH \
    -nic user,model=virtio \
    $QEMU_SND \
    -drive file=/dev/disk/by-id/ata-SAMSUNG_MZ7LM480HMHQ-00005_S2UJNX0HC08585,if=none,format=raw,id=hd \
    -device usb-storage,drive=hd \
    -drive file=$VIRTIO_WIN_ISO,if=none,id=virtio,media=cdrom \
    -device usb-storage,drive=virtio \
    $QEMU_BALLOON \
    $QEMU_EMU_TPM &
QEMU_PID=$!
wait