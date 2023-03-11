#!/bin/bash

# Recreate from common environment variables first
rm -f .env
cat .env.common >> .env

# Check if host.docker.internal is in /etc/hosts
if grep -q host.docker.internal /etc/hosts; then
    echo "host.docker.internal IS available from /etc/hosts - using it.."
    cat .env.dockerhost >> .env
else
    echo "host.docker.internal is NOT available from /etc/hosts and can thus not be referenced - using localhost instead.."
    cat .env.localhost >> .env
fi