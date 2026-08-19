#!/usr/bin/env bash

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

source "$PROJECT_ROOT/core/mission.sh"

show_menu() {
    echo
    echo "================================"
    echo "       Linux Admin Lab"
    echo "================================"
    echo
    echo "  1) Linux Fundamentals"
    echo "  2) Filesystem"
    echo "  3) Users & Groups"
    echo "  4) Permissions"
    echo "  5) Processes"
    echo "  6) Services"
    echo "  7) Packages"
    echo "  8) Networking"
    echo "  9) Storage"
    echo " 10) Logs"
    echo " 11) SSH"
    echo " 12) Security"
    echo " 13) Bash"
    echo " 14) Troubleshooting"
    echo " 15) Final Administrator Challenge"
    echo
    read -rp "Select a level [1-15]: " choice
    run_mission "$choice"
}
