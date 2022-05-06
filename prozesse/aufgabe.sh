#!/bin/bash
# Skript: aufgabe.sh
# Aufruf: aufgabe.sh process

if test $# -ne 1
then
    echo "Please enter a process."
    echo "Usage: aufgabe.sh process"
else
    if ps | grep $1
    then
        echo "Process $1 is running"
    else
        echo "Process $1 is not running"
    fi
fi
