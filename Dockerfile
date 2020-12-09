FROM golang:1.14-alpine

RUN apk add --no-cache rpm-dev

RUN mkdir -p /root/rpmbuild/

ADD ./src ./src

RUN cd ./src && \
    go build . && \
    mv parser /usr/bin/ && \
    rm -r *

WORKDIR /root/rpmbuild/
