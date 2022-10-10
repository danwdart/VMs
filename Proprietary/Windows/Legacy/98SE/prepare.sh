#!/bin/sh
set -euo pipefail

mkdir -p cd hd # fd

./create.sh
sfdisk win98se.img < sfdisk.conf
sudo losetup -P /dev/loop0 win98se.img
# sudo mount boot.img fd
sudo mkfs.vfat -F32 /dev/loop0p1
sudo mount /dev/loop0p1 hd

sudo mkdir -p hd/utils
cd hd/utils
sudo mkdir 98utils
cd 98utils
sudo 7z x ../../../98utils.iso
cd ..
sudo mkdir mesa
cd mesa
sudo 7z x ../../../mesa.iso
cd ../../..

sudo mount win98se.iso cd
sudo mkdir hd/win98se
sudo cp -rp cd/* hd/win98se
sudo umount cd

sudo umount hd
sudo rm -r cd hd
sudo losetup -d /dev/loop0