#!/bin/bash

# Define the paths to the folders
USER="/media/aasourav/Local Folder/headless/engaze/engaze-user"
MONOREPO="/media/aasourav/Local Folder/headless/engaze/engaze-ui-monorepo"
SERVER="/media/aasourav/Local Folder/headless/engaze/engaze-server"
ORDERS_APP="/media/aasourav/Local Folder/headless/engaze/engaze-orders-app"
HEADLESS_BLOG="/media/aasourav/Local Folder/headless/headless-blogs"

# Function to open folder in Visual Studio Code
open_folder() {
    if ! command -v code &> /dev/null; then
        echo "Visual Studio Code is not installed. Please install it and try again."
        exit 1
    fi
    if [ ! -d "$1" ]; then
        echo "Folder not found. Please provide a valid folder path."
        exit 1
    fi
    code "$1"
}

# Function to open terminal tab
open_terminal() {
    if ! command -v gnome-terminal &> /dev/null; then
        echo "Terminal is not available. Please install it and try again."
        exit 1
    fi
    if [ -n "$(pgrep gnome-terminal)" ]; then
        gnome-terminal --tab --working-directory="$1"
    else
        gnome-terminal --working-directory="$1"
    fi
}

while true; do
    # Display menu
    echo "Select an option:"
    echo "1. USER"
    echo "2. MONOREPO"
    echo "3. SERVER"
    echo "4. ORDERS APP"
    echo "5. HEADLESS_BLOG"
    echo "6. Exit"

    # Read user input
    read -p "Enter your choice (1/2/3/4/5): " choice

    # Execute based on user input
    case $choice in
        1)
            open_folder "$USER"
            open_terminal "$USER"
            ;;
        2)
            open_folder "$MONOREPO"
            open_terminal "$MONOREPO"
            ;;
        3)
            open_folder "$SERVER"
            open_terminal "$SERVER"
            ;;
        4)
            open_folder "$ORDERS_APP"
            open_terminal "$ORDERS_APP"
            ;;
        5)
            open_folder "$HEADLESS_BLOG"
            open_terminal "$HEADLESS_BLOG"
            ;;
        6)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
done

