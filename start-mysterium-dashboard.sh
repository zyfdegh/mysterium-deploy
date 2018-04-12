#!/bin/sh

sudo docker run --net=mysterium --name=mysterium-dashboard -d --restart=always -p 8002:80 \
	-e APP_PORT=80 \
	-e DB_HOST=mysterium-mysql \
	-e DB_NAME=myst_api \
	-e DB_USER=myst_api \
	-e DB_PASSWORD=myst_api \
	mysterium/dashboard:latest
