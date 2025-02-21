#!/bin/bash

HOSTS_ENTRY=(
  "127.0.0.1 rabbitmq.local"
  "127.0.0.1 postgres.local"
  "127.0.0.1 minio.local"
  "127.0.0.1 panel.minio.local"
)

for ENTRY in "${HOSTS_ENTRY[@]}"; do
  if ! grep -q "$ENTRY" /etc/hosts; then
    echo "$ENTRY" | sudo tee -a /etc/hosts > /dev/null
  fi
done
