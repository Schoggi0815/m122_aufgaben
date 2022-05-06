#!/bin/bash
# Skript: textprocessing.sh
# Aufruf: textprocessing.sh
# Autor: Matteo Bossi

# Aufgabe 1, Ausgabe vom Inhalt zweier Dateien mit join:

# Es wird die dritte Zeile vom ersten File (-1 3) und die erste Zeile vom zweiten File benutzt (-2 1)

# join -1 3 -2 1 Person.txt Passwort.txt


# Aufgabe 2, sortiert die Zeilen nach Alphabet und gibt nur Unique Values aus (-u):

# sort fox1.txt fox2.txt fox3.txt -u


# Aufgabe 3, Gleiche Vorkomnisse Zählen und nach Vokommen sortieren:

# sort testfile.txt | uniq -c | sort -n


# Aufgabe 4, Nur den Namen aus den Maualpages ausgeben:

# man wc | head -n 4 | tail -n 1


# Aufgabe 5, Ausgabe von Zeilen Count und Wörter Count:

# Ausgabe der Linien mit nummerierung

wc -wl filediff.sh
cat filediff.sh -n