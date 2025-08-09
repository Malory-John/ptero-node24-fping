FROM node:24-bookworm-slim

RUN apt update && \
    apt install -y fping iputils-ping net-tools curl jq file unzip make gcc g++ python3-dev python3-pip libtool && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN chmod u+s /bin/ping

RUN useradd -m container

USER container

WORKDIR /home/container
