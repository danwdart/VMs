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
sudo $QEMU_X86_64 -m 4096 $QEMU_SECURE_OVMF $QEMU_DISP_GL $QEMU_VIRTIO_PERIPH -device virtio-net $QEMU_SND -drive file=win11.img,if=virtio -drive file=virtio-win-0.1.217.iso,media=cdrom,if=virtio $QEMU_TPM_EMU $QEMU_BALLOON &
QEMU_PID=$!
wait