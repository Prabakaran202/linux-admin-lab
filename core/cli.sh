#!/usr/bin/env bash

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

source "$PROJECT_ROOT/core/menu.sh"
source "$PROJECT_ROOT/core/progress.sh"
source "$PROJECT_ROOT/core/reset.sh"
source "$PROJECT_ROOT/core/hint.sh"
cli_start() {
    echo "================================"
    echo "       Linux Admin Lab"
    echo "================================"
    echo
    echo "Welcome to Linux Administrator Practice CLI."
    show_menu
}

cli_status() {
    show_progress
}

cli_reset() {
    reset_progress
}

cli_help() {
    echo "Linux Admin Lab"
    echo
    echo "Commands:"
    echo "  start   Start the learning environment"
    echo "  status  Show learning progress"
    echo "  reset   Reset learning progress"
    echo "  help    Show this help"
}
cli_hint() {
    show_hint "${1:-1}"
}

