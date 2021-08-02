curl 'https://uupdump.net/get.php?id=ca0143aa-6f03-45ee-949b-2189478f633f&pack=en-gb&edition=core;professional' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4464.5 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: https://uupdump.net' -H 'DNT: 1' -H 'Alt-Used: uupdump.net' -H 'Connection: keep-alive' -H 'Referer: https://uupdump.net/download.php?id=ca0143aa-6f03-45ee-949b-2189478f633f&pack=en-gb&edition=core;professional' -H 'Upgrade-Insecure-Requests: 1' -H 'Sec-Fetch-Dest: document' -H 'Sec-Fetch-Mode: navigate' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-Fetch-User: ?1' -H 'Sec-GPC: 1' -H 'TE: trailers' --data-raw 'autodl=3&esd=1&virtualEditions%5B%5D=CoreSingleLanguage&virtualEditions%5B%5D=ProfessionalWorkstation' -owin11.zip
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
