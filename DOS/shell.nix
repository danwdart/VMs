with import  (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/master.tar.gz") {};
runCommand "DOS" {
    buildInputs = [
        qemu
    ];
} ""