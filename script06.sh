#!/bin/bash
# Name:         script06.sh
# Aufruf:       script06.sh <Dateiname>
# Beschreibung: überprüft Schreibrecht und löscht Datei wenn vorhanden
# Autor:        Basil Ramseyer
# Version:      1.0
# Datum:        03.05.24


if [-w "$1"] then
  rm "$1"
else 
  echo "Sie haben keine Schreibrechte für '$1'"
fi
