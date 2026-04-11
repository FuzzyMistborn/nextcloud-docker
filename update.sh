#!/bin/sh

docker_version=$(skopeo inspect docker://docker.io/nextcloud:latest | grep -o 'NEXTCLOUD_VERSION=[0-9]*\.[0-9]*\.[0-9]*' | cut -d= -f2)

sed -i "/nextcloud/s/.*/FROM nextcloud:$docker_version/" Dockerfile

echo $docker_version > docker_ver