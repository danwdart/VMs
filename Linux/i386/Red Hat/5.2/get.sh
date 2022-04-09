#!/bin/sh
aria2c -s16 -j16 -x16 -k1M -c https://archive.org/download/redhat-5.2_release/redhat-5.2-i386.iso
7z x redhat-5.2-i386.iso images/*.img
