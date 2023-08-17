FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
 apt-get install -y\
 python3\
 git\
 curl\
 wget\
 zsh &&\
 apt-get clean &&\
 rm -rf /var/lib/apt/lists/*

RUN wget https://bootstrap.pypa.io/get-pip.py &&\
 python3 get-pip.py &&\
 rm get-pip.py

COPY requirements.txt /

RUN pip3 install -r requirements.txt &&\
 rm requirements.txt

