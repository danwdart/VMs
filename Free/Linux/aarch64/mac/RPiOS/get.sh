get_installer
unxz 2023-05-03-raspios-bullseye-arm64.img.xz
7z x 2023-05-03-raspios-bullseye-arm64.img 0.fat
mkdir fat
cd fat
7z x ../0.fat
cd ..
rm 0.fat
qemu-img resize 2023-05-03-raspios-bullseye-arm64.img 8G