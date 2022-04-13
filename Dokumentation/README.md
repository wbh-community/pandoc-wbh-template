# Einführung

Bei diesem Template handelt es sich um eine inoffizielle Vorlage zur Erstellung von Hausarbeiten und Abschlussarbeiten an der Wilhelm-Büchner-Hochschule. Das Template wird von ehemaligen und aktiven Studierenden der Wilhelm-Büchner-Hochschule entwickelt und betreut. Zur erstellung fertiger PDF oder vorbereiteter \latex Dokumente wird Pandoc eingesetzt. 
Dieses Dokument bietet eine ausführliche Einführung in die Verwendung von pandoc in Verbindung mit dieser Vorlage. Außerdem finden sich Tipps und Hinweise für nützliche Tools sowie Arbeitsweisen um die Produktivität und Sicherheit zu steigern. Dabei handelt es sich um eine Erfahrungssammlung und somit praxiserprobte Vorgehensweisen.

## Was ist pandoc?

# Metadaten

In den Metadaten finden sich die grundlegenden Informationen zum Dokument. Außerdem können dort verschiedene Parameter für das Dokument gesetzt werden. Zusätzlich zu den hier beschriebenen Parameter sind auch noch pandoc eigene Parameter möglich, diese finden sich in der Dokumentation von pandoc.

```yaml
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
  matrikelnr:
studium:
  studiengang:
  studiengangnr:
  fach:
  fachbereich:
aufgabe:
  typ:
  code:
arbeit:
  typ:
  code:
lang:
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
: Überblick der möglichen Parameter

Im folgenden werden die Optionen der einzelnen Parameter näher erläutert.

## student

| Parameter | Optional |
| --------- | ---- | 
| firstname | nein |
| lastname | nein |
| email | ja |
| strasse | ja |
| ort | ja |
| matrikelnr | nein |

## studium

| Parameter | Optional |
| --------- | ---- |
| studiengang | nein |
| studiengangnr | nein |
| fach | nein |
| fachbereich | nein |

## aufgabe

Unter Aufgabe werden die Informationen zu der bearbeiteten Hausarbeit eingetragen. Als Aufgaben``typ`` kommen "A-Aufgabe", "B-Aufgabe" oder auch "Bachelorthesis", "Masterthesis", "Projektarbeit", "Berufspraktikum" in Frage. Der Aufgaben``code`` muss bei den Hausarbeiten mit angegeben werden um die Aufgaben zuordnen zu können.

| Parameter | Optional |
| --------- | ---- |
| typ | nein | 
| code | ja |


## Betreuer

| Parameter | Optional |
| --------- | --- |
| | |

## Setup

# Formatierung

## Überschriften

## Absätze

## Zitate

## Codeblock

## Tabelle

## Formeln

## Bilder

# Funktionen

## Acronyme
