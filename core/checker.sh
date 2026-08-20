<<<<<<< HEAD
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
=======
#!/usr/bin/env bash

check_mission() {
    local mission_name="$1"

    echo -e "\n🔍 Checking your work..."
    sleep 1

    # மிஷன் 01 செக்கிங்
    if [[ "$mission_name" == "01-fundamentals" ]]; then
        if [[ -d "$HOME/lab_test" && -f "$HOME/lab_test/hello.txt" ]]; then
            echo -e "✅ Mission Accomplished! சூப்பர், டாஸ்க்கை பக்காவா முடிச்சிட்டீங்க!\n"
        else
            echo -e "❌ Mission Failed! ~/lab_test என்ற போல்டரோ அல்லது hello.txt ஃபைலோ இல்லை. மறுபடியும் ட்ரை பண்ணுங்க!\n"
        fi
        
    # மிஷன் 02 செக்கிங் (🌟 புதுசு 🌟)
    elif [[ "$mission_name" == "02-filesystem" ]]; then
        if [[ -d "$HOME/backup" && -f "$HOME/backup/hello_backup.txt" ]]; then
            echo -e "✅ Mission Accomplished! அருமை, Filesystem கமாண்ட்களை சரியாக பயன்படுத்திவிட்டீர்கள்!\n"
        else
            echo -e "❌ Mission Failed! ~/backup போல்டர் அல்லது hello_backup.txt ஃபைல் சரியாக காப்பி செய்யப்படவில்லை. மறுபடியும் ட்ரை பண்ணுங்க!\n"
        fi
    fi
}
>>>>>>> 2697f096c1d39c6b08ad7a585476246863974683
