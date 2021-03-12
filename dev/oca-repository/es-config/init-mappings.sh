#!/bin/bash

for index_mapping in mappings/*.json
do
    filename="$(basename $index_mapping .json)"
    curl -XPUT es01:9200/$filename/_mapping -H 'Content-Type: application/json' -d "@$index_mapping"
done
