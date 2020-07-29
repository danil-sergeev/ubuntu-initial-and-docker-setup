#!/usr/bin/env bash
### in case if you need to setup new machine fast

##### Constants
USERNAME=''
DOCKER_COMPOSE_VERSION=1.26.0

echo Docker installation started...
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt update

apt-cache policy docker-ce

sudo apt install docker-ce
sudo systemctl status docker

echo Granting rights...
sudo usermod -aG docker $USERNAME
echo Completed! Congrats '=)'

echo Docker Compose installation started...

sudo curl -L https://github.com/docker/compose/releases/download/1.26.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo Version below:
docker-compose --version

