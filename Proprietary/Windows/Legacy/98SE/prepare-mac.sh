#!/bin/sh
set -euo pipefail

mkdir -p cd hd # fd

qemu-img create -f raw win98se.img 4G
# ./create.sh
sfdisk win98se.img < sfdisk.conf
hdiutil attach -nomount win98se.img
# sudo mount boot.img fd
sudo newfs_msdos -F32 /dev/disk4s1
sudo mount_msdos /dev/disk4s1 hd

sudo mkdir -p hd/utils
cd hd/utils

sudo mkdir 98utils
cd 98utils
sudo 7z x ../../../98utils.iso

# cd ..

# sudo mkdir mesa
# cd mesa
# sudo 7z x ../../../mesa.iso

cd ../../..

hdiutil attach -nomount win98se.iso
sudo mount_cd9660 /dev/disk5 cd 
sudo mkdir hd/win98se
sudo cp -rp cd/* hd/win98se
sudo umount cd

sudo umount hd
sudo rm -r cd hd
sudo hdiutil detach /dev/disk4
sudo hdiutil detach /dev/disk5