with import <nixpkgs> {};
runCommand "macOS-intel" {
    buildInputs = [
        dmg2img
        libguestfs-with-appliance
        python39
        python39Packages.internetarchive
        qemu
    ];
} ""
