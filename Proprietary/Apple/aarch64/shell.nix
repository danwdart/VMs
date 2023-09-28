with import <nixpkgs> {};
runCommand "aarch64" {
    shellHook = ''
        export SCREEN_WIDTH=1920
        export SCREEN_HEIGHT=1080
        export GVT_UUID=f3391b14-5221-11ed-ba3d-6b25560d08e7
        export QEMU_PATH=${qemu.outPath}/share/qemu/
        export ROOT_PATH=$(pwd)
        export OVMF_CODE=$QEMU_PATH/edk2-x86_64-code.fd
        export OVMF_SECURE_CODE=$QEMU_PATH/edk2-x86_64-secure-code.fd
        export OVMF_VARS=$QEMU_PATH/edk2-i386-vars.fd
        export AAVMF_CODE=$QEMU_PATH/edk2-aarch64-code.fd
        export AAVMF_VARS=$QEMU_PATH/edk2-arm-vars.fd
        export QEMU_I386="qemu-system-i386 -enable-kvm"
        export QEMU_X86="qemu-system-i386 -M q35 -enable-kvm -cpu host -smp cores=4,threads=2"
        export QEMU_X86_64="qemu-system-x86_64 -M q35 -enable-kvm -cpu host -smp cores=4,threads=2"
        export QEMU_X86_64_NETBSD="qemu-system-x86_64 -M q35 -enable-kvm -cpu host,sse2=off -smp cores=4,threads=2"
        export QEMU_RPI3B="qemu-system-aarch64 -M raspi3b -m 1G -cpu cortex-a53 -serial stdio -smp 4 $QEMU_USB -device usb-net"
        export QEMU_AARCH64="qemu-system-aarch64 -M virt -m 4G -cpu cortex-a72 -serial stdio -smp 4 $QEMU_VIRTIO_PERIPH -device virtio-net $QEMU_AAVMF -device ramfb -boot menu=on -device nec-usb-xhci $QEMU_USB"
        VMSDIR=$(pwd)
        export QEMU_RISCV64="qemu-system-riscv64 -M virt -m 2G -cpu rv64 -smp cores=4,threads=2"
        export QEMU_TPM="-tpmdev passthrough,id=tpm0,path=/dev/tpm0 -device tpm-tis,tpmdev=tpm0"
        export QEMU_TPM_EMU="-chardev socket,id=chrtpm,path=tpm0 -tpmdev emulator,id=tpm0,chardev=chrtpm -device tpm-tis,tpmdev=tpm0"
        export QEMU_USB="-usb -device usb-kbd -device usb-tablet"
        export QEMU_VIRTIO_PERIPH="-device virtio-keyboard -device virtio-tablet"
        export QEMU_DISP_GVT="-device vfio-pci,sysfsdev=/sys/bus/mdev/devices/$GVT_UUID,display=on,x-igd-opregion=on,driver=vfio-pci-nohotplug,ramfb=on,xres=1920,yres=1080  -display spice-app,gl=on"
        export QEMU_DISP_GVT_OVMF="-device vfio-pci,sysfsdev=/sys/bus/mdev/devices/$GVT_UUID,display=on,x-igd-opregion=on,driver=vfio-pci-nohotplug,ramfb=on,driver=vfio-pci-nohotplug,romfile=$ROOT_PATH/vbios_gvt_uefi.rom,xres=1920,yres=1080 -display spice-app,gl=on"
        export QEMU_DISP_GL="-device virtio-vga-gl,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT -display spice-app,gl=on"
        export QEMU_DISP_STD="-device VGA,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT,xmax=$SCREEN_WIDTH,ymax=$SCREEN_HEIGHT,vgamem_mb=128 -display spice-app"
        export QEMU_DISP_CIRRUS="-device cirrus-vga -display spice-app"
        export QEMU_DISP_QXL="-device qxl-vga,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT,vgamem_mb=128 -display spice-app"
        export QEMU_DISP_VMWARE="-device vmware-svga,vgamem_mb=128 -display spice-app"
        export QEMU_OVMF="-drive file=$OVMF_CODE,if=pflash,format=raw,readonly=on -drive file=edk2-i386-vars.fd,if=pflash,format=raw"
        export QEMU_AAVMF="-drive file=$AAVMF_CODE,if=pflash,format=raw,readonly=on -drive file=edk2-arm-vars.fd,if=pflash,format=raw"
        export QEMU_SECURE_OVMF="-drive file=$OVMF_SECURE_CODE,if=pflash,format=raw,readonly=on -drive file=edk2-i386-vars.fd,if=pflash,format=raw"
        export QEMU_BALLOON="-device virtio-balloon-pci,deflate-on-oom=true"
        export QEMU_RNG="-object rng-random,filename=/dev/urandom,id=rng -device virtio-rng-device,rng=rng"
        [ -f "vbios_gvt_uefi.rom" ] || aria2c -s16 -j16 -x16 -k1M --content-disposition -c https://web.archive.org/web/20201020144354/http://120.25.59.132:3000/vbios_gvt_uefi.rom
        find -name "*.sh" -exec sh -c '
            DIRNAME="$(dirname "{}")"
            [ -f "$DIRNAME/edk2-i386-vars.fd" ] || cp --no-preserve=mode,ownership $OVMF_VARS "$DIRNAME"
            [ -f "$DIRNAME/edk2-arm-vars.fd" ] || cp --no-preserve=mode,ownership $AAVMF_VARS "$DIRNAME"
        ' \;
        export PATH=$PWD/.bin:$PATH
    '';
    buildInputs = [
        qemu
        aria
        cabextract
        chntpw
        wimlib
    ] ++ (if builtins.currentSystem == "aarch64-darwin" then [
        python312Packages.asn1
        python312Packages.pyasn1
        lzfse
    ] else [
        swtpm
        tpm2-tools
        win-virtio
    ]);
} ""