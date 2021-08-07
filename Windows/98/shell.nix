with import <unstable> {};
runCommand "win98" {
    buildInputs = [
        qemu
    ];
} ""