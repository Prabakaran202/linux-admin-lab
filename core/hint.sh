#!/usr/bin/env bash

show_hint() {
    local level="${1:-1}"

    case "$level" in
        1)
            echo "Hint: Start by inspecting the current Linux environment."
            ;;
        2)
            echo "Hint: Use Linux commands to inspect system state."
            ;;
        3)
            echo "Hint: Check the relevant system information before making changes."
            ;;
        *)
            echo "No hint available for this level yet."
            ;;
    esac
}
