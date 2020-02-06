#!/bin/bash

version=ojs-3_1_1-4

docker build -t local/ojs:"$version" .

sed -i "s!pkpofficial/$version!local/$version!g" \
       "docker-compose.yml"
