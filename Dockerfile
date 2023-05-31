FROM ros:foxy

MAINTAINER Lars Niesen

RUN apt-get update && apt-get install -y iproute2 && apt-get clean

RUN useradd -ms /bin/bash foxy

RUN usermod -a -G sudo foxy

RUN echo "foxy:pass" | chpasswd

USER foxy
WORKDIR /home/foxy
