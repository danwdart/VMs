#!/bin/bash

create_hd_img () {
    fallocate -l$2 $1
    chattr +C $1
}
hangup_tpm() {
    echo Hanging up processes...
    kill -HUP $SWTPM_PID
    kill -HUP $QEMU_PID
    echo "Removing socket file..."
    rm -rf tpm0
}
with_tpm() {
    trap hangup_tpm INT
    mkdir tpm
    swtpm socket --tpmstate dir=$PWD/tpm --tpm2 --ctrl type=unixio,path=tpm0 --log level=20 &
    SWTPM_PID=$!
    $1
    QEMU_PID=$!
    wait
}