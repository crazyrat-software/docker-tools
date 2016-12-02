#!/bin/bash

docker pull php:5.6-fpm
docker build -t my/php56 .