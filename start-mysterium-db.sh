#!/bin/sh

sudo docker run --net=mysterium -d --restart=always --name mysterium-mysql -p 33061:3306 \
	-e MYSQL_ROOT_PASSWORD=root \
	-e MYSQL_DATABASE=myst_api \
	-e MYSQL_USER=myst_api \
	-e MYSQL_PASSWORD=myst_api \
	percona:5.7
