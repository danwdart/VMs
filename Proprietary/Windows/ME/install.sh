qemu-system-i386 -enable-kvm -cpu pentium3 -m 64 -usb -device usb-tablet -device sb16 -nic user,model=ne2k_pci -no-hpet winme.img -cdrom "Windows Me (115 - OEM Full).iso" -boot d -monitor stdio
