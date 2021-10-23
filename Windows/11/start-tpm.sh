swtpm socket --tpmstate dir=/home/dwd/VMs/Windows/11/tpm --tpm2 --ctrl type=unixio,path=tpm0 --log level=20 &
qemu-system-x86_64 -M q35 -enable-kvm -m 4096 -pflash OVMF_CODE.fd -pflash OVMF_VARS.fd -usb -device qxl-vga -device usb-kbd -device usb-tablet -device intel-hda -cpu host -smp cores=4 win11.qcow2 -cdrom win11.iso -chardev socket,id=chrtpm,path=tpm0 -tpmdev emulator,id=tpm0,chardev=chrtpm -device tpm-tis,tpmdev=tpm0
wait
