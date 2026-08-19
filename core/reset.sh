#!/usr/bin/env bash

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
STATE_DIR="$PROJECT_ROOT/data/state"
PROGRESS_FILE="$STATE_DIR/progress"

reset_progress() {
    mkdir -p "$STATE_DIR"

    printf '%s\n' \
        "LEVEL=1" \
        "PROGRESS=0" \
        "COMPLETED=0" \
        "SCORE=0" > "$PROGRESS_FILE"

    echo "Learning progress has been reset."
}
