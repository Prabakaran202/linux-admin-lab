#!/usr/bin/env bash

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

source "$PROJECT_ROOT/core/cli.sh"

main() {
    case "${1:-}" in
        start)
            cli_start
            ;;

        status)
            cli_status
            ;;

        reset)
            cli_reset
            ;;

        hint)
            cli_hint "${2:-1}"
            ;;

        help|"")
            cli_help
            ;;

        *)
            echo "Unknown command: $1"
            echo "Run './linux-admin-lab.sh help' for usage."
            return 1
            ;;
    esac
}
