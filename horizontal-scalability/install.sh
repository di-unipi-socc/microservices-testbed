#!/bin/sh -xe

docker-compose -f docker-compose.yml build
docker network create horizontalscalability_default
