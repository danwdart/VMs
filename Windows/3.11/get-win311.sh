#!/bin/sh
wget "https://cloudflare-ipfs.com/ipfs/QmT72pj8ResDPrQoMWQfxXPDsLeMtTqKgE5TgGns7dKUVB/Microsoft%20Windows%20for%20Workgroups%203.11%20(OEM)%20(3.5-1.44mb).7z"
7z x *.7z
rm *.7z
mv Microsoft*/*.img .
rm -rf Microsoft*
