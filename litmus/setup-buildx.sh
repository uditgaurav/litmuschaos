#!/bin/bash

set -e
supported_version=19
docker_version=$(sudo docker version | grep Version | head -n1 | awk '{print $2}'|  cut -d'.' -f1)

if [ "$docker_version" -lt "$supported_version" ]; then

# update docker to 19.03 version as buildx supports with docker 19.03+ version
echo "Updating docker version ..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update && sudo apt-get install -y build-essential
sudo apt-cache policy docker-ce
sudo apt-get install -y docker-ce

fi

# set up docker buildx 
export export DOCKER_CLI_EXPERIMENTAL=enabled
sudo apt-get update && sudo apt-get install -y build-essential
git clone git://github.com/docker/buildx && cd buildx
sudo make install && sudo rm -rf ../buildx
sudo docker buildx version

# create a builder instance
sudo apt-get install qemu-user-static -y
sudo docker run --rm --privileged multiarch/qemu-user-static --reset -p yes i
sudo docker buildx create --name mybuilder
sudo docker buildx use mybuilder
sudo docker buildx inspect --bootstrap
