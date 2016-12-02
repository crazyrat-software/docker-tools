#!/bin/bash

docker-compose down
docker-compose ps
docker-compose up -d
docker-compose ps