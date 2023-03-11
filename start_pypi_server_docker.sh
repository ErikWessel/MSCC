#!/bin/bash

# Create PyPI server as docker container and connect to network
port=8060
package_dir=${PWD}/lib
echo port: $port

echo Starting PyPI-server on port $port from directory \"${package_dir}\"
docker run -p $port:8080 --rm -v "${package_dir}:/data/packages" --name aimlsse-pypiserver pypiserver/pypiserver:latest
