#!/bin/bash
cd ~/koocook-app  || exit


gcloud auth activate-service-account --key-file gae_skey.json
git submodule update --recursive --remote koocook-proxy/
gcloud app deploy koocook-proxy/app.yaml

sudo docker image prune -f
sudo docker-compose pull
sudo docker-compose up -d
