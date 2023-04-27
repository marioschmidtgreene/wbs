#!/usr/bin/bash
# 
# proxy.sh - Gibt Umgebungsvariablen für den WBS-Proxyserver aus
#
# Um die Änderungen auf die aktuelle Umgebung des Benutzers anzuwenden muss dieses Skript mit "." gesourced werden:
# . ./proxy.sh
# Zur permanenten Änderung dieser Umgebungsvariablen für alle Benutzer kann das Ergebnis an "/etc/environment" angehängt werden:
# ./proxy.sh | sudo tee -a /etc/environment

IP=`hostname -I`
STANDORT=`echo $IP | cut -d '.' -f 3`
for prot in {"http","https","ftp"}
do
	echo ${prot}_proxy=http://10.140.${STANDORT}.10:3128
	export ${prot}_proxy=http://10.140.${STANDORT}.10:3128
done
