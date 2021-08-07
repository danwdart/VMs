with import <unstable> {};
runCommand "ReactOS" {
    buildInputs = [
        qemu
    ];
} ""