FROM ubuntu:latest
RUN apt update && \
    apt install -y curl python3-pip python3-dev build-essential locales python3-virtualenv apt-transport-https && \
    apt install -y openjdk-8-jdk libffi-dev libssl-dev libxml2-dev libxslt1-dev zlib1g-dev libssl-dev && \
    pip3 install setuptools --upgrade && \
    pip3 install enum34 && \
    pip3 install 'fabric<2.0' && \
    curl https://download.docker.com/linux/debian/gpg | apt-key add - && \
    echo 'deb [arch=amd64] https://download.docker.com/linux/debian jessie stable' > /etc/apt/sources.list.d/docker.list && \
    apt update ; \
    apt install -y docker-ce && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/**
RUN locale-gen en_US.UTF-8
ENV PYTHON=/usr/bin/python3
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

