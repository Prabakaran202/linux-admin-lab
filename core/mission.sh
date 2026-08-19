#!/usr/bin/env bash

run_mission() {
    local choice="$1"

    case "$choice" in
        1)  echo "Linux Fundamentals selected." ;;
        2)  echo "Filesystem selected." ;;
        3)  echo "Users & Groups selected." ;;
        4)  echo "Permissions selected." ;;
        5)  echo "Processes selected." ;;
        6)  echo "Services selected." ;;
        7)  echo "Packages selected." ;;
        8)  echo "Networking selected." ;;
        9)  echo "Storage selected." ;;
        10) echo "Logs selected." ;;
        11) echo "SSH selected." ;;
        12) echo "Security selected." ;;
        13) echo "Bash selected." ;;
        14) echo "Troubleshooting selected." ;;
        15) echo "Final Administrator Challenge selected." ;;
        *)  echo "Invalid selection." ;;
    esac
}
