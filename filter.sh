#!/bin/bash

#curl -S --progress-bar "http://osmose.openstreetmap.fr/export/osmose-planet-latest.csv.bz2" > $name.csv.bz2
#gzip -d $name.csv.bz2
mkdir data
while read line
do
    n=$line
    echo "csvgrep -c analyser -r \"$n\" osmose-planet-latest.csv  > data/$n.csv"
    eval "csvgrep -c analyser -r \"$n\" osmose-planet-latest.csv  > data/$n.csv"    
    #echo "csvgrep -c country -r \"$2\" data/$n.csv  > data/$2-$n.csv"
    #eval "csvgrep -c country -r \"$2\" data/$n.csv  > data/$2-$n.csv"
    echo python csv2shp.py $n.csv $n.shp
    python csv2shp.py $n.csv $n.shp
    #rm data/$2-$n.csv
done < $1

csvgrep -c class -r "2" osmosis_deadend.csv  > osmosis_deadend-class-2.csv
python csv2shp.py osmosis_deadend-class-2.csv osmosis_deadend.shp

csvgrep -c class -r "2" osmosis_useless.csv  > osmosis_useless-class-2.csv
python csv2shp.py osmosis_useless-class-2.csv osmosis_useless.shp

csvgrep -c class -r "2" osmosis_duplicated_geotag.csv  > osmosis_duplicated_geotag-class-2.csv
python csv2shp.py osmosis_duplicated_geotag.csv osmosis_duplicated_geotag.shp

