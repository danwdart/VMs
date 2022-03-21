with import <nixpkgs> {};
runCommand "DOS" {
    buildInputs = [
        qemu
    ];
} ""