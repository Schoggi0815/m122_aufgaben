#!/bin/bash
# Skript: zahlen_raten.sh
# Aufruf: zahlen_raten.sh

# random number between 1-20
number=$[$RANDOM %20]

#Get user input
read -p "Enter a number between 1 and 20: " guess

# Check that input is not equal to number
while [ $number -ne $guess ]
do
    # Check if input is bigger
    if [ $number -lt $guess ]
    then
        read -p "Number too big: " guess
    fi

    # Check if input is smaller
    if [ $number -gt $guess ]
    then
        read -p "Number too small: " guess
    fi
done

echo "Yes, thats correct!"
