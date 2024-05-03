#!/bin/bash
# Name:         script08.sh
# Aufruf:       script08.sh <Dateiname>
# Beschreibung: überprüft ob: existiert verz. mit dem namen, existiert datei mit dem namen(falls ja werden vorhandene rechte für datei ausgegeben), gibt es nichts mit dem namen  
# Autor:        Basil Ramseyer
# Version:      1.0
# Datum:        03.05.24


# Überprüfen, ob ein Dateiname als Argument übergeben wurde
if [ $# -ne 1 ]; then
    echo "Bitte geben Sie einen Dateinamen als Argument ein."
    exit 1
fi


# Überprüfen, ob ein Verzeichnis mit dem Namen existiert
if [ -d "$1" ]; then
    echo "Ein Verzeichnis mit dem Namen '$1' existiert."
fi

# Überprüfen, ob eine Datei mit dem Namen existiert
if [ -f "$1" ]; then
    echo "Eine Datei mit dem Namen '$1' existiert."
    echo "Die Rechte für '$1' sind:"
    ls -l "$1" | cut -d ' ' -f 1
fi

# Überprüfen, ob weder Datei noch Verzeichnis mit dem Namen existiert
if [ ! -e "$1" ]; then
    echo "Es existiert weder eine Datei noch ein Verzeichnis mit dem Namen '$1'."
fi
