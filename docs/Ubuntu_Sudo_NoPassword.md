# Ubuntu ohne Passwortabfrage bei "sudo"

Eine Konfigurationsdatei anlegen, welchen allen Mitgliedern der Gruppe "sudo" erlaubt, ohne eine Passwortabfrage ein Kommando mit erhöhten Rechten auszuführen:
```
echo "@sudo ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/10-SUDO-GROUP-NOPASSWD
```
Es wird (zum letzten mal) nach dem Benutzerkennwort für die Ausführung des Kommandos gefragt.
