wget -c --content-disposition https://hydra.nixos.org/job/nixos/trunk-combined/nixos.sd_image_new_kernel.aarch64-linux/latest/download
unzstd *.zst
rm *.zst
7z x *.img 0.fat
7z x 0.fat u-boot-rpi3.bin
rm 0.fat
qemu-img resize nixos-sd-image-*-aarch64-linux.img 4G
