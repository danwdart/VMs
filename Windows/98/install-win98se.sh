qemu-system-i386 -enable-kvm -cpu pentium3 -m 256 -usb -device usb-tablet -device sb16 -nic user,model=ne2k_pci -no-hpet win98se.img -cdrom win98se.iso -fda boot.img -boot a -monitor stdio
