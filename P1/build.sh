#!/usr/bin/env sh

if [ -z "$1" ]; then
    path="."
else
    path="$1"
fi

docker build -t host $path/host
docker build -t router $path/router
