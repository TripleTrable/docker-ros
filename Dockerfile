FROM osrf/ros:foxy-desktop

MAINTAINER Lars Niesen

RUN useradd -ms /bin/bash foxy

RUN usermod -a -G sudo foxy

RUN echo "foxy:foxy" | chpasswd

USER foxy
WORKDIR /home/foxy
