#!/usr/bin/env bash

check_mission() {
    local mission_name="$1"

    echo -e "\n🔍 Checking your work..."
    sleep 1

    if [[ "$mission_name" == "01-fundamentals" ]]; then
        # /tmp-க்கு பதிலாக $HOME (~/) பயன்படுத்துகிறோம்
        if [[ -d "$HOME/lab_test" && -f "$HOME/lab_test/hello.txt" ]]; then
            echo -e " Mission Accomplished! சூப்பர், டாஸ்க்கை பக்காவா முடிச்சிட்டீங்க!\n"
        else
            echo -e " Mission Failed! ~/lab_test என்ற போல்டரோ அல்லது hello.txt ஃபைலோ இல்லை. மறுபடியும் ட்ரை பண்ணுங்க!\n"
        fi
    fi
}
