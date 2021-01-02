#!/bin/sh

VERSION=$1
PORT=$2
PORT_WS=$3

docker run --name mosquitto --publish $PORT:1883 --publish $PORT_WS:9001 --detach eclipse-mosquitto:$VERSION
