#!/bin/sh

# Ensure the variables are provided
if [ -z "$PROXY_USER" ] || [ -z "$PROXY_PASSWORD" ]; then
    echo "ERROR: PROXY_USER and PROXY_PASSWORD environment variables must be set."
    exit 1
fi

# Generate the encrypted htpasswd file at runtime
htpasswd -b -c /etc/squid/passwords "$PROXY_USER" "$PROXY_PASSWORD"

# Hand over control to the original squid process
exec squid -NYC
