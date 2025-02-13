#!/bin/bash
# Function to display the main menu

░░░░░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░██░░░░░░██░░░░░░░░░░░░░░
░░░░░░░░░░░░░░██░░░░░░░░░░████░░░░░░░░░░
░░░░░░░░░░░░██░░░░░░░░░░░░░░▒▒██░░░░░░░░
░░░░░░░░████▒▒░░░░░░░░░░░░░░░░██░░░░░░░░
░░██████░░░░░░▒▒░░░░░░░░░░░░▒▒▒▒████░░░░
██▒▒░░░░░░░░░░░░▒▒░░░░░░░░▒▒░░░░░░▒▒██░░
██▒▒▒▒░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░▒▒██
░░██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██
░░░░████████▓▓████████████████████████░░



main_menu() {
    echo "Select your options:"
    echo "1. RDS"
    echo "2. OBS"
    echo "3. SMS"
    echo "4. Exit"
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
    echo "1. RDS is Ralitional Database Service."
    echo "2. RDS can be configured with ECS."
    echo "3. Proceed with command selection."
    echo "4. Back to main menu"
    read -p "Choose an option (1-4): " choice
    case $choice in
        1) echo "None." ;;
        2) echo "None." ;;
        3) echo "None" ;;
        4) main_menu ;;
        *) echo "None."; rds_menu ;;
    esac
}

# Function for OBS menu
obs_menu() {
    echo "You selected OBS"
    echo "1. OBS stands for Object Storage Services."
    echo "2. Learn how to configure it."
    echo "3. Proceed with available command."
    echo "4. Back to main menu"
    read -p "Choose an option (1-4): " choice
    case $choice in
        1) echo "None." ;;
        2) echo "None." ;;
        3) echo "None." ;;
        4) main_menu ;;
        *) echo "Invalid option, please choose again."; obs_menu ;;
    esac
}

# Function for SMS menu
sms_menu() {
    echo "You selected SMS"
    echo "1. SMS is Server Migration Services."
    echo "2. Create migration task."
    echo "3. Use APIs to send SMS and proceed with available command."
    echo "4. Back to main menu"
    read -p "Choose an option (1-4): " choice
    case $choice in
        1) echo "None." ;;
        2) echo "None." ;;
        3) echo "None" ;;
        4) main_menu ;;
        *) echo "None."; sms_menu ;;
    esac
}

# Start the script with the main menu
main_menu
