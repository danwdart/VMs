qemu-system-i386 -m 512 -cpu host -smp 4 win2k.img -cdrom win2k.iso -win2k-hack -usb -device usb-tablet -device usb-kbd -nic user,model=ne2k_pci -device ac97 -enable-kvm
