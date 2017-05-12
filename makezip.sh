#!/bin/sh

# jq comes from https://stedolan.github.io/jq/download (or apt install it).
NAMES='InfluxDBExporter'

for NAME in $NAMES; do
    cd $NAME
    VERSION=`jq -r '.version' info.json`
    ZIP=${NAME}_${VERSION}

    git archive --format=zip --prefix=$ZIP/ -o ../$ZIP.zip  HEAD  .    
done
