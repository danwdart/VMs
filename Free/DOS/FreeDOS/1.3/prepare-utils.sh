fallocate -l100M utils.img
chattr +C utils.img
mkfs.vfat utils.img
unzip RANISH.ZIP part.exe
mcopy -i utils.img part.exe ::/
rm RANISH.ZIP
rm part.exe
