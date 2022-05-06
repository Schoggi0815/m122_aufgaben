#!/bin/sh
# a)
#du -a

# b)
total=`du -sh | awk '{print $1}'`
echo "Totale Speicherbedarf: $total"

# c)
ls -l | sort $1 $2  
