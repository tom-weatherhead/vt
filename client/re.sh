#!/bin/bash

DOCKER_PS="$(docker ps -a -q)"

if ! [ -z "$DOCKER_PS" ]; then
	echo "Stopping $DOCKER_PS"
	docker stop "$DOCKER_PS"
	echo "Removing $DOCKER_PS"
	docker rm "$DOCKER_PS"
else
	echo "Nothing to stop or remove."
fi

echo "Building"
docker build -t angular-client:dev .

echo "Running"
docker run -d --name angular-client -p 4200:4200 angular-client:dev

# telnet -K localhost 4200

# docker stop angular-client

