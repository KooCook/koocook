#!/bin/bash
BASEDIR=$(dirname "$0")
cd "$BASEDIR" || exit
cd .. || exit
mkdir "$PWD/config/"
echo "$GAE_SKEY" > "$PWD/config/gae_skey.json"
scp -o StrictHostKeyChecking=no "$PWD/config/gae_skey.json" "$SSH_USER@$SERVER_IP_ADR:~/koocook-app/"
scp -o StrictHostKeyChecking=no "$PWD/docker-compose.yml" "$SSH_USER@$SERVER_IP_ADR:~/koocook-app/"
ssh -o StrictHostKeyChecking=no "$SSH_USER@$SERVER_IP_ADR" 'bash -s' < "$BASEDIR/deb-auto-deploy.sh"
