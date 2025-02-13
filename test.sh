﻿#!/bin/bash

# Function to display the main menu
main_menu() {
    echo "Select your options:"
    echo "1. RDS"
    echo "2. OBS"
    echo "3. SMS"
    echo "4. AleUto"
    echo "5. Exit"
    read -p "Choose an option (1-4): " choice
    case $choice in
        1) rds_menu ;;
        2) obs_menu ;;
        3) sms_menu ;;
        4) exit 0 ;;
        5) exit 0 ;;
        *) echo "Invalid option, please choose again."; main_menu ;;
    esac
}

# Function for RDS menu
rds_menu() {
    echo "You selected RDS"
    echo "1. rds is an rds."
    echo "2. You must know how to use."
    echo "3. There is a command."
    echo "4. Back to main menu"
    read -p "Choose an option (1-4): " choice
    case $choice in
        1) echo "RDS is used for remote database service." ;;
        2) echo "Make sure you have the correct permissions to access the RDS." ;;
        3) echo "Use the command: aws rds describe-db-instances" ;;
        4) main_menu ;;
        *) echo "Invalid option, please choose again."; rds_menu ;;
    esac
}

# Function for OBS menu
obs_menu() {
    echo "You selected OBS"
    echo "1. OBS is used for broadcasting."
    echo "2. Learn how to configure it."
    echo "3. You can record and stream live."
    echo "4. Back to main menu"
    read -p "Choose an option (1-4): " choice
    case $choice in
        1) echo "OBS (Open Broadcaster Software) is popular for live streaming." ;;
        2) echo "Check out the OBS website for configuration guides." ;;
        3) echo "To start streaming, click 'Start Streaming' in OBS." ;;
        4) main_menu ;;
        *) echo "Invalid option, please choose again."; obs_menu ;;
    esac
}

# Function for SMS menu
sms_menu() {
    echo "You selected SMS"
    echo "1. SMS is a text messaging service."
    echo "2. It can be automated."
    echo "3. Use APIs to send SMS."
    echo "4. Back to main menu"
    read -p "Choose an option (1-4): " choice
    case $choice in
        1) echo "SMS (Short Message Service) is used for sending text messages." ;;
        2) echo "You can use tools like Twilio to automate SMS sending." ;;
        3) echo "Use the API: https://www.twilio.com/docs/usage/api" ;;
        4) main_menu ;;
        *) echo "Invalid option, please choose again."; sms_menu ;;
    esac
}

# Start the script with the main menu
main_menu
