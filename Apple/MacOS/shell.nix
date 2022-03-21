with import <nixpkgs> {};
runCommand "MacOS" {
    buildInputs = [
        qemu
    ];
} ""