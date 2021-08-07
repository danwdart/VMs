with import <unstable> {};
runCommand "DOS" {
    buildInputs = [
        qemu
    ];
} ""