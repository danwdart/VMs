with import <nixpkgs> {};
runCommand "aarch64" {
    buildInputs = [
        qemu
    ];
} ""