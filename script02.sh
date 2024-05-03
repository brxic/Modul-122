#!/bin/bash
# Name:         script02.sh
# Aufruf:       script02.sh <folder>
#               folder - Name eines zu erstellenden Verzeichnisses
# Beschreibung: Es wird ein Verzeichnise <folder> erstellt und es werden Dateien hineinkopiert
# Autor:        Basil Ramseyer
# Version:      1.0
# Datum:        03.05.24

cd Testdaten # Verzeichniswechsel zu Testdaten 
mkdir $1     # Verzeichnis <folder> anlegen
cp *.* $1    # Dateien kopieren
