#!/bin/bash

# Shell Console
echo "Wintersploit Framework"
echo "Type 'exit' to quit."

# Start shell loop
while true; do
    # Prompt
    read -p "wsf1 > " cmd

    # Check for vulnerability search
    if [[ "$cmd" == "search msw11-010 t-type:exploit" ]]; then
        echo ""
        echo "Matching Modules"
        echo ""
        echo "================"
        echo ""
        echo "  #   Name"
        echo "  _   ____"
        echo "  0   exploit/ms/.../msw11_010_codered"
        while true; do
            read -p "msf1 > " subcmd
            if [[ "$subcmd" == "use 0" ]]; then
                chmod +x ~/Desktop/wsfconsole/shells/msw11_010_0.sh && bash ~/Desktop/wsfconsole/shells/msw11_010_0.sh
            fi
        done
        continue
    fi

    # Exit condition
    if [[ "$cmd" == "exit" ]]; then
        echo "Exiting ..."
        clear
        break
    fi

    # Run general command
    eval "$cmd"

done
