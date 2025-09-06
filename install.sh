#!/bin/bash
git submodule init
git submodule update

docker compose run backend yarn install
docker compose run frontend npm run build
