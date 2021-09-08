with import  (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/master.tar.gz") {};
runCommand "BSD" {
    shellHook = ''
        for dir in */
        do
            cd $dir;
            [ -f OVMF_VARS.fd ] || cp ${OVMF.fd.outPath}/FV/OVMF_CODE.fd .
            [ -f OVMF_VARS.fd ] || cp ${OVMF.fd.outPath}/FV/OVMF_VARS.fd .
            cd ..
        done
    '';
    buildInputs = [
        OVMF
        OVMF-CSM
        OVMF-secureBoot
        qemu
    ];
} ""