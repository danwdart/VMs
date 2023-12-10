get_installer
unxz 2023-12-05-raspios-bookworm-arm64-full.img.xz
7z x 2023-12-05-raspios-bookworm-arm64-full.img 0.fat
mkdir fat
cd fat
7z x ../0.fat
cd ..
rm 0.fat
qemu-img resize 2023-12-05-raspios-bookworm-arm64-full.img 16G