# Proxy-Server unter Ubuntu konfigurieren

## Paketmanager "apt"
Den Paketmanager "apt" für die Verwendung eines Proxy-Server konfigurieren:
```
echo 'Acquire::http::Proxy "http://10.140.247.10:3128";' | sudo tee /etc/apt/apt.conf.d/80proxy
```
