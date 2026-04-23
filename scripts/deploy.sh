#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="/opt/wordpress-stack"

cd "$PROJECT_DIR"
docker compose pull

docker compose up -d --remove-orphans

docker compose ps
