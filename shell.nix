with import <nixpkgs> {};
let display = if builtins.currentSystem == "aarch64-darwin" then "cocoa,show-cursor=on" else "gtk";
    accel_x86 = if builtins.currentSystem == "aarch64-darwin" then "" else ",accel=kvm";
    accel_aarch64 = if builtins.currentSystem == "aarch64-darwin" then ",accel=hvf" else "";
    params_486 = "-M pc${accel_x86} -cpu 486";
    params_i386 = "-M pc${accel_x86} -cpu pentium3";
    params_x86 = "-M q35${accel_x86} -cpu ${if builtins.currentSystem == "aarch64-darwin" then "pentium3" else "host"}";
    params_x86_64 = "-M q35${accel_x86} -cpu ${if builtins.currentSystem == "aarch64-darwin" then "qemu64" else "host"}";
    params_x86_64_pc = "-M pc${accel_x86} -cpu ${if builtins.currentSystem == "aarch64-darwin" then "qemu64" else "host"}";
    params_aarch64 = "-M virt${accel_aarch64} ${if builtins.currentSystem == "aarch64-darwin" then "-m 16G -cpu host" else "-m 4G -cpu cortex-a72"}";
in
runCommand "VMs" {
    shellHook = ''
        export SCREEN_WIDTH=1728
        export SCREEN_HEIGHT=1117
        export GVT_UUID=f3391b14-5221-11ed-ba3d-6b25560d08e7
        export QEMU_PATH=${qemu.outPath}/share/qemu/
        export VIRTIO_WIN_ISO=${virtio-win.src.outPath}
        export ROOT_PATH=$(pwd)
        export OVMF_CODE=$QEMU_PATH/edk2-x86_64-code.fd
        export OVMF_SECURE_CODE=$QEMU_PATH/edk2-x86_64-secure-code.fd
        export OVMF_VARS=$QEMU_PATH/edk2-i386-vars.fd
        export AAVMF_CODE=$QEMU_PATH/edk2-aarch64-code.fd
        export AAVMF_VARS=$QEMU_PATH/edk2-arm-vars.fd
        export QEMU_ALWAYS="-k en-gb"
        export QEMU_I386="qemu-system-i386 $QEMU_ALWAYS ${params_i386}"
        export QEMU_486="qemu-system-i386 $QEMU_ALWAYS ${params_486}"
        export QEMU_X86="qemu-system-i386 $QEMU_ALWAYS ${params_x86} -smp cores=4,threads=2"
        export QEMU_X86_64="qemu-system-x86_64 $QEMU_ALWAYS ${params_x86_64} -smp cores=4,threads=2"
        export QEMU_X86_64_PC="qemu-system-x86_64 $QEMU_ALWAYS ${params_x86_64_pc} -smp cores=4,threads=2"
        export QEMU_X86_64_NOSSE2="qemu-system-x86_64 $QEMU_ALWAYS ${params_x86_64},sse2=off -smp cores=4,threads=2"
        export QEMU_RPI3B="qemu-system-aarch64 $QEMU_ALWAYS -M raspi3b -m 1G -cpu cortex-a53 -serial stdio -smp cores=4,threads=2 $QEMU_USB -device usb-net"
        export QEMU_AARCH64="qemu-system-aarch64 $QEMU_ALWAYS ${params_aarch64} -serial stdio -smp cores=12,threads=2 $QEMU_VIRTIO_PERIPH -nic user,model=virtio $QEMU_AAVMF -device ramfb -boot menu=on -device nec-usb-xhci $QEMU_USB"
        VMSDIR=$(pwd)
        export QEMU_RISCV64="qemu-system-riscv64 $QEMU_ALWAYS -M virt -m 2G -cpu rv64 -smp cores=4,threads=2"
        export QEMU_TPM="-tpmdev passthrough,id=tpm0,path=/dev/tpm0 -device tpm-tis,tpmdev=tpm0"
        export QEMU_TPM_EMU="-chardev socket,id=chrtpm,path=tpm0 -tpmdev emulator,id=tpm0,chardev=chrtpm -device tpm-tis,tpmdev=tpm0"
        export QEMU_USB2="-usb -device usb-kbd -device usb-tablet"
        export QEMU_USB="-device qemu-xhci $QEMU_USB2"
        export QEMU_VIRTIO_PERIPH="-device virtio-keyboard -device virtio-tablet"
        export QEMU_DISP_GVT="-device vfio-pci,sysfsdev=/sys/bus/mdev/devices/$GVT_UUID,display=on,x-igd-opregion=on,driver=vfio-pci-nohotplug,ramfb=on,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT -display ${display},gl=on"
        export QEMU_DISP_GVT_OVMF="-device vfio-pci,sysfsdev=/sys/bus/mdev/devices/$GVT_UUID,display=on,x-igd-opregion=on,driver=vfio-pci-nohotplug,ramfb=on,driver=vfio-pci-nohotplug,romfile=$ROOT_PATH/vbios_gvt_uefi.rom,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT -display ${display},gl=on"
        export QEMU_DISP_GL="-device virtio-vga-gl,edid=on,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT -display ${display},gl=on"
        export QEMU_DISP_GPU_GL="-device virtio-gpu-pci,edid=on,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT -display ${display}"
        export QEMU_DISP_STD="-device VGA,edid=on,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT,xmax=$SCREEN_WIDTH,ymax=$SCREEN_HEIGHT,vgamem_mb=128 -display ${display}"
        export QEMU_DISP_CIRRUS="-device cirrus-vga -display ${display}"
        export QEMU_DISP_QXL="-device qxl-vga,edid=on,xres=$SCREEN_WIDTH,yres=$SCREEN_HEIGHT,vgamem_mb=128 -display ${display}"
        export QEMU_DISP_VMWARE="-device vmware-svga,vgamem_mb=128 -display ${display}"
        export QEMU_DISP_ATI_RAGE_128_PRO="-device ati-vga,vgamem_mb=128,model=rage128p -display ${display}"
        export QEMU_DISP_ATI_RADEON_RV100="-device ati-vga,vgamem_mb=128,model=rv100 -display ${display}"
        export QEMU_OVMF="-drive file=$OVMF_CODE,if=pflash,format=raw,readonly=on -drive file=edk2-i386-vars.fd,if=pflash,format=raw"
        export QEMU_AAVMF="-drive file=$AAVMF_CODE,if=pflash,format=raw,readonly=on -drive file=edk2-arm-vars.fd,if=pflash,format=raw"
        export QEMU_SECURE_OVMF="-drive file=$OVMF_SECURE_CODE,if=pflash,format=raw,readonly=on -drive file=edk2-i386-vars.fd,if=pflash,format=raw"
        export QEMU_BALLOON="-device virtio-balloon-pci,deflate-on-oom=true"
        export QEMU_RNG="-object rng-random,filename=/dev/urandom,id=rng -device virtio-rng-device,rng=rng"
        export QEMU_SND="-device ich9-intel-hda -device hda-micro"
        [ -f "vbios_gvt_uefi.rom" ] || aria2c -s16 -j16 -x16 -k1M --content-disposition -c https://web.archive.org/web/20201020144354/http://120.25.59.132:3000/vbios_gvt_uefi.rom
        find -name "*.sh" -exec sh -c '
            DIRNAME="$(dirname "{}")"
            [ -f "$DIRNAME/edk2-i386-vars.fd" ] || cp --no-preserve=mode,ownership $OVMF_VARS "$DIRNAME"
            [ -f "$DIRNAME/edk2-arm-vars.fd" ] || cp --no-preserve=mode,ownership $AAVMF_VARS "$DIRNAME"
        ' \;
        export PATH=$PWD/.bin:$PATH
    '';
    buildInputs = [
        cdrkit
        qemu
        aria
        cabextract
        chntpw
        # wimlib # error: call to undeclared library function 'strtoull' with type 'unsigned long long (const char *, char **, int)'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
        util-linux # for sfdisk
    ] ++ (if builtins.currentSystem == "aarch64-darwin" then [

    ] else [
        tpm2-tools
        # win-virtio
        swtpm # broken tests
    ]);
} ""
