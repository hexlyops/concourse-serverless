#!/bin/bash

IMAGE=hexly/concourse-serverless
VERSION=0.0.12

docker build . -t $IMAGE:latest \
               -t $IMAGE:$VERSION
docker push $IMAGE:latest 
docker push $IMAGE:$VERSION