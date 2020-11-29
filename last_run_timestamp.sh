#! /usr/bin/env bash

set -eu

declare -r APPDATA_DIR=$(readlink -e "$HOME/.local/share/backup-scripts")
if [[ -z $APPDATA_DIR ]]; then
    echo "[WARNING] App data directory $HOME/.local/share/backup-scripts does not exist, creating it" >&2
    mkdir --parents "$HOME/.local/share/backup-scripts"
fi

declare -r LAST_RUN_TIMESTAMP=$(readlink -f "$APPDATA_DIR/last_run_ts")
if ! [[ -e $LAST_RUN_TIMESTAMP ]]; then
    echo "[INFO] Last run timestamp file $LAST_RUN_TIMESTAMP does not exist, creating it" >&2
    touch "$LAST_RUN_TIMESTAMP"
fi

echo "$LAST_RUN_TIMESTAMP"