# Suse Linux-Netzwerkinstallation mit Proxy-Server

## Bootparameter konfigurieren

Während des Startvorgang vom Installationsmedium die Taste F4 drücken, um Boot-Parameter vorab einstellen zu können. Dann folgende Zeile ergänzen,
um den Proxy-Server zu konfigurieren:
```
proxy=https://10.140.247.10:3128
```
Den Bootvorgang im Anschluss mit Taste F10 fortsetzen.

[opensuse](https://doc.opensuse.org/documentation/leap/startup/html/book-startup/cha-boot-parameters.html#sec-boot-parameters-advanced-proxy)
