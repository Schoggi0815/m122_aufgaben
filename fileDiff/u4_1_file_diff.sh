#!/bin/bash
# Skript: u4_1_file_diff.sh
# Aufruf: u4_1_file_diff.sh variable1 variable2

# Überprüfe, ob zwei D/bin/bashateien als Parameter übergeben wurden
if [ ! -f "$1" ] || [ ! -f "$2" ]; then
	# Fehlermeldung
	echo "Please enter two valide filenames as parameters." >&2
	# Beende das Script
	exit 1
fi 	

# Überprüfe, welche Datei mehr Zeilen beinhaltet
# dateiLang ist die längere...
if [ `wc -l $1 | cut -d" " -f7` -gt `wc -l $2 | cut -d" " -f7` ]; then
	dateiLang="$1"
	dateiKurz="$2"
else
	dateiLang="$2"
	dateiKurz="$1"
fi

echo $dateiLang
echo $dateiKurz

# Anzahl Zeilen aus beiden Dateien auslesen
anzZeilenLang=`wc -l $dateiLang|cut -d" " -f1`
anzZeilenKurz=`wc -l $dateiKurz|cut -d" " -f1`

echo $anzZeilenLang
echo $anzZeilenKurz

# Zähler über alle Zeilenunterschiede
anzVerschiedeneZeilen=0

# Zähler über die Anzahl Zeilen der längeren Datei
for (( i=1 ; $i <= $anzZeilenLang ; i=$i+1 )); do

	# Lies die aktuelle Zeile aus dateiLang
	zeileLang=`head -$i $dateiLang|tail -1`

	# Falls in der kurzen Datei nichts mehr ist
	if [ $i -gt $anzZeilenKurz ]; then
		# Zähler über alle Zeilenunterschiede inkrementieren
		anzVerschiedeneZeilen=$(($anzVerschiedeneZeilen+1))
		# Meldung, dass die Zeilen 'verschieden' sind
		echo "$i: $zeileLang"
		echo "$i: <<in $dateiKurz nicht vorhanden>>"
		# Mit continue wird direkt die for-Schleife fortgesetzt
		continue
	fi

	# Lies die aktuelle Zeile aus dateiKurz
	zeileKurz=`head -$i $dateiKurz|tail -1`

	# Vergleiche die beiden Zeilen
	if [ "$zeileLang" != "$zeileKurz" ]; then
		# Zähler über alle Zeilenunterschiede inkrementieren
		anzVerschiedeneZeilen=$(($anzVerschiedeneZeilen+1))
		# Meldung, dass die Zeilen verschieden sind
        # Hello Motherfucker
		echo "$i: $zeileLang"
		echo "$i: $zeileKurz"
	fi

done

# Done :D
echo "$anzVerschiedeneZeilen Zeilen waren unterschiedlich!" >&2
#exit $anzVerschiedeneZeilen