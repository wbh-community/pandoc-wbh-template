# Pandoc Vorlage für B-Prüfungen

[Pandoc](https://pandoc.org) ist ein Programm mit dessen Hilfe man Dateien von einem Format in ein anderes überführen kann. dem man Markdowndateien (und andere Formate) in viele verschiedene Formate überführen kann.
Hier findest du die Vorlage zur generierung einer PDF oder eines Latex-Files für B-Prüfungen an der WBH. Es integriert die Vorlage für B-Prüfungen in den Arbeitsablauf für Pandoc.

## Vorraussetzuungen
Zur Nutzung dieses Templates werden folgende Tools vorrausgesetzt

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
C:\Users\Username\AppData\Roaming\pandoc\templates
Falls der Ordner noch nicht existiert einfach anlegen.

```


## Verwendung

Um alle Felder der Vorlage aus zu füllen musst du die folgenden Zeilen an den Anfang deines Dokumentes einfügen und ausfüllen.

```
---
title:
date:
logo:
author:
student:
  name:
  email:
  strasse:
  ort:
  matriklnr:
studium:
  studiengang:
  studiengangnr:
  fach:
arbeit:
  typ:
  code:
...
```

Nun kannst du mit hilfe von `pandoc -s --template=wbh.tex -o output.pdf input.md` dein Markdown file in ein PDF mit der gegeben Vorlage umwandeln.

Alternativ kannst du das `Makefile` im Ordner `Beispiel/` nutzen, dazu einfach "make" eingeben - vorrausgesetzt du hast make installiert bist im richtigen Pfad:

`user@machine ~/Documents/pandoc-wbh-template/Beispiel:$ make`

Make ist in der Regel Teil des Pakets `build-essentials`, welches du mit  `sudo apt-get install build-essential` unter Ubuntu/Mint, `yum install gcc gcc-c++ kernel-devel make`unter CentOS / RHEL, oder unter Arch mit `sudo pacman -Sy base-devel` installieren kannst.

### Variablen

Im Folgenden sind die einzelnen Variablen und Schalter erläutert. Alle Optionalen Variablen werden nicht benötigt und können somit leer bleiben oder ganz weg gelassen werden.

|   Variable    |                     Beschreibung                      | Optional |    default    |
|:------------- |:----------------------------------------------------- |:-------- |:------------- |
| title         | Titel der Arbeit/B-Prüfung                            | nein     |               |
| author        | Der Uhrheber der Arbeit, in der Regel dein Name       | ja       |               |
| student       | Informationen über dich                               | nein     |               |
| name          | Dein Name, wird als Author verwendet                  | nein     |               |
| matrikelnr    | Deine Matrikelnummer                                  | ja       |               |
| email         | Deine E-Mail Adresse                                  | ja       |               |
| studium       | Informationen zum Studiengang und dem Fach            | ja       |               |
| studiengang   | Dein Studiengang                                      | ja       |               |
| studiengangnr | Diese findest du unter "Main Studium" SG-Nr.          | ja       |               |
| fach          | In welchem Fach wird die Prüfung bearbeitet           | ja       |               |
| aufgabencode  | Der Code befindet sich auf deiner B-Prüfung ganz oben | ja       |               |
| date          | Datum der Abgabe                                      | ja       | today         |
| lang          | Sprache des Dokumentes "Ländercode"                   | ja       | de            |
| logo          | Der Pfad zum Logo (Standard ./Bilder/logo.png)        | ja       | Pfad zum Bild |
| toc           | Hinzufügen des Inhaltsverzeichnises                   | ja       | true / false  |
| abk           | Abkürzungsverzeichnis                                 | ja       | true /false   |
| lot           | Verzeichnis der Tabellen                              | ja       | true / false  |
| lof           | Liste der Figuren/Abbildungen                         | ja       | true / false  |

## ToDo

- [ ] Codeblock mit Linenumbers
- [ ] Installationsanleitung
