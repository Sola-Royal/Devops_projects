#!/bin/bash

# Function to validate if the input is a valid positive number
validate_number() {
    if ! [[ "$1" =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a positive integer."
        return 1
    fi
    return 0
}

# Function to display the table using List Form For Loop
list_form_table() {
    local number=$1
    local start=$2
    local end=$3

    echo
    echo "Using List Form For Loop:"
    for i in $(seq "$start" "$end"); do
        echo "$number x $i = $((number * i))"
    done
}

# Main Script Workflow for List Form
while true; do
    # Step 1: Prompt for the number
    while true; do
        read -p "Enter a number for the multiplication table: " number
        validate_number "$number" && break
    done

    # Step 2: Ask the user for the type of table
    read -p "Do you want a full table or a partial table? (Enter 'f' for full, 'p' for partial): " table_type

    if [[ "$table_type" == "f" ]]; then
        # Full table (1 to 10)
        start=1
        end=10

    elif [[ "$table_type" == "p" ]]; then
        # Partial table
        while true; do
            read -p "Enter the starting number (between 1 and 10): " start
            read -p "Enter the ending number (between 1 and 10): " end
            if validate_number "$start" && validate_number "$end"; then
                if ((start < 1 || start > 10 || end < 1 || end > 10)); then
                    echo "Invalid range. Both start and end must be between 1 and 10."
                                   elif ((start > end)); then
                    echo "Invalid range. Start should be less than or equal to end."
                else
                    break
                fi
            fi
        done
    else
        echo "Invalid choice. Defaulting to full table (1 to 10)."
        start=1
        end=10
    fi

    # Step 3: Display the table using List Form For Loop
    list_form_table "$number" "$start" "$end"

    # Step 4: Ask the user if they want to repeat the process
    read -p "Would you like to generate another table? (yes/no): " repeat
    if [[ "$repeat" != "yes" ]]; then
        echo "Goodbye!"
        break
    fi
done