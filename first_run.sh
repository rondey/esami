#!/bin/bash
docker compose run backend npm install
docker compose run frontend npm run build
