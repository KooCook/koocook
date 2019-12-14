#!/bin/bash
cd ~/koocook-app || exit
gcloud auth activate-service-account --key-file gae_skey.json

git pull
git submodule sync
git submodule update --recursive --remote

sudo docker image prune -f
sudo docker-compose build
sudo docker-compose up -d
sudo docker exec koocook-dj python manage.py makemigrations
sudo docker exec koocook-dj python manage.py migrate
