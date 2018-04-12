#!/bin/sh

sudo docker run -d --restart=always --name=nats -p 4222:4222 -p 8222:8222 nats
