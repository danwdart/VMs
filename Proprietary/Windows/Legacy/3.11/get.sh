#!/bin/sh
get_wwpc
7z x *.7z
rm *.7z
mv Microsoft*/*.img .
rm -rf Microsoft*
mkdir 311utils
cd 311utils
7z x ../amnhltm.zip
cd ..
rm amnhltm.zip
dd if=/dev/zero of=311utils.img count=2880
mformat -i 311utils.img
mcopy -i 311utils.img 311utils/* ::/
rm -rf 311utils
