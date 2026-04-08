FROM debian:trixie

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    mmdebstrap \
    ca-certificates \
    curl \
    xz-utils \
    file \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work
