#!/bin/bash

# ASCII Logo
cat << "EOF"
   _____ _____ ______ 
  / ____/ ____|  ____|
 | (___| (___ | |__   
  \___ \\___ \|  __|  
  ____) |___) | |____ 
 |_____/_____/|______|
                      
 SimpleSubdomainEnumeration v1.0
 https://github.com/EHabib-US/
EOF

echo ""

url=$1
if [ ! -d "$url" ];then
	mkdir $url
fi
if [ ! -d "$url/recon" ];then
	mkdir $url/recon
fi
 
echo "[+] Harvesting subdomains with assetfinder..."
assetfinder $url >> $url/recon/assets.txt
cat $url/recon/assets.txt | grep $1 >> $url/recon/final.txt
rm $url/recon/assets.txt

#OPTIONAL - Amass functionality (if you have the patience) 
#echo "[+] Harvesting subdomains with Amass..."
#amass enum -d $url >> $url/recon/f.txt
#sort -u $url/recon/f.txt >> $url/recon/final.txt
#rm $url/recon/f.txt

echo "[+] Probing for alive domains..."
cat $url/recon/final.txt | sort -u | httprobe -s -p https:443 | sed 's/https\?:\/\///' | sed 's/:443$//' >> $url/recon/alive.txt
