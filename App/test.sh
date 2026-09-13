#!/usr/bin/env bash
set -euo pipefail

echo "=== Testing traefik service ==="

if ! docker ps --format "{{.Names}}" | grep -qi "traefik"; then
  echo "FAIL: traefik container is not running"
  exit 1
fi
echo "PASS: traefik container is running"

TRAEFIK_HOST=$(docker ps --format "{{.Names}}" | grep -i traefik | head -1)
if ! curl -sf "http://localhost:8081/api/traefik/health" > /dev/null 2>&1; then
  echo "FAIL: traefik dashboard is not responding on port 8081"
  exit 1
fi
echo "PASS: traefik dashboard is responding on port 8081"

echo "=== All traefik tests passed ==="