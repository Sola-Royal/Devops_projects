#!/bin/bash

# AWS IAM Manager Script for CloudOps Solutions
# This script automates the creation of IAM users, groups, and permissions

# 1. Define IAM User Names Array
IAM_USER_NAMES=("wale" "adejr" "femi" "julius" "hephzibah")

# 2. Function to create IAM users
create_iam_users() {
    echo "Starting IAM user creation process..."
    echo "-------------------------------------"
    
    for username in "${IAM_USER_NAMES[@]}"; do
        echo "Creating IAM user: $username"
        aws iam create-user --user-name "$username"
        if [ $? -eq 0 ]; then
            echo "Success: User $username created."
        else
            echo "Warning: User $username may already exist or there was an error."
        fi
    done
    
    for username in "${IAM_USER_NAMES[@]}"; do
    echo "Attaching AdministratorAccess policy to $username"
    aws iam attach-user-policy \
      --user-name "$username" \
      --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
done

    echo "------------------------------------"
    echo "IAM user creation process completed."
    echo ""
}

# 3. Function to create admin group and attach policy
create_admin_group() {
    echo "Creating admin group and attaching policy..."
    echo "--------------------------------------------"
    
    # Check if group already exists
    aws iam get-group --group-name "admin" >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "Creating group: admin"
        aws iam create-group --group-name "admin"
        if [ $? -eq 0 ]; then
            echo "Success: Group 'admin' created."
        else
            echo "Error: Failed to create group 'admin'."
            return 1
        fi
    else
        echo "Group 'admin' already exists."
    fi
    
    # Attach AdministratorAccess policy
    echo "Attaching AdministratorAccess policy..."
    aws iam attach-group-policy --group-name "admin" --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
    if [ $? -eq 0 ]; then
        echo "Success: AdministratorAccess policy attached"
    else
        echo "Error: Failed to attach AdministratorAccess policy"
    fi
    
    echo "----------------------------------"
    echo ""
}

# Function to add users to admin group (Objective 5, not implemented yet)
add_users_to_admin_group() {
    echo "Adding users to admin group..."
    echo "------------------------------"
    echo "TODO: Implement user group assignment"
    echo "----------------------------------------"
    echo "User group assignment process completed."
    echo ""
}

# Main execution function
main() {
    echo "=================================="
    echo " AWS IAM Management Script"
    echo "=================================="
    echo ""
    
    # Verify AWS CLI is installed and configured
    if ! command -v aws &> /dev/null; then
        echo "Error: AWS CLI is not installed. Please install and configure it first."
        exit 1
    fi
    
    # Execute the functions
    create_iam_users
    create_admin_group
    add_users_to_admin_group
    
    echo "=================================="
    echo " AWS IAM Management Completed"
    echo "=================================="
}

# Execute main function
main

exit 0