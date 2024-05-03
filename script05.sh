#!/bin/bash
# Name:         script05.sh
# Aufruf:       script05.sh <gewünschter Unterordnername>
# Beschreibung: kopiert Dateien von einem File ins andere
# Autor:        Basil Ramseyer
# Version:      1.0
# Datum:        03.05.24


cd Testdaten || exit 1 # Wechsel zum Verzeichnis Testdaten; Bei Fehlerabbruch

# Überprüfe, ob das Verzeichnis bereits existiert
if [ ! -d "$1" ]; then 
    mkdir "$1" || exit 1 # Verzeichnis erstellen; Bei Fehlerabbruch
else
    echo "Das Verzeichnis existiert bereits."
fi

cp *.* "$1" || exit 1 # Dateien kopieren; Bei Fehlerabbruch
