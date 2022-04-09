with import <unstable> {};
runCommand "VMs" {
    shellHook = ''
        export OVMF_CODE="${OVMF.fd.outPath}/FV/OVMF_CODE.fd"
        export OVMF_VARS="${OVMF.fd.outPath}/FV/OVMF_VARS.fd"
        export QEMU_X86_64="qemu-system-x86_64 -M q35 -enable-kvm -cpu host -smp cores=2,threads=2"
        export QEMU_X86_64_BSD="qemu-system-x86_64 -M q35 -enable-kvm -cpu qemu64 -smp cores=2,threads=2"
        export QEMU_TPM="-tpmdev passthrough,id=tpm0,path=/dev/tpm0 -device tpm-tis,tpmdev=tpm0"
        export QEMU_TPM_EMU="-chardev socket,id=chrtpm,path=tpm0 -tpmdev emulator,id=tpm0,chardev=chrtpm -device tpm-tis,tpmdev=tpm0"
        export QEMU_USB="-usb -device usb-kbd -device usb-tablet"
        export QEMU_VIRTIO_PERIPH="-device virtio-keyboard -device virtio-tablet"
        export QEMU_DISP_GL="-device virtio-vga-gl,xres=1366,yres=768 -display gtk,gl=on"
        export QEMU_DISP_STD="-device VGA,xres=1366,yres=768,xmax=1366,ymax=768"
        export QEMU_DISP_QXL="-device qxl-vga,xres=1366,yres=768,xmax=1366,ymax=768"
        export QEMU_OVMF="-drive file=$OVMF_CODE,if=pflash,format=raw,readonly=on -drive file=OVMF_VARS.fd,if=pflash,format=raw"
        export QEMU_I386="qemu-system-i386 -enable-kvm"
        VMSDIR=$(pwd)
        find -name "*.sh" -exec sh -c '
            DIRNAME="$(dirname "{}")"
            [ -f "$DIRNAME/OVMF_VARS.fd" ] || cp --no-preserve=mode,ownership $OVMF_VARS "$DIRNAME"
        ' \;
        source fns.sh
    '';
    buildInputs = [
        OVMFFull.fd
        qemu
        aria
        cabextract
        chntpw
        wimlib
        swtpm-tpm2
        tpm2-tools
        win-virtio
    ];
} ""