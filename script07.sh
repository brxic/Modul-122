#!/bin/bash
# Name:         script07.sh
# Aufruf:       script07.sh <Dateiname>
# Beschreibung: Es wird überprüft ob die Zieldatei vorhanden ist, wenn ja dann wird die Quelldatei dorthin kopiert
# Autor:        Basil Ramseyer
# Version:      1.0
# Datum:        03.05.24


# Überprüfen, ob die Anzahl der übergebenen Argumente korrekt ist
if [ $# -ne 2 ]; then
    echo "Bitte geben Sie zwei Dateinamen als Argumente ein: Quelldatei und Zieldatei."
    exit 1
fi

quelle="$1"
ziel="$2"

# Überprüfen, ob die Zieldatei bereits existiert
if [ -f "$ziel" ]; then
    cp "$quelle" "$ziel"
    echo "Die Quelldatei '$quelle' wurde erfolgreich zur Zieldatei '$ziel' kopiert."
else
    echo "Die Zieldatei '$ziel' existiert nicht."
    exit 1
fi
