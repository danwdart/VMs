hangup () {
    echo Hanging up processes...
    kill -HUP $SWTPM_PID
    kill -HUP $QEMU_PID
    echo "Removing socket file..."
    rm -rf tpm0
}
trap hangup INT

mkdir tpm
swtpm socket --tpmstate dir=/home/dwd/VMs/Windows/11/tpm --tpm2 --ctrl type=unixio,path=tpm0 --log level=20 &
SWTPM_PID=$!
$QEMU_X86_64 -m 4096 $QEMU_OVMF $QEMU_DISP_GL $QEMU_VIRTIO_PERIPH -device virtio-net -device ich9-intel-hda -device hda-output -drive file=win11.img -drive file=Win11_EnglishInternational_x64v1.iso,media=cdrom -drive file=virtio-win-*.iso,media=cdrom $QEMU_TPM_EMU &
QEMU_PID=$!
wait
