#!/bin/sh
wget "https://cloudflare-ipfs.com/ipfs/QmT72pj8ResDPrQoMWQfxXPDsLeMtTqKgE5TgGns7dKUVB/Microsoft%20Windows%20for%20Workgroups%203.11%20(OEM)%20(3.5-1.44mb).7z"
7z x *.7z
rm *.7z
mv Microsoft*/*.img .
rm -rf Microsoft*
wget http://web.archive.org/web/20060212132151/http://www.user.cityline.ru/~maxamn/amnhltm.zip
mkdir 311utils
cd 311utils
7z x ../amnhltm.zip
cd ..
rm amnhltm.zip
dd if=/dev/zero of=311utils.img count=2880
mkfs.msdos 311utils.img
mcopy -i 311utils.img 311utils/* ::/
rm -rf 311utils
