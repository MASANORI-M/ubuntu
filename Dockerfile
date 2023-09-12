FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y locales vim tmux less

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata

RUN locale-gen ja_JP.UTF-8

ENV LANG=ja_JP.UTF-8

ENV TZ=Asia/Tokyo

WORKDIR /ubuntu

RUN apt-get -y install apache2

RUN apt-get -y install php7.4

# RUN apt-get -y install php7.4-common php7.4-mbstring php7.4-xmlrpc php7.4-gd php7.4-xml php7.4-mysql php7.4-cli php7.4-zip php7.4-curl php7.4-imagick
