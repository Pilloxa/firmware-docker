FROM ubuntu:latest

RUN apt-get update \
&& apt-get -y install gcc-arm-none-eabi make

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:mfikes/planck && \
    apt-get update && \
    apt-get install -y planck

RUN chmod +x /usr/bin/planck
