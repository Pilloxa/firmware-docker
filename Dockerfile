FROM ubuntu:latest

RUN apt-get update \
&& apt-get -y install gcc-arm-none-eabi make

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:mfikes/planck && \
    apt-get update && \
    apt-get install -y planck=2.3.0-1ppa1~xenial1

RUN chmod +x /usr/bin/planck
