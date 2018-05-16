FROM node:9-alpine

RUN mkdir -p /aws && \
    apk -Uuv add python3 jq && \
    rm /var/cache/apk/*

COPY opt /opt

RUN pip3 install awscli

RUN npm install --loglevel error -g serverless