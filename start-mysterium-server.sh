#!/bin/sh

sudo docker run --cap-add NET_ADMIN --net mysterium --net host --publish "1194:1194" --name mysterium-node -d mysterium/server:latest
