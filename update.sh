#!/bin/sh

sudo apt install skopeo

docker_version=$(skopeo inspect docker://docker.io/nextcloud:latest | grep -o 'NEXTCLOUD_VERSION=[0-9]*.[0-9]*.[0-9]*' | cut -c 19-30)

sed -i "/nextcloud/s/.*/FROM nextcloud:$docker_version/" Dockerfile

echo $docker_version > docker_ver
echo $docker_version > current_ver