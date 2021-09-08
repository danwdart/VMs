with import  (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/master.tar.gz") {};
runCommand "win10" {
    shellHook = ''
        [ -f OVMF_VARS.fd ] || cp ${OVMF.fd.outPath}/FV/OVMF_CODE.fd .
        [ -f OVMF_VARS.fd ] || cp ${OVMF.fd.outPath}/FV/OVMF_VARS.fd .
    '';
    buildInputs = [
        aria
        cabextract
        chntpw
        OVMF
        OVMF-CSM
        OVMF-secureBoot
        qemu
        wimlib
    ];
} ""