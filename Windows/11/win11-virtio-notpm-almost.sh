qemu-system-x86_64 -M q35 -enable-kvm -m 4096 -pflash OVMF_CODE.fd -pflash OVMF_VARS.fd -device virtio-vga-gl -display gtk,gl=on -device virtio-keyboard -device virtio-tablet -device virtio-net -device intel-hda -cpu host -smp cores=8 -drive file=win11.img -drive file=Win11_EnglishInternational_x64v1.iso,media=cdrom -drive file=virtio-win-0.1.208.iso,media=cdrom
