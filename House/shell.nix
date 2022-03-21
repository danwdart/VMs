with import <nixpkgs> {};
runCommand "House" {
    shellHook = ''
    '';
    buildInputs = [
        OVMFFull.fd
        qemu
    ];
} ""
