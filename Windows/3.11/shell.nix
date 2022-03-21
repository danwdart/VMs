with import <nixpkgs> {};
runCommand "win311" {
    buildInputs = [
        qemu
    ];
} ""