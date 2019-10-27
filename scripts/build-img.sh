#!/bin/bash
BASEDIR=$(dirname "$0")
cd "$BASEDIR" || exit
cd .. || exit
docker system prune
docker build koocook-dj/ -t koocook/koocook-dj:dev
docker push koocook/koocook-dj:dev
