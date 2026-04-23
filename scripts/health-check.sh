#!/usr/bin/env bash
set -euo pipefail

echo "=== Docker Containers ==="
docker compose ps

echo
echo "=== HTTP Check ==="
curl -I http://localhost || true

echo
echo "=== WordPress Container Logs ==="
docker logs --tail 20 wordpress-app || true

echo
echo "=== Nginx Container Logs ==="
docker logs --tail 20 wordpress-nginx || true

echo
echo "=== Database Container Logs ==="
docker logs --tail 20 wordpress-db || true
