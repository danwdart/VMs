with import  (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/master.tar.gz") {};
runCommand "win311" {
    buildInputs = [
        qemu
    ];
} ""