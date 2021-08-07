with import <unstable> {};
runCommand "MacOSX" {
    buildInputs = [
        qemu
    ];
} ""