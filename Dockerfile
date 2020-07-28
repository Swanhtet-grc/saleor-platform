FROM ubuntu:18.04

COPY . /app
RUN apt-get update \
 && apt-get install -y sudo

RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker


RUN ls
RUN cd ~
RUN ls
RUN sudo docker-compose up
