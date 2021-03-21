#!/bin/sh
wget --content-disposition https://winworldpc.com/download/417d71c2-ae18-c39a-11c3-a4e284a2c3a5/from/c3ae6ee2-8099-713d-3411-c3a6e280947e
# ia download --no-directories windows-98-se-english-oem "Win98 SE.iso"
7z e "Microsoft Windows 98 Second Edition.7z" "Microsoft Windows 98 Second Edition/Windows 98 Second Edition.iso" win98.iso
rm "Microsoft Windows 98 Second Edition.7z"
mv "Windows 98 Second Edition.iso" win98se.iso
