aria2c -s16 -j16 -x16 -k1M https://cloudflare-ipfs.com/ipfs/QmaJGVJYF6D4ZvyeXk9s9Yuk9HLoBzPvzXCqJtiKM6SNuq/Apple%20Mac%20OS%209.2.2%20[eMac].7z
7z x "Apple Mac OS 9.2.2 [eMac].7z"
mv "Apple Mac OS 9.2.2 [eMac]/Apple_MacOS_9.2.2_eMac.iso" .
rm -rf Apple\ Mac\ OS\ 9.2.2\ \[eMac\]*
