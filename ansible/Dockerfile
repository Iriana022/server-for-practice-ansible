FROM ubuntu:latest
RUN apt update -y && \
    apt install -y openssh-client \
    ansible \
    sshpass \
    sudo \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace