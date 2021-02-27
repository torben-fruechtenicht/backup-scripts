#! /usr/bin/env bash

set -euo pipefail

declare -r TIMESTAMP_NAME=$1
if [[ -z $TIMESTAMP_NAME ]]; then
    echo "[ERROR] No timestamp name given" >&2
    exit 1
fi

declare -r APPDATA_DIR=$(readlink -a "$HOME/.local/share/backup-scripts")
if ! [[ -e $APPDATA_DIR ]]; then
    echo "[WARN] App data directory $APPDATA_DIR does not exist, creating it" >&2
    mkdir --parents "$APPDATA_DIR"
fi

declare -r LAST_RUN_TIMESTAMP=$(readlink -f "$APPDATA_DIR/$TIMESTAMP_NAME-last_run_ts")
if ! [[ -e $LAST_RUN_TIMESTAMP ]]; then
    touch "$LAST_RUN_TIMESTAMP"
fi

echo "$LAST_RUN_TIMESTAMP"