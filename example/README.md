# Einführung

Diese Vorlage bietet dir eine möglichst vollständigen Überblick über den Funktionsumfang des Templates und erstellt eine bewährte Ordnerstruktur. Um das Template zu nutzen solltest du die Dateien `defaults.yaml` sowie `metadata.yaml` an deine Bedürfnisse anpassen. 

Um aus dem Dokument ein \ac{pdf} zu generieren, kannst du podman direkt verwenden oder auf den vorgefertigten Container zurückgreifen. Mit dem befehl `podman -d defaults.yaml` wird der Bau des \ac{pdf} angestoßen.

## Container (docker or podman)

Das vorgefertigte Conainerimage bringt alle notwendigen Programmteile mit um das WBH-Template zu bauen. Es ist die Quick and Easy version die lediglich eine funktionierende Containerplattform benötigt. Auf Linux empfehlen wir podman zum Einsatz, da dies ohne Root ausgeführt werden kann.

```bash
# Podman aufruf
podman run -it --rm --volume $(pwd):/data wbhdoc

# Docker aufruf
docker run -it --rm --volume $(pwd):/data --user $(id -u):$(id -g) wbhdoc
```

# Zitation

Für die Literaturverwaltung empfehlen wir das Tool [JabRef](https://www.jabref.org/) welches die Daten direkt in einem bib-file abspeichert.
Desweiteren bietet es eine Menge nützlicher Funktionen, wie ein Qualitätscheck der Quellen oder das Auslesen von Markierungen und Kommentaren in PDF-Files.

Um ein Zitat in Pandoc an zu legen, wird der Quellenkey mit führenden `@`-Zeichen zwischen eckige Klammern gesetzt: `[@Quellenkey]`.
Ein Zitat sieht dann wie folgt aus:

Wie man Kapitel einteilt Beschreibt Berger-Grabner in seinem Buch Wissenschaftliches Arbeiten [@BergerGrabner_2016_BOOK].