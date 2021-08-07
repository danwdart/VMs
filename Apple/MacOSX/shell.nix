with import <unstable> {};
runCommand "MacOSX" {
    buildInputs = [
        aria
        qemu
    ];
} ""