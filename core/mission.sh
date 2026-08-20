#!/usr/bin/env bash

# புது function: மிஷனை லோட் செய்து காட்ட
start_mission() {
    local mission_folder="$1"
    local mission_path="$PROJECT_ROOT/missions/$mission_folder"

    echo -e "\n========================================"
    echo " 🚀 Starting Mission: $mission_folder"
    echo "========================================"

    # மிஷன் போல்டர் இருக்கிறதா என்று செக் செய்ய
    if [[ -d "$mission_path" ]]; then
        # அந்த போல்டரில் உள்ள டாஸ்க் ஃபைலை (உதாரணமாக instructions.txt) ரீட் செய்ய
        if [[ -f "$mission_path/instructions.txt" ]]; then
            echo -e "\n📋 மிஷன் விவரங்கள்:\n"
            cat "$mission_path/instructions.txt"
            echo -e "\n----------------------------------------"
            
            # இங்கே தான் லேப் என்விரான்மென்ட் தொடங்க வேண்டும்! 
            echo "லேப்-க்குள் நுழைகிறீர்கள்... (Type 'exit' to check your task)"
            bash 
            
            # 🌟 புது அப்டேட்: யூசர் 'exit' கொடுத்ததும் செக்கிங் லாஜிக் ரன் ஆகும் 🌟
            if [[ -f "$PROJECT_ROOT/core/checker.sh" ]]; then
                source "$PROJECT_ROOT/core/checker.sh"
                check_mission "$mission_folder"
            else
                echo -e "\n⚠️ Warning: checker.sh not found in core/ directory!"
            fi
            
        else
            echo "Error: instructions.txt not found in $mission_folder!"
        fi
    else
        echo "Error: Mission directory $mission_folder does not exist!"
    fi
}

# மெனுவிலிருந்து வரும் இன்புட்டை ஹேண்டில் செய்ய
run_mission() {
    local choice="$1"

    case "$choice" in
        1) start_mission "01-fundamentals" ;;
        2) start_mission "02-filesystem" ;;
        3) start_mission "03-users-groups" ;;
        4) start_mission "04-permissions" ;;
        5) start_mission "05-processes" ;;
        6) start_mission "06-services" ;;
        7) start_mission "07-packages" ;;
        8) start_mission "08-networking" ;;
        9) start_mission "09-storage" ;;
        10) start_mission "10-logs" ;;
        11) start_mission "11-ssh" ;;
        12) start_mission "12-security" ;;
        13) start_mission "13-bash" ;;
        14) start_mission "14-troubleshooting" ;;
        15) start_mission "15-final-admin" ;;
        *) echo "Invalid selection. Please try again." ;;
    esac
}
