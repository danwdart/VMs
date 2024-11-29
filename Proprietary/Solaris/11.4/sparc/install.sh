qemu-system-sparc64 -M niagara -cpu Sun-UltraSparc-T2 -L ./S10image \
    -drive file=solaris.img,id=hd,format=raw \
    -drive file=sol-11_4-text-sparc.iso,id=installer,format=raw,media=cdrom,readonly=on \
    -boot d \
    -monitor stdio \
    -m 4G
