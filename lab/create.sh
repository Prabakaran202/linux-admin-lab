#!/usr/bin/env bash

set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

LAB_ROOT="$PROJECT_ROOT/data/lab"
ENV_ROOT="$LAB_ROOT/environments"

create_lab() {
    mkdir -p "$ENV_ROOT"

    local lab_name="${1:-default}"
    local lab_path="$ENV_ROOT/$lab_name"

    if [ -d "$lab_path" ]; then
        echo "Lab already exists: $lab_name"
        return 0
    fi

    mkdir -p \
        "$lab_path/home" \
        "$lab_path/etc" \
        "$lab_path/var/log" \
        "$lab_path/tmp"

    cat > "$lab_path/lab.conf" <<EOF
LAB_NAME=$lab_name
LAB_ROOT=$lab_path
STATUS=active
EOF

    echo "Linux Admin Lab environment created."
    echo "Lab: $lab_name"
    echo "Path: $lab_path"
}
