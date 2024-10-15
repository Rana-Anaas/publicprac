#!/bin/bash/env  bats
# Function to check if a number is an Armstrong number
is_armstrong() {
    local number=$1
    local num_digits=${#number}   # Get the number of digits
    local sum=0
    local temp=$number
    # Loop through each digit
    while [ "$temp" -gt 0 ]; do
        digit=$(( temp % 10 ))    # Get the last digit
        sum=$(( sum + digit**num_digits ))  # Add the digit raised to the power of the number of digits
        temp=$(( temp / 10 ))     # Remove the last digit
    done
    # Check if the sum is equal to the original number
    if [ "$sum" -eq "$number" ]; then
        echo "true"
    else
        echo "false"
    fi
}
# Input number (pass as a command line argument)
is_armstrong "$1"
<<<<<<< HEAD
#my 2nd script
=======
#my 2nd script  #newworking here
>>>>>>> feature
