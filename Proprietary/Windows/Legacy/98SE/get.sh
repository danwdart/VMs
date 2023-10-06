#!/bin/sh
set -euo pipefail

mkiso() {
    # ia download --no-directories windows-98-se-english-oem "Win98 SE.iso"
    7z e "Microsoft Windows 98 Second Edition.7z" "Microsoft Windows 98 Second Edition/Windows 98 Second Edition.iso" win98.iso
    rm "Microsoft Windows 98 Second Edition.7z"
    mv "Windows 98 Second Edition.iso" win98se.iso
}

mkboot() {
    7z x 'Microsoft Windows 98 Second Edition - Boot Disk (3.5-1.44mb).7z'
    rm 'Microsoft Windows 98 Second Edition - Boot Disk (3.5-1.44mb).7z'
    mv Microsoft\ Windows\ 98\ Second\ Edition\ -\ Boot\ Disk\ \(3.5-1.44mb\)/Windows\ 98\ Second\ Edition\ Boot.img boot.img
    rm -rf Microsoft\ Windows\ 98\ Second\ Edition\ -\ Boot\ Disk\ \(3.5-1.44mb\)/
}

mk98utils() {
    # ia downloadvesa_graphics_drivers_iso
    mkdir 98utils
    cd 98utils
    7z x ../amnhltm.zip
    7z x ../dosidle210.zip
    7z x ../vbemp9x.zip
    cd ..
    rm amnhltm.zip
    rm dosidle210.zip
    rm vbemp9x.zip
    mv KernelEx-4.5.2.exe 98utils
    genisoimage -JRo98utils.iso 98utils
    rm -rf 98utils
}

get_installer

[ -f win98se.iso ] || mkiso
[ -f boot.img ] || mkboot
[ -f 98utils.iso ] || mk98utils

# dd if=win98se.iso of=boot.img skip=84 count=2880
