#!/bin/bash

set -e

#git clone --recursive https://github.com/rinigus/wkb2twkb-sqlite
#(cd wkb2twkb-sqlite && make)

mkdir -p spatialite
cd spatialite

PREF=`pwd`/install

# librttopo
git clone https://git.osgeo.org/gogs/rttopo/librttopo
cd librttopo
git checkout librttopo-1.1.0
./autogen.sh
./configure --prefix=$PREF
make -j8
make install
cd ..

export PKG_CONFIG_PATH=$PREF/lib/pkgconfig
export CFLAGS="-I$PREF/include -g -O2"
export CXXFLAGS=$CFLAGS
export LDFLAGS="-L$PREF/lib"

# libspatialite
LS=libspatialite-5.0.1
wget http://www.gaia-gis.it/gaia-sins/libspatialite-sources/$LS.tar.gz
tar zxvf $LS.tar.gz
cd $LS

./configure --prefix=$PREF
make -j8
make install
cd ..

# spatialite-tools
ST=spatialite-tools-5.0.1
wget http://www.gaia-gis.it/gaia-sins/spatialite-tools-sources/$ST.tar.gz
tar zxvf $ST.tar.gz
cd $ST
./configure --prefix=$PREF
make -j8
make install
cd ..
