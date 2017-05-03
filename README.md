Mapnik Styles for use with SQLite database
==========================================

This repository is intended for a collection of Mapnik styles that
work with the same database schema. The corresponding importer is in
import subfolder of this repository.

At present, only OSM Bright style is available. The style is generated
on the basis of OSM Bright (most of the organization of the style and
scripts) and OSM Bright TM2 (style adopted).

OSM Bright TM2: https://github.com/mapbox/mapbox-studio-osm-bright.tm2
OSM Bright: https://github.com/mapbox/osm-bright

Styles are writen in Carto styling language (http://github.com/mapbox/carto).

Import
======

Import script allows you to prepare SQLite database from OpenStreetMap
PBF dataset. For that, you would have to have ogr2ogr and spatialite
available. See `import_pbf.sh` for details.


OSM Bright SQLite
=================

OSM Bright SQLite is based on OSM Bright Mapnik style (version TM2)
which is tailored to be used by SQLite database backend.

![screenshot](https://raw.github.com/rinigus/mapnik-styles-sqlite/master/preview.png)


### Acknowledgments

Importer script is based on a blog post
http://www.ram-solutions.nl/2015/converting-openstreetmap-data-to-sqlite-and-render-it-using-the-osmbright-style
and the SQL script provided by the author of the post.

The approach described in that post was taken as a basis and tuned
further to provide complete solution.
