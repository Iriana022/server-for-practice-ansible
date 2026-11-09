FROM ubuntu:latest
RUN apt update -y && \
    apt install -y openssh-server \
    python3 \
    sudo \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /var/run/sshd
RUN useradd -rm -d /home/ansible -s /bin/bash -g root -G sudo ansible
RUN echo 'ansible:ansible' | chpasswd
RUN echo 'ansible ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]