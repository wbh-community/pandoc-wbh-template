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
hochschule:
author:
student:
  firstname:
  lastname:
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
#assignment: 
#  file: '`Aufgabenstellung/Aufgabenstellung.pdf`{=latex}'     
#  pages: '`-`{=latex}'      # All pages
#  pages: '`1,3`{=latex}'    # Page 1 and 3
#  beforetitle: 1
#  multipage: 1
#  fillform: 1
# Optionale Seitenrändereinstellungen
seite:     
  rand_oben: 20mm
  rand_unten: 20mm
  rand_links: 30mm
  rand_rechts: 40mm
...
```

Nun kannst du mit hilfe von `pandoc -s --template=wbh.tex -o output.pdf input.md` dein Markdown file in ein PDF mit der gegeben Vorlage umwandeln.

Alternativ kannst du das `Makefile` im Ordner `Beispiel/` nutzen, dazu einfach "make" eingeben - vorrausgesetzt du hast make installiert bist im richtigen Pfad:

`user@machine ~/Documents/pandoc-wbh-template/Beispiel:$ make`

Make ist in der Regel Teil des Pakets `build-essentials`, welches du mit  `sudo apt-get install build-essential` unter Ubuntu/Mint, `yum install gcc gcc-c++ kernel-devel make`unter CentOS / RHEL, oder unter Arch mit `sudo pacman -Sy base-devel` installieren kannst.

### Variablen

Im Folgenden sind die einzelnen Variablen und Schalter erläutert. Alle Optionalen Variablen werden nicht benötigt und können somit leer bleiben oder ganz weg gelassen werden.

|   Variable             |                     Beschreibung                      | Optional |    default    |
|:---------------------- |:----------------------------------------------------- |:-------- |:------------- |
| title                  | Titel der Arbeit/B-Prüfung                            | nein     |               |
| author                 | Der Uhrheber der Arbeit, in der Regel dein Name       | ja       |               |
| student                | Informationen über dich                               | nein     |               |
| student.firstname      | Vorname                                               | nein     |               |
| student.lastname       | Nachname                                              | nein     |               |
| student.strasse        | Strasse                                               | nein     |               |
| student.ort            | PLZ + Ort                                             | nein     |               |
| matrikelnr             | Deine Matrikelnummer                                  | ja       |               |
| email                  | Deine E-Mail Adresse                                  | ja       |               |
| studium                | Informationen zum Studiengang und dem Fach            | ja       |               |
| studiengang            | Dein Studiengang                                      | ja       |               |
| studiengangnr          | Diese findest du unter "Main Studium" SG-Nr.          | ja       |               |
| fach                   | In welchem Fach wird die Prüfung bearbeitet           | ja       |               |
| aufgabencode           | Der Code befindet sich auf deiner B-Prüfung ganz oben | ja       |               |
| date                   | Datum der Abgabe                                      | ja       | today         |
| lang                   | Sprache des Dokumentes "Ländercode"                   | ja       | de            |
| logo                   | Der Pfad zum Logo (Standard ./Bilder/logo.png)        | ja       | Pfad zum Bild |
| toc                    | Hinzufügen des Inhaltsverzeichnises                   | ja       | true / false  |
| abk                    | Abkürzungsverzeichnis                                 | ja       | true /false   |
| lot                    | Verzeichnis der Tabellen                              | ja       | true / false  |
| lof                    | Liste der Figuren/Abbildungen                         | ja       | true / false  |
| skipfirstpage          | Zählt die Titleseite nicht mit                        | ja       | true          |
| assignment.file        | Pfad zur Aufgabenstellung                             | ja       |               |
| assignment.pages       | Seitenzahlen der Aufgabenstellung                     | ja       | -             |
| assignment.beforetitle | Seitenzahlen der Aufgabenstellung                     | ja       | 1             |
| assignment.fillform    | Füllt Name und Addresse auf der Aufgabenstellung aus  | ja       | 1             |
| assignment.multipage   | Mehr als die erste Seite einbinden                    | ja       | 1             |
| seite.rand_oben    | Seitenrand oben                                       | ja       | 20mm          |
| seite.rand_unten   | Seitenrand unten                                      | ja       | 20mm          |
| seite.rand_rechts  | Seitenrand rechts                                     | ja       | 40mm          |
| seite.rand_links   | Seitenrand links                                      | ja       | 30mm          |


### Aufgabenstellung mit einbinden

Das Template erlaubt es, durch setzen der Variablen im Block `assignment`, die Aufgabenstellung mit einzubinden und vor das eigentliche PDF zu stellen. Das Inhaltsverzeichnis der Lösung bleibt dabei korrekt erhalten, anders als es teilweise passieren kann wenn man die PDFs nachträglich zusammengesetzt werden.

Um dem Escaping von pandoc vorzubeugen müssen die Angaben im `assignment` Block in ` '`Wert`{=latex}' ` eingeschlossen werden.

**Seitenbereich**

Für einzelne Seiten kann man folgendes schreiben:
```
assignment: 
  file: '`Aufgabenstellung/Aufgabenstellung_1.pdf`{=latex}'     
  pages: '`1-2`{=latex}'  
```

**Einzelne Seiten**

Für einzelne Seiten kann man folgendes schreiben:
```
assignment: 
  file: '`Aufgabenstellung/Aufgabenstellung_1.pdf`{=latex}'     
  pages: '`-`{=latex}'  
```

**Bereich (Range)**

Eine Range kann durch `{x-y}` angegeben werden.

```
#assignment: 
#  file: '`Aufgabenstellung/Aufgabenstellung.pdf`{=latex}'     
#  pages: '`{1-2}`{=latex}'  
```
Dabei unbedingt die einfachen Anführungszeichen drin lassen. Eine Range kann leider nicht angegeben

Weitere Hinweise stehen in der (Dokumentation)[https://texdoc.org/serve/pdfpages.pdf/0] des LaTeX packages `pdfpages`



**Vor oder Nach der Titelseite?**

Die Variable `assignment.beforetitle` steuert, ob die Aufgabenstellung vor oder nach der Titelseite eingebunden wird. Die Seitenzahlen zählen in beiden Fällen nicht mit. 

### Ausfüllen des Adressteils der Aufgabenstellung

Wenn `assignment.fillform` gesetzt ist, kann das Pandoc Template Name und Adresse des Studenten in den Kopfteil von A-/B- Aufgaben der WBH ausfüllen. Das Feature ist experimentell und wurde mit B-DSV und B-HFT getestet. Die Felder sind pixelbasiert platziert, es kann also bei Abweichungen in der Aufgabenstellung dazu kommen das die Koordinaten in `wbh.tex` angepasst werden müssen.

Da zuerst die erste Seite des PDFs ausgefüllt wird, muss der Rest des Formulars separat eingebunden werden. Wenn die Aufgabenstellung mehr als eine Seite ist, daher muss für diesen Fall `assignment.multiplage` gesetzt sein.

### Logo oder Name der Hochschule

Es wird entweder das Logo oder der Name der Hochschule auf dem Titelblatt ausgegeben, jedoch nicht beides. Sollte beides gesetzt sein, so wird gar nichts ausgegeben.


## ToDo

- [ ] Codeblock mit Linenumbers
- [ ] Installationsanleitung
