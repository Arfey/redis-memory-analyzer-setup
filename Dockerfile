FROM python:3.7

WORKDIR /data

RUN apt-get update && apt-get install -y redis-server

RUN pip3 install rma rdbtools python-lzf
