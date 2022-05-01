aria2c -s16 -j16 -x16 -k1M http://hpoussineau.free.fr/qemu/firmware/magnum-4000/setup.zip
mkdir bios-mips
cd bios-mips
unzip ../setup.zip
cd ..
rm setup.zip
