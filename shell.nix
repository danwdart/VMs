with import <nixpkgs> {};
runCommand "VMs" {
    buildInputs = [
        aria
        cabextract
        chntpw
        dmg2img
        ipfs
        OVMF
        OVMF-CSM
        OVMF-secureBoot
        python39
        python39Packages.internetarchive
        qemu
        wimlib
    ];
} ""
