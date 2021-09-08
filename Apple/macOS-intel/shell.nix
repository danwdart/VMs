with import  (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/master.tar.gz") {};
runCommand "macOS-intel" {
    buildInputs = [
        dmg2img
        python39
        python39Packages.internetarchive
        qemu
    ];
} ""