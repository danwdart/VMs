get_installer
# tar xvf OpenSPARCT1_Arch.1.5.tar.bz2 S10image
mkdir a
tar xvf OpenSPARCT1_Arch.1.5.tar.bz2 -C a
mv a/S10image .
rm -rf a
rm OpenSPARCT1_Arch.1.5.tar.bz2