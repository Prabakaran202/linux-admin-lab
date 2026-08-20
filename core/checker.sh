#!/usr/bin/env bash

check_mission() {
    local mission_name="$1"

    echo -e "\n🔍 Checking your work..."
    sleep 1

    # மிஷன் 01-க்கான செக்கிங் லாஜிக்
    if [[ "$mission_name" == "01-fundamentals" ]]; then
        # /tmp/lab_test போல்டர் மற்றும் hello.txt இருக்கிறதா என்று செக் செய்கிறோம்
        if [[ -d "/tmp/lab_test" && -f "/tmp/lab_test/hello.txt" ]]; then
            echo -e "✅ Mission Accomplished! சூப்பர், டாஸ்க்கை பக்காவா முடிச்சிட்டீங்க!\n"
        else
            echo -e "❌ Mission Failed! /tmp/lab_test என்ற போல்டரோ அல்லது hello.txt ஃபைலோ இல்லை. மறுபடியும் ட்ரை பண்ணுங்க!\n"
        fi
    fi
}
