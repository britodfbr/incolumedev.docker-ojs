#!/bin/bash

docker build -t local/ojs:"ojs-3_1_0-1" .

sed -i "s!pkpofficial/ojs:!local/ojs:!g" \
       "docker-compose.yml"
