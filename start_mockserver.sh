#!/usr/bin/env bash

docker rm -f $(docker ps | grep wiremock-container)

docker build -t apimocks .

docker run -d --name wiremock-container -it --rm -p 8084:8080 apimocks
