FROM circleci/openjdk:8
USER root
RUN apt update && \
    apt install -y python-pip locales && \
    pip install 'fabric<2.0' && \
    apt-get autoclean && \
    rm -r /var/lib/apt/lists/**
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

