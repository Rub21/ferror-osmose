#!/bin/bash
name = "osmose-planet-latest"
#curl -S --progress-bar "http://osmose.openstreetmap.fr/export/osmose-planet-latest.csv.bz2" > $name.csv.bz2
#gzip -d $name.csv.bz2
mkdir data
while read line
do
    n=$line
    echo "csvgrep -c analyser -r \"$n\" osmose-planet-latest.csv  > data/$n.csv"
   # csvgrep -c analyser -r \"$n\" $name.csv  > $n.csv
    eval "csvgrep -c analyser -r \"$n\" osmose-planet-latest.csv  > data/$n.csv"
done < $1