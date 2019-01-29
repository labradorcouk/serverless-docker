FROM node:8.10.0

LABEL maintainer="devops@thelabrador.co.uk"

# Install pip for python2
RUN set -ex \
    && curl -s https://bootstrap.pypa.io/get-pip.py | python

# Update apt-get
RUN set -ex \
    && apt-get update \
    && apt-get install -y openssl \
    && apt-get install -y build-essential checkinstall

# Install python3
RUN set -ex \
    && apt-get install -y python3 python3-pip \
    && pip3 install setuptools --upgrade

# Update npm and install serverless
RUN set -ex \
    && npm install -g npm \
    && npm install -g try-thread-sleep \
    && npm install -g spawn-sync \
    && npm install -g serverless
