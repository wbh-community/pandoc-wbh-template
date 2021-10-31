---
logo: ../Bilder/logo.png
title: Pandoc und Markdown für deine Texte
author: Sebastian Preisner
student:
  name: Sebastian Preisner
  email: wbh@calyrium.org
  matrikelnr: 900266
studium:
  studiengang: Technische Informatik
  studiengangnr: 1140
  fach: Freizeitgestaltung
aufgabe:
  typ: B-Prüfung
  code: Freiwillige_Arbeit
date: 08.06.2017
lang: de
toc: \\
skipfirstpage: 1 
assignment: 
  include: 1 
  file: \noescape{Aufgabenstellung/Aufgabenstellung.pdf}
  pages: '-'

...

# Einführungauthor
Im Folgenden möchte ich dir Pandoc und Markdown näher bringen und dir zeigen wieso du in Zukunft nur noch so schreiben möchtest. Dabei werde ich zunächst ein grobes Bild von Pandoc und Markdown zeichnen und dir im weiteren Verlauf die Installation und den Einsatz näher bringen und zum Schluss gehe ich nochmal speziell auf diese Vorlage für Pandoc ein.

## Was ist Markdown?
Markdown ist eine Auszeichnungssprache und wurde maßgeblich von den frühen Text-E-Mails beeinflusst. Zu Zeiten wo man noch keine E-Mails mit Überschriften, kursiver und fettgedruckter Schrift usw. verfassen konnte musste man sich anderweitig behelfen. Das Ziel von Markdown ist die Lesbarkeit und einfache Schreibbarkeit von Texten. Das ermöglicht dem Schreiber eine hohe Konzentration auf den Text und wenig ablenkung durch Formatierungen verglichen WISIWYG (What you see is what you get) Editoren wie Microsoft Word. Zur Veranschaulischung möchte ich dir hier kruz ein paar Formatierungen im Dokument zeigen:

Blockquote:

> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Codeblock:

```markdown
# Überschrift 1. Grades
## Überschrift 2. Grades

* Listenpunkt 1
* Listenpunkt 2
* Listenpunkt 3

Ich bin ein Text mit *kursiven* und **fetten** Elementen.
```

Anhand dieses Beispiels kann man sehen wie einfach das Schreiben von Markdown ist. Nun wirst du dir sicherlich denken was dir diese einfachheit bringt wenn dein Dokument aber aussieht wie E-Mails vor 10 Jahren. Die Antwort darauf ist, das sich in den ganzen Jahren viele Parser für Markdown entwickelt haben welche die einfache Syntax nutzen um perfekt Formatierte Texte zu erstellen. Eines dieser Tools und noch dazu das wohl mächtigste, ist Pandoc.

## Was ist Pandoc?

[Pandoc](http://pandoc.org/) ist ein Übersetzer der eine Datei von einem Markup in ein anderes übersetzt. Markup ist das englische Wort für Auszeichnung und steht für eine maschinenlesbare Sprache für die Gliederung und Formatierung von Texten und Daten. Der bekannteste Vertreter ist sicherlich die Hypertext Markup Language (HTML), die Kernsprache des World Wide Webs. Pandoc bassiert hierbei auf einer erweiterten Variante der Auszeichnungssprache Markdown.

Im folgenden findest du einige input Formate die von Pandoc unterstützt werden. Eine volle liste findest du auf der Webseite von [Pandoc](http://pandoc.org/).

- Markdown
- CommonMark
- LaTeX
- textil
- HTML
- EPUB
- LibreOffice/OpenOffice (odt)
- Microsoft Word DOCX (OOXML)
- Mediawiki
- DocBook

Alle diese Formate unterstützt Pandoc auch für den Export und zusätzlich:

- PDF via LaTeX
- Dokumentationsformate: DocBook, GNU TexInfo, Groff manpages
- HTML5, XHTML
- AsciiDoc

## Wieso sollte ich Pandoc einsetzen?
Hierfür gibt es viele gute Argumente. Zum einen kannst du deine geschriebene Arbeit

# Installation und Einrichtung
In diesem Kapitel geht es um die Installation und die Einrichtung der Tools. Da ich persönlich kein Windows besitze richtet sich die Anleitung ausschließlich an Linux nutzer. Ich würde mich jedoch über ergänzende Beiträge freuen.

## Markdown
Da Markdown lediglich eine Auszeichnungssprache ist benötigst du eigentlich nichts außer einen Texteditor. Diesen findet man unter allen gängigen Betriebssystemen. Auch auf der Konsole oder in diversen Webeditoren lässt sich Markdown schreiben (z.B. in einer E-Mail bei einem Mailprovider). Du merkst, durch die Einfachheit ist dir bei der Bearbeiten von Texten absolut keine grenze gesetzt und du wirst keine Probleme haben das Dokument auf irgend einem deiner Endgeräte (z.B. Computer, Laptop, Smartphone) zu öffnen und zu bearbeiten. Selbst auf der Arbeit sollte es für dich möglich sein (sofern du die Datei auf den Computer drauf und auch wieder herrunter bekommst, kläre dies bitte vorher mit deinem Arbeitgeber) deine Arbeiten zu vervollständigen.

Als Hilfe gibt es jedoch eine lange Liste an Markdown Editoren die dir, meist in einem Splitscreen, das Ergebnis direkt anzeigen. Den größten mir bekannten Umfang bietet ganz klar Atom, dabei handelt es sich nicht um einen reinen Markdown Editor sondern um eine Texteditor der mit vielen zusätzlichen Plugins erweitert werden kann. Er ist OpenSource und steht für alle Plattformen zur verfügung.

## Pandoc
Pandoc findest du in den gängigen Linux Distributionen in deren Repositories. Den Befehl zur Installtion für einige Distributionen findest du in der folgenden Box. Um Dateien in ein PDF Übersetzen zu können benötigt Pandoc noch LaTeX. Die LaTeX Umgebung ist sehr groß, wer also auf Speicherplatz achten muss, dem empfehle ich sich mit den benötigten Packeten auseinander zu setzen. Ansonsten ist eine volle Installation von LaTeX der einfachste Weg.

```bash
# Ubuntu, Kubuntu, Mint
sudo apt-get install pandoc

# Fedora
yum install pandoc

# Archlinux
pacman -S pandoc
```

Eine grafische Oberfläche wirst du bei Pandoc nicht finden, das Programm wird mit Hilfe von Befehlen auf der Konsole bedient. Da es sich um einen Übersetzer handelt ist dies aber kein Problem denn alle Einstellungen lassen sich Bequem in Textfom fomulieren. Wie das geht werde ich dir im nächsten Kapitel zeigen. Zunächst kannst du jedoch mit dem Befehl `pandoc -v` die installierte Version erfragen.

## PDF aus Beispiel Markdown erzeugen

### Manuell

Dem Projekt liegt im Ordner `Beispiel/` ein in Markdown geschriebenes Beispiel bei, welches du gerade liest :-) 

Du kannst das Beispiel mit Markdown nach PDF konvertieren in dem du folgendes Kommando nutzt:

`pandoc -s --template="wbh.tex" -o Beispiel/beispiel.pdf Beispiel/beispiel.md`

Die Datei `beispiel.pdf` wird ebenfalls im Unterordner `Beispiel/`erzeugt. Das Kommando musst du natürlich aus dem Stammverzeichnis des Projekts starten, damit das Template `wbh.tex` gefunden wird. Alternativ kannst du auch den Pfad anpassen.

### Über Editor 

Viele Editoren erlauben, dass du Quellcode über ein Tastaturkürzel, z.b. F5 oder F9 automatisch kompilieren kannst. Bei der Vielzahl der Editoren ist es schwierig das für alle zu beschreiben, es lohnt sich trotzdem in den Einstellungen zu prüfen ob das mit deinem Editor möglich ist. Jeder bessere Sourcecode Editor kann das.

# Latex Mathtex Beispiele

Hier ein paar Beispiele für mathematische Formeln

## Matrix

Wenn die Matrix mehr als 10 Spalten enthält, dann muss zwingend `\setcounter{MaxMatrixCols}{12}` entsprechend der Anzahl der Spalten gesetzt sein. Standarmäßig geht es sonst nur bis 10 Spalten.

$$
\setcounter{MaxMatrixCols}{12}X = 
 \begin{pmatrix}
P(A) & P(B) & P(C) & P(D) & P(E) & P(F) & P(G) & P(H) & P(I) & P(J) & P(K) & P(L)\\
1/19 & 2/19 & 3/19 & 3/19 & 3/19 & 1/19 & 1/19 & 1/19 & 1/19 & 1/19 & 1/19 & 1/19\\
\end{pmatrix}$$

## Am Gleichheitszeichen ausgerichtete Gleichungen

Wenn du Gleichungen über mehrere Zeilen schreist und diese am Gleichheitszeichen ausrichten möchtest, dann nutze `\begin{aligned}`. 
Zeilenumbrüche fügst du mit `\\` hinzu.

Die Ausrichtung richtet sich am `&` welches als Spaltenseparator dient.

$$ \displaystyle
\begin{aligned}
A &  = B + C + D + E + F\\
& \\
 A - F & = B + C + D + E 
\end{aligned}$$



