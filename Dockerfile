FROM node:10-alpine

RUN mkdir -p /aws && \
  apk -Uuv add python3 jq git bash && \
  rm /var/cache/apk/*

COPY opt /opt
RUN chmod +x /opt/resource/*

RUN pip3 install awscli

RUN npm install --loglevel error -g serverless