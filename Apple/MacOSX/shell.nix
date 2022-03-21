with import <nixpkgs> {};
runCommand "MacOSX" {
    buildInputs = [
        aria
        qemu
    ];
} ""