# Pandoc Vorlage für B-Prüfungen

Pandoc ist ein Programm mit dem man Markdown (und andere formate) in viele verschiedene Formate überführen kann.
Hier findest du die Vorlage zur generierung einer PDF oder eines Latex-Files für B-Prüfungen an der WBH.
Es integriert die Vorlage für B-Prüfungen in den Arbeitsablauf für Pandoc.

## Installation

Kopiere die Vorlage in das Verzeichnis `/user/share/pandoc/data/templates`.

In deinem Projekt fügst du an den anfang folgende Zeilen ein und füllst sie aus:


## Verwendung

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

### Variablen

| Variable | Beschreibung | Optional |
| -------- | ------------ | -------- |
| title    | Titel der Arbeit/B-Prüfung | nein |
| author   | Der Uhrheber der Arbeit, in der Regel dein Name | nein |
| matrikelnr | Deine Matrikelnummer | nein |
| studiengang | Dein Studiengang | nein |
| fach | In welchem Fach wird die Prüfung bearbeitet | nein |
| aufgabencode | Der Code befindet sich auf deiner B-Prüfung ganz oben | nein |
| date | Datum der Abgabe | nein |
| lang | Sprache (Standard ist en = Englisch) | ja |
| logo | Der Pfad zum Logo (Standard ./Bilder/logo.png) | ja |
