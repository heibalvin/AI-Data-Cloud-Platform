#!/usr/bin/env bash
set -euo pipefail

echo "=== Testing postgres service ==="

PG_HOST=$(docker ps --format "{{.Names}}" | grep -i postgres | head -1)

docker exec "$PG_HOST" psql -U "${POSTGRES_USER:-postgres}" -d default -c "\l"