qemu-system-i386 -M pc,hpet=off -enable-kvm -cpu pentium3 -m 64 -usb -device usb-tablet -device sb16 -nic user,model=ne2k_pci -cdrom "Windows Me (115 - OEM Full).iso" -monitor stdio winme.img
