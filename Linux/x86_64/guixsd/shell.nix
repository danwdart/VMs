with import  (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/master.tar.gz") {};
runCommand "guixsd" {
    shellHook = ''
        [ -f OVMF_VARS.fd ] || cp ${OVMF.fd.outPath}/FV/OVMF_CODE.fd .
        [ -f OVMF_VARS.fd ] || cp ${OVMF.fd.outPath}/FV/OVMF_VARS.fd .
    '';
    buildInputs = [
        OVMF.fd
        qemu
    ];
} ""
