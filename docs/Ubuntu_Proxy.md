# Ubuntu mit Proxy-Server für Konsolenprogramme

## Paketmanager "apt"
Den Paketmanager "apt" für die Verwendung eines Proxy-Server konfigurieren:
```
echo 'Acquire::http::Proxy "http://10.140.247.10:3128";' | sudo tee /etc/apt/apt.conf.d/80proxy
```
## Umgebungsvariablen für "bash"-Shell konfigurieren
Für alle Benutzer Umgebungsvariablen unter "bash" für die Verwendung eines Proxy-Server konfigurieren:
```
echo "export http_proxy=http://10.140.247.10:3128" | sudo tee -a /etc/bash.bashrc
echo "export ftp_proxy=http://10.140.247.10:3128" | sudo tee -a /etc/bash.bashrc
```
## Umgebungsvariablen für andere Shells konfigurieren
Für alle Benutzer Umgebungsvariablen anderer Shells für die Verwendung eines Proxy-Server konfigurieren:
```
echo 'http_proxy="http://10.140.247.10:3128"' | sudo tee -a /etc/environment
echo 'ftp_proxy="http://10.140.247.10:3128"' | sudo tee -a /etc/environment
```
