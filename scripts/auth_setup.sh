#!/bin/bash

sudo apt update -y
sudo apt install -y docker.io git

sudo systemctl start docker
sudo systemctl enable docker

git clone https://github.com/tobivalens/microservice-app-example-v.git

cd microservice-app-example-v/auth-api

sudo docker build -t auth-api .
sudo docker run -d -p 8000:8000 auth-api