qemu-system-x86_64 -enable-kvm -cpu host -smp 4 -M q35 netbsd.img -usb -device usb-kbd -device usb-tablet -device qxl-vga -boot menu=on -m 2048 # -pflash OVMF_CODE.fd -pflash OVMF_VARS.fd
