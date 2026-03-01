#!/bin/bash

sudo apt update -y
sudo apt install -y docker.io git

sudo systemctl start docker
sudo systemctl enable docker

git clone https://github.com/tobivalens/microservice-app-example-v.git

cd microservice-app-example-v/frontend

sudo docker build -t frontend-app .
sudo docker run -d -p 3000:3000 frontend-app