with import <nixpkgs> {};
runCommand "macOS-intel" {
    buildInputs = [
        dmg2img
        libguestfs-with-appliance
        python312
        python312Packages.internetarchive
        python312Packages.pip
        python312Packages.click
        qemu
    ];
} ""
