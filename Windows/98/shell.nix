with import <nixpkgs> {};
runCommand "win98" {
    buildInputs = [
        qemu
    ];
} ""