qemu-system-aarch64 -m 3G \
    -M virt,accel=hvf -device ramfb \
    -kernel ./build/kernelcache.release.vma2 \
    -initrd ./build/arm64eSURamDisk.dmg \
    -cpu host -smp cores=8 \
    -serial stdio
    # -dtb ./build/DeviceTree.vma2macosap.im4p.out \