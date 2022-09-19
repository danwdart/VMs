$QEMU_I386 -cpu host -smp cores=4,threads=2 -m 1024 linuxmce.img -cdrom *.iso -monitor stdio $QEMU_USB $QEMU_DISP_STD
