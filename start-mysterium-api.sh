#!/bin/sh

source ./start-mysterium-db.sh

echo "wait some seconds..."
sleep 30

source ./start-mysterium-apiserver.sh

# database init
sudo docker exec mysterium-apiserver bin/db-upgrade

source ./start-mysterium-dashboard.sh
