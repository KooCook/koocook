#!/bin/bash
scp -o StrictHostKeyChecking=no -i ~/.ssh/gce_koocook_2 "$PWD/config/db.env" soscamp8@35.197.101.143:~/koocook-app/config/
scp -o StrictHostKeyChecking=no -i ~/.ssh/gce_koocook_2 "$PWD/config/dj.env" soscamp8@35.197.101.143:~/koocook-app/config/
