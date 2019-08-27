FROM circleci/openjdk:8
USER root
RUN apt update && \
    apt install -y python-pip && \
    pip install 'fabric<2.0' && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/**
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

USER circleci