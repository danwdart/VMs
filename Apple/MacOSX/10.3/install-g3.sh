qemu-system-ppc -M g3beige,usb=on -m 512 -cpu g3 -drive file=macosx.img,format=raw -drive file="Apple Mac OS X 10.3.0 - Disk 1.iso",media=cdrom,format=raw -nic model=sungem -boot d -device usb-kbd -device usb-tablet -monitor stdio