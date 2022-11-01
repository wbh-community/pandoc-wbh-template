# Einführung

Diese Vorlage bietet dir eine möglichst vollständigen Überblick über den Funktionsumfang des Templates und erstellt eine bewährte Ordnerstruktur. Um das Template zu nutzen solltest du die Dateien `defaults.yaml` sowie `metadata.yaml` an deine Bedürfnisse anpassen. 

Um aus dem Dokument ein \ac{pdf} zu generieren, kannst du podman direkt verwenden oder auf den vorgefertigten Container zurückgreifen. Mit dem befehl `podman -d defaults.yaml` wird der Bau des \ac{pdf} angestoßen.

## Container (docker or podman)

Das vorgefertigte Conainerimage bringt alle notwendigen Programmteile mit um das WBH-Template zu bauen. Es ist die Quick and Easy version die lediglich eine funktionierende Containerplattform benötigt. Auf Linux empfehlen wir podman zum Einsatz, da dies ohne Root ausgeführt werden kann.

```bash
# Podman aufruf

# Docker aufruf
```