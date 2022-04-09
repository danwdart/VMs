aria2c -s16 -j16 -x16 -k1M -c -i filelist
for i in 1 2 3
do
    ARCHIVE="Apple Mac OS X 10.3.0 - Disk $i.7z"
    7z x "$ARCHIVE"
    rm "$ARCHIVE"
done
rm winworldpc.com.txt
