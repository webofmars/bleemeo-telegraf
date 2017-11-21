#!/bin/bash
set -e

echo "+ running confd with env backend (watch mode)"
/usr/local/bin/confd -onetime -backend env

echo "+ starting telegraf"
if [ "${1:0:1}" = '-' ]; then
    set -- /entrypoint.sh "$@"
fi
exec "$@"