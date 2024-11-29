qemu-system-sparc64 -M niagara -cpu Sun-UltraSparc-T2 -L ./S10image \
    -drive if=pflash,readonly=on,file=./S10image/disk.s10hw2 \
    -boot d \
    -monitor stdio \
    -m 4G
