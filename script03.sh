#!/bin/bash
# Name:         script03.sh
# Aufruf:       <Name des Scripts> [<1. Parameter>] [<2. Parameter>]
#               [<Beschreibung des 1. Parameters (falls vorhanden)>]
#               [<Beschreibung des 2. Parameters (falls vorhanden)>]
# Beschreibung: <Was macht das Script?>
# Autor:        Basil Ramseyer
# Version:      1.0
# Datum:        03.05.24

wert="Basel"
if test "$wert" = "Bern"
then 
  echo "der Vergleich ist korrekt"
else
  echo "der Vergleich ist nicht korrekt"
fi
