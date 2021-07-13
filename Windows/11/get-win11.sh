curl 'https://uupdump.net/get.php?id=f19ccfd6-d64a-4f0d-8895-c663949fb7e9&pack=en-gb&edition=core;professional' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: https://uupdump.net' -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Referer: https://uupdump.net/download.php?id=f19ccfd6-d64a-4f0d-8895-c663949fb7e9&pack=en-gb&edition=core;professional' -H 'Cookie: Dark-Mode=1' -H 'Upgrade-Insecure-Requests: 1' -H 'Sec-GPC: 1' -H 'TE: Trailers' --data-raw 'autodl=3&esd=1&virtualEditions%5B%5D=CoreSingleLanguage&virtualEditions%5B%5D=ProfessionalWorkstation' -owin11.zip
mkdir -p uup
cd uup
unzip ../win11.zip
rm ../win11.zip
chmod +x *.sh files/*.sh
sed -i 's/\/bin\/bash/\/bin\/sh/' *.sh files/*.sh
sed -i 's/mktemp -d/mktemp -d -p $PWD/g' files/*.sh
./uup_download_linux.sh
files/convert.sh
cd ..
mv uup/22000.1_MULTI_X64_EN-GB.ISO win11.iso
rm -rf uup
