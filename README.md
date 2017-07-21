# Pandoc Vorlage für B-Prüfungen

Pandoc ist ein Programm mit dem man Markdown (und andere formate) in viele verschiedene Formate überführen kann.
Hier findest du die Vorlage zur generierung einer PDF oder eines Latex-Files für B-Prüfungen an der WBH.
Es integriert die Vorlage für B-Prüfungen in den Arbeitsablauf für Pandoc.

## Vorraussetzuungen
Zur Nutzung dieses Templates werden folgende tools Vorrausgesetzt

- Pandoc
- Pandoc-Citeproc
- Texlive
- pdflatex

**! WICHTIG !** Um einen reibungslosen Ablauf zu gewährleisten ist es notwendig immer die neusten Versionen zu verwenden. Auf Debian, Ubuntu und von dort abgeleiteten Distributionen sind die Texlive und Pandoc versionen stark veraltet und funktionieren daher nicht mit diesem Template.

## Installation

Zur installation kannst du das entweder das Git Repository mithilfe von `git clone ssh://gogs@git.calyrium.org:2244/WBH/pandoc-b_pruefung.git` clonen oder die Datei `b-pruefung.tex` herunterladen. Danach kopierst du die Datei in das Verzeichnis `pandoc/data/templates`.

```
Linux:
sudo cp b-pruefung.tex /usr/share/pandoc/data/templates/wbh.tex

Mac:

Windows:

```

Nun kannst du mit hilfe von `pandoc -s -t wbh.tex -o output.pdf input.md` dein Markdown file in ein PDF mit der gegeben Vorlage umwandeln.

In deinem Projekt fügst du an den anfang folgende Zeilen ein und füllst sie aus:


## Verwendung

```
---
title:
date:
logo:
author:
  name:
  email:
  matriklnr:
studium:
  studiengang:
  studiengangnr:
  fach:
arbeit:
  typ:
  code:
  tutor: % Not includet now!
...
```

### Variablen

| Variable     | Beschreibung                                          | Optional | Wert               |
|:-------------|:------------------------------------------------------|:---------|:-------------------|
| title        | Titel der Arbeit/B-Prüfung                            | nein     |                    |
| author       | Der Uhrheber der Arbeit, in der Regel dein Name       | nein     |                    |
| matrikelnr   | Deine Matrikelnummer                                  | nein     |                    |
| studiengang  | Dein Studiengang                                      | nein     |                    |
| fach         | In welchem Fach wird die Prüfung bearbeitet           | nein     |                    |
| aufgabencode | Der Code befindet sich auf deiner B-Prüfung ganz oben | nein     |                    |
| date         | Datum der Abgabe                                      | nein     |                    |
| lang         | Sprache (Standard ist en = Englisch)                  | ja       | Ländercode z.B. de |
| logo         | Der Pfad zum Logo (Standard ./Bilder/logo.png)        | ja       | Pfad zum Bild      |
| toc          | Hinzufügen des Inhaltsverzeichnises                   | ja       | true / false       |
| abk          | Abkürzungsverzeichnis                                 | ja       | true /false        |
| lot          | Verzeichnis der Tabellen                              | ja       | true / false       |
| lof          | Liste der Figuren/Abbildungen                         | ja       | true / false       |
