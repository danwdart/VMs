#!/bin/sh
set -euo pipefail
get_wwpc
7z x Microsoft\ MS-DOS\ 6.22\ Plus\ Enhanced\ Tools\ \(3.5\).7z
mv Microsoft\ MS-DOS\ 6.22\ Plus\ Enhanced\ Tools\ \(3.5\)/*.img .
rm Microsoft\ MS-DOS\ 6.22\ Plus\ Enhanced\ Tools\ \(3.5\)* -rf
mkdir dosutils
cd dosutils
7z x ../dosidle210.zip
cd ..
rm dosidle210.zip
dd if=/dev/zero of=dosutils.img count=2880
mformat -i dosutils.img # cross platform
mcopy -i dosutils.img dosutils/* ::/
rm -rf dosutils
