#!/bin/sh
get_installer
7z e NetBSD-9.3-evbarm-aarch64.iso evbarm/binary/gzimg/arm64.img.gz
gunzip arm64.img.gz
qemu-img resize arm64.img 2G