qemu-system-x86_64 -enable-kvm -cpu host -smp 4 -M q35 netbsd.qcow2 -usb -device usb-kbd -device usb-tablet -device qxl-vga -boot menu=on -m 2048
