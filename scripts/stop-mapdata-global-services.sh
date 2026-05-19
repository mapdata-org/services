#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

echo "=== Parando Mapdata Global Services ==="
echo "Diretório do projeto: $PROJECT_DIR"

cd "$PROJECT_DIR"

echo "Parando containers com docker-compose..."
docker-compose down

echo "=== Serviços parados com sucesso! ==="
