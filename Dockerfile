FROM node:alpine

RUN apk add --update curl \
      && curl -SL https://github.com/gohugoio/hugo/releases/download/v0.15/hugo_0.15_linux_amd64.tar.gz -o /tmp/hugo.tar.gz \
      && tar -xzf /tmp/hugo.tar.gz -C /tmp \
      && apk del curl \
      && mv /tmp/hugo_0.15_linux_amd64 /usr/local/bin/hugo \
      && chmod +x /usr/local/bin/hugo \
      && npm install -g --silent --unsafe-perm now \
      && rm -rf /tmp/*
