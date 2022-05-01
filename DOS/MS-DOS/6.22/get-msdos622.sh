aria2c -s16 -j16 -x16 -k1M https://cloudflare-ipfs.com/ipfs/QmSeHBGoMxSjCzkaJEpkshkopQKPWhgFT8z1XJC3jgGCx8/Microsoft%20MS-DOS%206.22%20Plus%20Enhanced%20Tools%20\(3.5\).7z
7z x Microsoft\ MS-DOS\ 6.22\ Plus\ Enhanced\ Tools\ \(3.5\).7z
mv Microsoft\ MS-DOS\ 6.22\ Plus\ Enhanced\ Tools\ \(3.5\)/*.img .
rm Microsoft\ MS-DOS\ 6.22\ Plus\ Enhanced\ Tools\ \(3.5\)* -rf
aria2c -s16 -j16 -x16 -k1M http://web.archive.org/web/20051222085335/http://www.vmware.com/software/dosidle210.zip
mkdir dosutils
cd dosutils
7z x ../dosidle210.zip
cd ..
rm dosidle210.zip
dd if=/dev/zero of=dosutils.img count=2880
mkfs.msdos dosutils.img
mcopy -i dosutils.img dosutils/* ::/
rm -rf dosutils
