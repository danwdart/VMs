qemu-system-ppc -M g3beige -boot d -net nic,model=sungem -net user -drive file=macos.img,media=disk,format=raw,id=hd1 -drive file=MacOS8_1.iso,media=cdrom,id=cd1
