#!/bin/bash
set -e
echo "Starting Openhab2."
exec setuser abc /app/openhab/start.sh server >> /var/log/openhab.log 2>&1
