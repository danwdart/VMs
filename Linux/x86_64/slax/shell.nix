with import <nixpkgs> {};
runCommand "slax" {
    buildInputs = [
        qemu
    ];
} ""
