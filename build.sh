#!/bin/bash
docker build . -t hexly/concourse-serverless:latest \
               -t hexly/concourse-serverless:0.0.1 
docker push hexly/concourse-serverless:latest 
docker push hexly/concourse-serverless:0.0.1