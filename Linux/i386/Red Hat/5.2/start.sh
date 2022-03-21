qemu-system-i386 -vga cirrus -cpu pentium3 -m 256 redhat.qcow2 -fda images/boot.img -cdrom redhat-5.2-i386.iso -nic user,model=ne2k_pci -boot a
