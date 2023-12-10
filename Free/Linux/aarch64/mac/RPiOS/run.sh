# 3b = a53
# 4b = a72
qemu-system-aarch64 -M raspi3b -m 1G -cpu host -serial stdio -smp cores=4 \
    -display cocoa,show-cursor=on \
    $QEMU_USB2 \
    -device usb-audio \
    -kernel fat/kernel8.img \
    -dtb fat/bcm2710-rpi-3-b.dtb \
    -append "console=serial0,115200 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait" \
    -drive file=2023-12-05-raspios-bookworm-arm64-full.img,if=none,id=sd \
    -device sd-card,drive=sd \
    -boot menu=on