create_hd_img 500M 68k.img
create_hd_img 500M macos.img
qemu-img create -f raw pram-macos.img 256b
