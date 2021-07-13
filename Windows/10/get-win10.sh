curl 'https://uupdump.net/get.php?id=2267b7bd-a2cd-44ae-b235-9dd8953c05ce&pack=en-gb&edition=core;professional' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: https://uupdump.net' -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Referer: https://uupdump.net/download.php?id=2267b7bd-a2cd-44ae-b235-9dd8953c05ce&pack=en-gb&edition=core;professional' -H 'Upgrade-Insecure-Requests: 1' -H 'Sec-GPC: 1' -H 'TE: Trailers' --data-raw 'autodl=3&updates=1&cleanup=1&netfx=1&esd=1&virtualEditions%5B%5D=CoreSingleLanguage&virtualEditions%5B%5D=ProfessionalWorkstation' -owin10.zip
mkdir -p uup
cd uup
unzip ../win10.zip
rm ../win10.zip
chmod +x *.sh
sed -i 's/\/bin\/bash/\/bin\/sh/' *.sh
./uup_download_linux.sh
