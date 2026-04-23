#!/usr/bin/env bash
set -euo pipefail

if [[ ! -f .env ]]; then
  cp .env.example .env
  echo ".env created from template. Review credentials before deployment."
fi

docker compose up -d
sleep 5
docker compose ps
