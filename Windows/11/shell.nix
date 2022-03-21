with import <nixpkgs> {};
runCommand "win10" {
    shellHook = ''
        [ -f OVMF_VARS.fd ] || cp ${OVMFFull.fd.outPath}/FV/OVMF_CODE.fd .
        [ -f OVMF_VARS.fd ] || cp ${OVMFFull.fd.outPath}/FV/OVMF_VARS.fd .
        chown $USER *.fd
    '';
    buildInputs = [
        OVMFFull.fd
        swtpm-tpm2
        tpm2-tools
        qemu
        win-virtio
    ];
} ""
