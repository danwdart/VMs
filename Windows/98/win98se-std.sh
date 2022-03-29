qemu-system-i386 -enable-kvm -m 64 -cpu pentium3 -device VGA -usb -device usb-tablet -device sb16 -nic user,model=ne2k_pci -no-hpet -cdrom win98se.iso -monitor stdio win98se.img
