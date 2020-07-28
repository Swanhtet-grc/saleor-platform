FROM ubuntu:18.04

COPY . /app


RUN pwd
RUN sudo docker-compose up
