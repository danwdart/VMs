for KERNEL in build/kernelcache*
do
    echo "Decoding and decompressing $KERNEL"
    python3 xnu-qemu-arm64-tools/bootstrap_scripts/asn1kerneldecode.py $KERNEL $KERNEL.asn1decoded
    lzfse -decode -i $KERNEL.asn1decoded -o $KERNEL.out
    rm $KERNEL.asn1decoded
    mv $KERNEL.out $KERNEL
done

echo "Decoding and decompressing RD"
python3 xnu-qemu-arm64-tools/bootstrap_scripts/asn1rdskdecode.py build/arm64eSURamDisk.dmg build/arm64eSURamDisk.dmg.asn1decoded
mv build/arm64eSURamDisk.dmg build/arm64eSURamDisk.dmg.enc
mv build/arm64eSURamDisk.dmg.asn1decoded build/arm64eSURamDisk.dmg

for DTB in build/DeviceTree*.im4p
do
    echo "Decoding and decompressing $DTB"
    python3 xnu-qemu-arm64-tools/bootstrap_scripts/asn1dtredecode.py $DTB $DTB.asn1decoded
    lzfse -decode -i $DTB.asn1decoded -o $DTB.out
    
done