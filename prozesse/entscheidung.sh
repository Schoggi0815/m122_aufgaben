#!/bin/bash
# Skript: entscheidung.sh
# Aufruf: entscheidung.sh filename1 filename2

if test $# -ne 2
    then
        echo "Please enter two filenames."
        echo "Usage: entscheidung.sh filename1 filename2"
    else
    if test -e $1
    then
        echo "The file exists"
    else
    echo "The file \"$1\" doesn't exist"
    exit 1
    fi
    if test -e $2
    then echo "The file exists"
    else 
    echo "The file \"$2\" doesn't exist"
    exit 1
    fi
fi