FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates \
    bc \
    bison \
    flex \
    libssl-dev \
    make \
    libc6-dev \
    libncurses5-dev \
    crossbuild-essential-arm64 \
    git \
    wget \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/kernel

CMD ["bash"]