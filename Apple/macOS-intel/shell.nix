with import <nixpkgs> {};
runCommand "macOS-intel" {
    buildInputs = [
        dmg2img
        python39
        python39Packages.internetarchive
        qemu
    ];
} ""
