FROM ubuntu:18.04

COPY . /app
RUN apt-get update && \
    apt-get -y install sudo
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER docker
CMD /bin/bash
RUN echo myanmar2020 | sudo -S curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN echo myanmar2020 | sudo -S chmod +x /usr/local/bin/docker-compose
RUN docker-compose up
