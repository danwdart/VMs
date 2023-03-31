echo "Log into https://www.microsoft.com/en-us/software-download/windowsinsiderpreviewarm64, and press enter..."
read
get_installer
tar xzvf QEMU_EFI-*.tar.gz
dd if=/dev/zero of=pflash0.img bs=1M count=64
dd if=/dev/zero of=pflash1.img bs=1M count=64
dd if=QEMU_EFI.fd of=pflash0.img conv=notrunc
dd if=QEMU_VARS.fd of=pflash1.img conv=notrunc
