#!/bin/sh
set -eu

mkdir -p /logs /cache
if [ ! -d /cache/00 ]; then
  echo "initializing squid cache for the first time"
  squid -N -f /etc/squid/squid.conf -z
fi
exec squid -f /etc/squid/squid.conf -NYCd 1 "$@"
