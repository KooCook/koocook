#!/bin/bash
cd ~/koocook-app  || exit


gcloud auth activate-service-account --key-file gae_skey.json
cd koocook-proxy/ || exit
git pull
cd ~/koocook-app  || exit
gcloud app deploy koocook-proxy/app.yaml

sudo docker image prune -f
sudo docker-compose pull
sudo docker-compose up -d
