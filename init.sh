#!/bin/bash

set -e

NETWORK_NAME="global-network"

if ! docker network inspect "${NETWORK_NAME}" >/dev/null 2>&1; then
	echo "Creating Docker network: ${NETWORK_NAME}"
	docker network create --driver bridge --attachable "${NETWORK_NAME}"
else
	echo "Docker network already exists: ${NETWORK_NAME}"
fi
