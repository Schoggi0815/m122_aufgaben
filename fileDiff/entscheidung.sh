#!/bin/bash
# Skript: entscheidung.sh
# Aufruf: entscheidung.sh filename1 filename2
if test $# -ne 2
then
 echo "Please enter two filenames."
 echo "Usage: entscheidung.sh filename1 filename2"
else
 echo "Here the two files get worked on."
fi