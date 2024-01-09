#!/bin/sh
get_installer
gunzip arm64.img.gz
qemu-img resize arm64.img 2G