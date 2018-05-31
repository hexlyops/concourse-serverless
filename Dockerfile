FROM node:9-alpine

RUN mkdir -p /aws && \
    apk -Uuv add python3 jq bash && \
    rm /var/cache/apk/*

COPY opt /opt
RUN chmod +x /opt/resource/*

RUN pip3 install awscli

RUN npm install --loglevel error -g serverless