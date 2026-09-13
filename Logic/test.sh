#!/usr/bin/env bash
set -euo pipefail

echo "=== Testing postgrest service ==="

if ! docker ps --format "{{.Names}}" | grep -qi "postgrest"; then
  echo "FAIL: postgrest container is not running"
  exit 1
fi
echo "PASS: postgrest container is running"

if ! curl -sf http://localhost:3000/ > /dev/null 2>&1; then
  echo "FAIL: postgrest is not responding on port 3000"
  exit 1
fi
echo "PASS: postgrest is responding on port 3000"

echo "=== All postgrest tests passed ==="