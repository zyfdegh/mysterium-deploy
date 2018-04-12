#!/bin/sh

sudo docker run --net=mysterium -d --restart=always --name=mysterium-apiserver -p 8001:80 \
	-e APP_PORT=80 \
        -e DB_HOST=mysterium-mysql \
        -e DB_NAME=myst_api \
        -e DB_USER=myst_api \
        -e DB_PASSWORD=myst_api \
	mysterium/apiserver:latest
