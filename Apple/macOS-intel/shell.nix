with import <nixpkgs> {};
runCommand "macOS-intel" {
    buildInputs = [
        dmg2img
        libguestfs-with-appliance
        python310
        python310Packages.internetarchive
        qemu
    ];
} ""
