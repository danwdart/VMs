with import <nixpkgs> {};
runCommand "VMs" {
    buildInputs = [
        OVMF
        OVMF-CSM
        OVMF-secureBoot
        python39
        qemu
    ];
} ""