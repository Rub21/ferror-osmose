# ferror-osmose
Proces data from : http://osmose.openstreetmap.fr/export/


#### Setup the file analyser
Filter per field: **analyser**
Copy `analyser.sample` and paster and then rename to `analyser` you have to  select the category that you interesting.

in this case
```
osmosis_useless
osmosis_deadend
osmosis_building_overlaps
osmosis_duplicated_geotag
```

#### Run the file

`./filter.sh analyser`
