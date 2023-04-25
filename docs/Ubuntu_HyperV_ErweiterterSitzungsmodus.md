# Ubuntu mit erweitertem Sitzungsmodus für Hyper-V

## Hyper-V-Host für erweiterten Sitzungsmodus konfigurieren

Auf dem Hyper-V-Host eine Powershell mit erhöhten Rechten starten und überprüfen, ob der erweiterte Sitzungsmodus in den allgemeinen Einstellungen aktiviert wurde:
```
Get-VMHost | select Name, EnableEnhancedSessionMode
```
Ist dies nicht der Fall, muss der erweiterte Sitzungsmodus generell erlaubt werden:
```
Set-VMHost -EnableEnhancedSessionMode $true
```

## RDP-Software unter Ubuntu bereitstellen

In der virtuellen Ubuntu-Maschine die Pakete "xrdp" und "xorgxrdp" installieren und konfigurieren:
```
wget https://raw.githubusercontent.com/Hinara/linux-vm-tools/ubuntu20-04/ubuntu/20.04/install.sh
chmod +x install.sh
sudo ./install.sh
sudo reboot
```

## Virtuelle Maschine auf dem Hyper-V-Host konfigurieren

Auf dem Hyper-V-Host eine Powershell mit erhöhten Rechten starten und die VM für die Unterstützung des erweiterten Sitzungsmodus konfigurieren:
```
Set-VM -VMName <Name-der-VM> -EnhancedSessionTransportType HvSocket
```

Quellen:
[windowspro](https://www.windowspro.de/wolfgang-sommergut/erweiterten-sitzungsmodus-fuer-ubuntu-vms-hyper-v-aktivieren)
