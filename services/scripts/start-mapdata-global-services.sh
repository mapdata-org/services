#!/bin/bash

COMPOSE_FILE_DIR="/opt/services"

docker stop $(docker ps -a -q)

if [ ! -d "$COMPOSE_FILE_DIR" ]; then
  echo "Diretório $COMPOSE_FILE_DIR não encontrado. Abortando."
  exit 1
fi

cd "$COMPOSE_FILE_DIR" || exit

docker compose up -d

exit 0
