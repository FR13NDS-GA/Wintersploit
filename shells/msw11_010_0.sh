#!/bin/bash

# Shell Console
echo "Using exploit/ms/.../msw11_010_codered"

# Start shell loop
while true; do
    # Prompt
    read -p $'wsf1 exploit(\033[31mms/.../msw11_010_codered\033[0m) > ' cmd

    # Check for vulnerability search
    if [[ "$cmd" == "show options" ]]; then
        echo ""
        echo "Module options (exploit/ms/.../msw11_010_codered):"
    fi

    # Exit condition
    if [[ "$cmd" == "exit" ]]; then
        echo "Exiting ..."
        clear
        break
	chmod +x ~/Desktop/wsfconsole/shells/mainshell.sh && bash ~/Desktop/wsfconsole/shells/mainshell.sh
    fi

    # Run general command
    eval "$cmd"

done
