#!/bin/sh
getiso() {
    wget --content-disposition https://winworldpc.com/download/417d71c2-ae18-c39a-11c3-a4e284a2c3a5/from/c3ae6ee2-8099-713d-3411-c3a6e280947e
    # ia download --no-directories windows-98-se-english-oem "Win98 SE.iso"
    7z e "Microsoft Windows 98 Second Edition.7z" "Microsoft Windows 98 Second Edition/Windows 98 Second Edition.iso" win98.iso
    rm "Microsoft Windows 98 Second Edition.7z"
    mv "Windows 98 Second Edition.iso" win98se.iso
}
getboot() {
    wget https://winworldpc.com/download/49c380c2-a9c3-af25-c389-11c3a6e28094/from/c39ac2af-c381-c2bf-1b25-11c3a4e284a2 -Oboot.7z
    7z x boot.7z
    rm boot.7z
    mv Microsoft\ Windows\ 98\ Second\ Edition\ -\ Boot\ Disk\ \(3.5-1.44mb\)/Windows\ 98\ Second\ Edition\ Boot.img boot.img
    rm -rf Microsoft\ Windows\ 98\ Second\ Edition\ -\ Boot\ Disk\ \(3.5-1.44mb\)/
}
get98utils() {
    # ia downloadvesa_graphics_drivers_iso
    wget -c https://archive.org/download/vbemp9x2008.03.23/vbemp9x.zip
    unzip vbemp9x.zip
    genisoimage -JRo vbe9x.iso vbe9x
    rm vbemp9x.zip vbe9x -rf
    wget http://web.archive.org/web/20060212132151/http://www.user.cityline.ru/~maxamn/amnhltm.zip
    wget http://web.archive.org/web/20051222085335/http://www.vmware.com/software/dosidle210.zip
    mkdir 98utils
    cd 98utils
    7z x ../amnhltm.zip
    7z x ../dosidle210.zip
    cd ..
    rm amnhltm.zip
    rm dosidle210.zip
    wget --content-disposition "https://downloads.sourceforge.net/project/kernelex/KernelEx/4.5.2/KernelEx-4.5.2.exe?ts=gAAAAABiQspiweRuDrBsD1DONz-pD8VkA-u60BxUXn1nNdhILn6xRuldofGm5Kfnae9E4j5bAHxDGUPUcPpcsqbbDfSmdmMIwA%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fkernelex%2Ffiles%2FKernelEx%2F4.5.2%2FKernelEx-4.5.2.exe%2Fdownload"
    mv KernelEx-4.5.2.exe 98utils
    genisoimage -JRo98utils.iso 98utils
    rm -rf 98utils
}
[ -f win98se.iso ] || getiso
[ -f boot.img ] || getboot
[ -f 98utils.iso ] || get98utils
