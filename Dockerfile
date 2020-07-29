FROM ubuntu:18.04

WORKDIR /app
COPY . /app

RUN apt-get update \
 && apt-get install -y sudo

RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers


USER docker
RUN sudo apt-get update
RUN sudo apt-get install docker-ce docker-ce-cli containerd.io
RUN sudo usermod -a -G docker docker
RUN docker container ls

RUN sudo apt-get update 

RUN sudo apt install curl -y
RUN sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN sudo chmod +x /usr/local/bin/docker-compose 

RUN cd /app

RUN sudo docker-compose up
