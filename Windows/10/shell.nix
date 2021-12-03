with import  (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/master.tar.gz") {};
runCommand "win10" {
    shellHook = ''
        [ -f OVMF_VARS.fd ] || cp ${OVMFFull.fd.outPath}/FV/OVMF_CODE.fd .
        [ -f OVMF_VARS.fd ] || cp ${OVMFFull.fd.outPath}/FV/OVMF_VARS.fd .
        chown $USER *.fd
    '';
    buildInputs = [
        OVMFFull.fd
        aria
        cabextract
        chntpw
        qemu
        wimlib
    ];
} ""