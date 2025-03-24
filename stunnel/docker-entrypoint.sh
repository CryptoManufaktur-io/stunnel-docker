#!/usr/bin/env bash
set -euo pipefail

echo "Writing config..."

cat <<EOL > /stunnel/stunnel.conf
foreground = yes

[tmkms]
PSKsecrets = /stunnel/psk.txt
accept = ${LOCAL_PORT}
ciphers = PSK
connect = ${CONNECT_ADDR}
EOL

cat /stunnel/stunnel.conf

echo "Writing PSK..."

echo "${PSK}" > /stunnel/psk.txt

echo "Running stunnel..."

# Word splitting is desired for the command line parameters
# shellcheck disable=SC2086
exec "$@"
