# 3b = a53
# 4b = a72
qemu-system-aarch64 -M raspi3b -m 1G -cpu host -serial stdio -smp cores=4 \
    -boot menu=on \
    -display cocoa,show-cursor=on \
    $QEMU_USB2 \
    -device usb-audio \
    -kernel fat/kernel8.img \
    -dtb fat/bcm2710-rpi-3-b.dtb \
    -append "console=serial0,115200 console=tty1 root=PARTUUID=3e247b30-02 rootfstype=ext4" \
    -drive file=2023-05-03-raspios-bullseye-arm64.img,if=sd \
    -device sd-card,drive=hd \
    -boot menu=on