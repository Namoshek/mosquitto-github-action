#!/bin/sh

VERSION=$1
PORT=$2
PORT_WS=$3

docker run --name mosquitto --publish $PORT:$PORT --publish $PORT_WS:$PORT_WS --detach eclipse-mosquitto:$VERSION
