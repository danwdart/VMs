with import <unstable> {};
runCommand "aarch64" {
    buildInputs = [
        qemu
    ];
} ""