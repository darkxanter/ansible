FROM ubuntu:20.04

RUN apt-get update && apt-get install -y ansible rsync && rm -rf /var/lib/apt/lists/*
