FROM quay.io/centos/centos:stream8

RUN curl -fsSL https://rpm.nodesource.com/setup_16.x | bash - && \
    yum install -y nodejs-16.6.2 && \
    mkdir /workspace

COPY *.json /workspace/

# TODO copy across the .build/ directory and run npm install (for now we are mounting and using the host .build/ files)

EXPOSE 9001
WORKDIR /workspace/.build

