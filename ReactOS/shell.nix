with import <nixpkgs> {};
runCommand "ReactOS" {
    buildInputs = [
        qemu
    ];
} ""