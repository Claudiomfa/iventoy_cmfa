#!/bin/sh

echo

echo "===================================="

echo "       iVentoy CMFA"

echo "===================================="

echo

. /cmfa/functions.sh

/cmfa/sync-data.sh

exec /entrypoint.sh
