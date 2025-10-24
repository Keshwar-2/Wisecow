#!/bin/bash

# Use APP_URL environment variable if set, else use default
APP_URL="${APP_URL:-http://localhost:30499/}"

# Send a HEAD request and get HTTP status code
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" "$APP_URL")

# Check if status code is 200
if [ "$STATUS_CODE" -eq 200 ]; then
  echo "Wisecow Application is UP! Status code: $STATUS_CODE"
  exit 0
else
  echo "Wisecow Application is DOWN or Unreachable! Status code: $STATUS_CODE"
  exit 1
fi

