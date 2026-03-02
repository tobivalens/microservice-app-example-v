#!/bin/bash

sudo apt update -y
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker

sudo docker run -d \
  -p 6379:6379 \
  --name redis \
  redis:7