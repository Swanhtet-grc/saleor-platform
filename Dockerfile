FROM ubuntu:18.04

COPY . /app
RUN sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN sudo chmod +x /usr/local/bin/docker-compose
RUN docker-compose up
