#!/bin/sh
wget -c https://dl.winworldpc.com/Abandonware%20Operating%20Systems/PC/Microsoft%20Windows/Windows%2098-ME/Microsoft%20Windows%2098%20Second%20Edition.7z
# ia download --no-directories windows-98-se-english-oem "Win98 SE.iso"
7z e "Microsoft Windows 98 Second Edition.7z" "Microsoft Windows 98 Second Edition/Windows 98 Second Edition.iso" win98.iso
rm "Microsoft Windows 98 Second Edition.7z"
mv "Windows 98 Second Edition.iso" win98se.iso
