with import <unstable> {};
runCommand "win311" {
    buildInputs = [
        qemu
    ];
} ""