qemu-system-ppc64 -M mac99,via=pmu -m 512 -cpu 970fx -drive file=macosx.img,format=raw -drive file="osx leopard install.iso",media=cdrom,format=raw -nic model=sungem -boot d -device usb-kbd -device usb-tablet -monitor stdio -prom-env "boot-args=-v" -prom-env "vga-ndrv?=true" -prom-env "auto-boot?=true" -device VGA,edid=on -g ${SCREEN_WIDTH}x${SCREEN_HEIGHT}x32
