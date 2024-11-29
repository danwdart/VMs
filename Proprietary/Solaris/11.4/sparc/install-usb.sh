qemu-system-sparc64 -M niagara -cpu Sun-UltraSparc-T2 -L ./S10image \
    -drive if=pflash,readonly=on,file=./S10image/disk.s10hw2 \
    -device usb-storage,drive=hd -drive file=solaris.img,if=none,id=hd,format=raw \
    -device usb-storage,drive=installer -drive file=sol-11_4-text-sparc.usb,if=none,id=installer,format=raw \
    -boot d -m 2G \
    -monitor stdio
