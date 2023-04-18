FROM osrf/ros:foxy-desktop

MAINTAINER Lars Niesen

RUN useradd -ms /bin/bash foxy

RUN usermod -a -G sudo foxy

USER foxy
WORKDIR /home/foxy
