#!/bin/bash
while read line
do
    n=$line
    echo "csvgrep -c country -r \"usa_missouri\" data/$n.csv  > data/usa_missouri-$n.csv"
    eval "csvgrep -c country -r \"usa_missouri\" data/$n.csv  > data/usa_missouri-$n.csv"
done < $1