FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y locales vim tmux less

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata

RUN locale-gen ja_JP.UTF-8

ENV LANG=ja_JP.UTF-8

ENV TZ=Asia/Tokyo

WORKDIR /ubuntu

RUN apt-get -y install apache2