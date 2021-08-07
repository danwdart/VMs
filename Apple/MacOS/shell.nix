with import <unstable> {};
runCommand "MacOS" {
    buildInputs = [
        qemu
    ];
} ""