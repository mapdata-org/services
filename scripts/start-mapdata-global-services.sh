#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

echo "=== Iniciando Mapdata Global Services ==="
echo "Diretório do projeto: $PROJECT_DIR"

# Criar rede se não existir
NETWORK_NAME="global-network"
if ! docker network inspect "${NETWORK_NAME}" >/dev/null 2>&1; then
	echo "Criando rede Docker: ${NETWORK_NAME}"
	docker network create --driver bridge --attachable "${NETWORK_NAME}"
else
	echo "Rede Docker já existe: ${NETWORK_NAME}"
fi

# Navegar para o diretório do projeto e iniciar os serviços
cd "$PROJECT_DIR"

echo "Iniciando containers com docker-compose..."
docker-compose up -d

echo "Verificando status dos containers..."
docker-compose ps

echo "=== Serviços iniciados com sucesso! ==="
