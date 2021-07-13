with import <nixpkgs> {};
runCommand "VMs" {
    buildInputs = [
        aria
        cabextract
        chntpw
        OVMF
        OVMF-CSM
        OVMF-secureBoot
        python39
        qemu
        wimlib
    ];
} ""
