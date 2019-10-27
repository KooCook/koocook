#!/bin/bash
BASEDIR=$(dirname "$0")
cd "$BASEDIR" || exit
cd .. || exit
scp "$PWD/docker-compose.yml" "$SSH_USER@$SERVER_IP_ADR:~/koocook-app/"
ssh "$SSH_USER@$SERVER_IP_ADR" 'bash -s' < "$BASEDIR/deb-auto-deploy.sh"
