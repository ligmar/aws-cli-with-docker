FROM docker:latest

RUN apk --no-cache update && \
    apk --no-cache add ca-certificates groff less && \
    apk --no-cache add curl jq python3 py3-pip git  && \
    pip3 --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*

WORKDIR /data