#!/bin/zsh
## automatic fetch and generation of blocklist
## Use initial files from:
## https://github.com/DNSCrypt/dnscrypt-proxy/tree/master/utils/generate-domains-blocklist
autoload -U colors && colors

curl -fsSL -o domains-blocklist-local-additions.txt https://raw.githubusercontent.com/DNSCrypt/dnscrypt-proxy/master/utils/generate-domains-blocklist/domains-blocklist-local-additions.txt
curl -fsSL -o domains-allowlist.txt https://raw.githubusercontent.com/DNSCrypt/dnscrypt-proxy/master/utils/generate-domains-blocklist/domains-allowlist.txt
curl -fsSL -o domains-time-restricted.txt https://raw.githubusercontent.com/DNSCrypt/dnscrypt-proxy/master/utils/generate-domains-blocklist/domains-time-restricted.txt
curl -fsSL -o domains-blocklist.conf https://raw.githubusercontent.com/DNSCrypt/dnscrypt-proxy/master/utils/generate-domains-blocklist/domains-blocklist.conf
curl -fsSL -o generate-domains-blocklist.py https://raw.githubusercontent.com/DNSCrypt/dnscrypt-proxy/master/utils/generate-domains-blocklist/generate-domains-blocklist.py

echo -e "\n$fg[cyan]Files downloaded from dnscrypt github!  $reset_color"
echo -e "=> domains-blocklist-local-additions.txt"
echo -e "=> domains-allowlist.txt"
echo -e "=> domains-time-restricted.txt"
echo -e "=> domains-blocklist.conf"
echo -e "=> generate-domains-blocklist/generate-domains-blocklist.py"

sed -i '' -E 's/^apple.com/#apple.com/g' domains-allowlist.txt
sed -i '' -E 's/^ocsp.apple.com/#ocsp.apple.com/g' domains-allowlist.txt

echo "file:domains-blocklist-apple.txt" | tee -a domains-blocklist.conf >/dev/null

echo -e "\n$fg[cyan]Replaced needed parameters in files. Generation is launched now!$reset_color"

python generate-domains-blocklist.py -o dnscrypt-blocklist-domains.txt

echo -e "\n$fg[cyan]Allow list references to apple: $reset_color"
grep apple.com domains-allowlist.txt

echo -e "\n$fg[green]Domain blocklist generated: $fg[red]dnscrypt-blocklist-domains.txt $reset_color\n"
