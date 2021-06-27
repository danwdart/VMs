with import <nixpkgs> {};
runCommand "VMs" {
    buildInputs = [
        python39
        qemu
    ];
} ""