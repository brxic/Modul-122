#!/bin/bash
# Name:         script04.sh
# Aufruf:       ./script04.sh 8 3 
# Beschreibung: Es vergleicht 2 Zahlen und sortiert sie der grösse nach vom kleinsten zum grössten
# Autor:        Basil Ramseyer
# Version:      1.0
# Datum:        03.05.24


# Überprüfe, ob genau zwei Argumente übergeben wurden
if [ $# -ne 2 ]; then
    echo "Bitte geben Sie genau zwei ganze Zahlen als Argumente ein."
    exit 1
fi

# Die beiden übergebenen Zahlen speichern
zahl1=$1
zahl2=$2

# Vergleiche die Zahlen und tausche sie, wenn nötig, um die Reihenfolge aufsteigend zu machen
if [ $zahl1 -gt $zahl2 ]; then
    temp=$zahl1
    zahl1=$zahl2
    zahl2=$temp
fi

# Gib die sortierten Zahlen aus
echo "Die sortierten Zahlen sind: $zahl1 $zahl2"
