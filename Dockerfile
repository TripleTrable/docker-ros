FROM osrf/ros:foxy-desktop

MAINTAINER Lars Niesen

RUN apt update
RUN apt install -y iproute2
RUN apt clean

RUN useradd -ms /bin/bash foxy

RUN usermod -a -G sudo foxy

RUN echo "foxy:pass" | chpasswd

USER foxy
WORKDIR /home/foxy
