FROM ubuntu:18.04

COPY . /app
RUN docker-compose up
