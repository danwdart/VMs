qemu-system-x86_64 -enable-kvm -cpu host -smp 4 -M q35 airyx.qcow2 -usb -device usb-kbd -device usb-tablet -device qxl-vga -boot menu=on -m 8192 -pflash OVMF_CODE.fd -pflash OVMF_VARS.fd
