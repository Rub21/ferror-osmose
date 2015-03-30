# ferror-osmose
Proces data from : http://osmose.openstreetmap.fr/export/


#### Setup the file analyser
Filter per field: **analyser**
You have to setup the interesting category on file `analyser`

in this case
```
osmosis_useless
osmosis_deadend
osmosis_building_overlaps
osmosis_duplicated_geotag
```

#### Run the file

`./filter.sh analyser`
