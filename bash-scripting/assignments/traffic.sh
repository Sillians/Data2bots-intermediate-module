#!/bin/bash
# Prompt the user for traffic light status
read -p "Enter the status of the traffic light (green/yellow/red): " light_status

# Check the status and print the corresponding message
case $light_status in
    green)
        echo "GO"
        ;;
    yellow|red)
        echo "READY"
        ;;
    *)
        echo "Invalid input. Please enter green, yellow, or red."
        ;;
esac
