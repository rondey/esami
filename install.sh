#!/bin/bash
git submodule init
git submodule update

docker compose run backend sh -c "yarn install && yarn migration:run && yarn seed:run"
docker compose run frontend npm install
