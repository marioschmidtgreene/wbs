#!/usr/bin/bash
# 
# proxy.sh - Gibt Umgebungsvariablen für den WBS-Proxyserver aus
#
# Um die Änderungen auf die aktuelle Umgebung des Benutzers anzuwenden, muss dieses Skript mit "." gesourced werden:
# . proxy.sh 

IP=`hostname -I`
STANDORT=`echo $IP | cut -d '.' -f 3`
for prot in {"http","https","ftp"}
do
	echo ${prot}_proxy=http://10.147.${STANDORT}.10:3128
	export ${prot}_proxy=http://10.147.${STANDORT}.10:3128
done
