FROM node:alpine

RUN apk add --update curl git \
      && curl -SL https://github.com/gohugoio/hugo/releases/download/v0.66.0/hugo_0.66.0_Linux-64bit.tar.gz -o /tmp/hugo.tar.gz \
      && tar -xzf /tmp/hugo.tar.gz -C /tmp \
      && apk del curl \
      && mv /tmp/hugo /usr/local/bin/hugo \
      && chmod +x /usr/local/bin/hugo \
      && rm -rf /tmp/*
