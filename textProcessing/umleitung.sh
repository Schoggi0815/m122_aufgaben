#!/bin/bash
# Skript: umleitung.sh
# Aufruf: umleitung.sh
# Autor: Matteo Bossi

# lists all files with a .txt ending:

# ls -l | grep "\.txt$"


# replaces aeio with u :

# ls -l | sed -e "s/[aeio]/u/g"


# creates a text file (ls-l.txt) with a list of all the filles in the folder:

# ls -l > ls-l.txt


# creates an error log (error.txt) for the command Cat:

# Cat dateiDieEsNichtGibt.txt 2> error.txt


# creates an error log to /dev/null
# /dev/null is a black hole so there is non log

Cat dateiDieEsNichtGibt.txt 2> /dev/null

