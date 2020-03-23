FROM circleci/ruby:2.6.3-stretch-node-browsers

USER root

RUN sed '/stretch-backports/{s/^/#/}' /etc/apt/sources.list && \
    apt-get update && \
    apt install -y mysql-client && \
    rm -rf /var/lib/apt/lists/*

USER circleci
