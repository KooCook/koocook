#!/bin/bash
cd ~/koocook-app  || exit

sudo docker image prune -f
sudo docker-compose pull
sudo docker-compose up -d
