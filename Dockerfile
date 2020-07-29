FROM ubuntu:18.04

WORKDIR /app
COPY . /app

RUN apt-get update \
 && apt-get install -y sudo

RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers


USER docker
RUN sudo usermod -a -G docker docker

