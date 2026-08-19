#!/usr/bin/env bash

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
STATE_DIR="$PROJECT_ROOT/data/state"
PROGRESS_FILE="$STATE_DIR/progress"

init_progress() {
    mkdir -p "$STATE_DIR"

    if [ ! -f "$PROGRESS_FILE" ]; then
        printf '%s\n' \
            "LEVEL=1" \
            "PROGRESS=0" \
            "COMPLETED=0" \
            "SCORE=0" > "$PROGRESS_FILE"
    fi
}

load_progress() {
    init_progress
    source "$PROGRESS_FILE"
}

show_progress() {
    load_progress

    echo "Linux Admin Lab Status"
    echo "----------------------"
    echo "Level: $LEVEL"
    echo "Progress: $PROGRESS%"
    echo "Missions completed: $COMPLETED"
    echo "Score: $SCORE"
}
