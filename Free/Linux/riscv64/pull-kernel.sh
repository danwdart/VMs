#!/bin/sh
scp -P 2222 debian@localhost:/vmlinuz artifacts/kernel
scp -P 2222 debian@localhost:/initrd.img artifacts/initrd
