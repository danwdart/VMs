qemu-system-aarch64 -M raspi3b -m 1G -kernel u-boot-rpi3.bin -cpu cortex-a53 -serial stdio -sd nixos-sd-image-*-aarch64-linux.img -smp 4 -usb -device usb-net,id=net -device usb-kbd -device usb-tablet
