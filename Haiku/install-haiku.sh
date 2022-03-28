qemu-system-x86_64 -M q35 -cpu host -usb -smp cores=4 -enable-kvm -m 1024 haiku.img -cdrom haiku-r1beta3-x86_64-anyboot.iso -device usb-tablet -device usb-kbd -boot d
