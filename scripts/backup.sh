#!/usr/bin/env bash
set -euo pipefail

BACKUP_DIR="/opt/wordpress-stack/backups"
TIMESTAMP="$(date +%F-%H%M%S)"
mkdir -p "$BACKUP_DIR"

# Database dump
container_db="wordpress-db"
docker exec "$container_db" /usr/bin/mariadb-dump \
  -u root -p"${MYSQL_ROOT_PASSWORD:-RootPassword123!}" \
  wordpress > "$BACKUP_DIR/db-$TIMESTAMP.sql"

# WordPress content backup
container_wp="wordpress-app"
docker run --rm \
  --volumes-from "$container_wp" \
  -v "$BACKUP_DIR:/backup" \
  alpine tar czf "/backup/wp-data-$TIMESTAMP.tar.gz" /var/www/html

echo "Backup completed: $BACKUP_DIR"
