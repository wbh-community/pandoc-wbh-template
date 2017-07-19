---
title: Pandoc und Markdown für deine Texte
author:
  name: Sebastian Preisner
  email: wbh@calyrium.org
  matrikelnr: 900266
studium:
  studiengang: Technische Informatike
  studiengangnr: 1140
  fach: Freizeitgestaltung
aufgabe:
  typ: B-Prüfung
  code: Freiwillige_Arbeit
date: 08.06.2017
lang: de
toc: t
...

# Einführung
Im Folgenden möchte ich dir Pandoc und Markdown näher bringen und dir zeigen wieso du in Zukunft nur noch so schreiben möchtest. Dabei werde ich zunächst ein grobes Bild von Pandoc und Markdown zeichnen und dir im weiteren Verlauf die Installation und den Einsatz näher bringen und zum Schluss gehe ich nochmal speziell auf diese Vorlage für Pandoc ein.

## Was ist Markdown?
Markdown ist eine Auszeichnungssprache und wurde maßgeblich von den frühen Text-E-Mails beeinflusst. Zu Zeiten wo man noch keine E-Mails mit Überschriften, kursiver und fettgedruckter Schrift usw. verfassen konnte musste man sich anderweitig behelfen. Das Ziel von Markdown ist die Lesbarkeit und einfache Schreibbarkeit von Texten. Das ermöglicht dem Schreiber eine hohe Konzentration auf den Text und wenig ablenkung durch Formatierungen verglichen WISIWYG (What you see is what you get) Editoren wie Microsoft Word. Zur Veranschaulischung möchte ich dir hier kruz ein paar Formatierungen im Dokument zeigen:

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
