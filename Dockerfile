FROM ubuntu:18.04

WORKDIR /app
COPY . /app


RUN cd /app
RUN ls
RUN sudo docker-compose up
