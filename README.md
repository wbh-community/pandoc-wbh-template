# Pandoc Vorlage für B-Prüfungen

Pandoc ist ein Programm mit dem man Markdown (und andere formate) in viele verschiedene Formate überführen kann.
Hier findest du die Vorlage zur generierung einer PDF oder eines Latex-Files für B-Prüfungen an der WBH.
Es integriert die Vorlage für B-Prüfungen in den Arbeitsablauf für Pandoc.

# HowTo

Kopiere die Vorlage in das Verzeichnis `/user/share/pandoc/data/templates`. Den Bilderordner benötigst du in deinem Projekt.

In deinem Projekt fügst du an den anfang folgende Zeilen ein und füllst sie aus:

```
---
title: Projektmanagemant für Anfänger
author: Max Mustermann
matrikelnr: XXXXXX
studiengang: Technische Informatike
fach: Einführungsveranstaltung Projektgruppenleiter
aufgabencode: X-TA-B2d-AAGD
date: 08.06.2017
lang: de
---
```

nun kannst du dein Dokument mit hilfe des folgenden Befehls generieren:
