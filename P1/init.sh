#!/usr/bin/env sh

docker system prune -af
docker build -t host ./host
docker build -t router ./router