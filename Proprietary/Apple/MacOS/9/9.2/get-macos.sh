aria2c -s16 -j16 -x16 -k1M -c https://cloudflare-ipfs.com/ipfs/QmckBWgNQ5zufj5KMnKMkzkvKDBxmRBZC67H7NXsCJibKa/Apple%20Mac%20OS%209.2.2%20[PowerMac%20G4].7z
7z x "Apple Mac OS 9.2.2 [PowerMac G4].7z"
rm -rf "Apple Mac OS 9.2.2 [PowerMac G4].7z"
mv "Apple Mac OS 9.2.2 [PowerMac G4]/Mac OS 9.2.2.iso" .
rm -rf "Apple Mac OS 9.2.2 [PowerMac G4]/"
