qemu-system-ppc -M g3beige -boot d -net nic,model=sungem -net user -drive file=macos-ppc.img,media=disk,format=raw,id=hd1 -drive file=Mac\ OS\ 7.6.1.iso,media=cdrom,id=cd1
