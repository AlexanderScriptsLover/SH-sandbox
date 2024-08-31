#!/bin/bash

#Promts with a first value
echo "Input first number: "
read number1

# Validate first input
if ! [[ "$number1" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Input is not a valid integer."
    exit 1
fi

#Promts with a second value
echo "Input second number: "
read number2

# Validate first input
if ! [[ "$number2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Input is not a valid integer."
    exit 1
fi

# Function to compare two numbers and output the result
CompareNumbers() {
    if (( number1 > number2 )); then
        echo "First value is greater"
    elif (( number2 > number1 )); then
        echo "Second value is greater"
    else
        echo "Values are equal"
    fi
}

# Call the comparison function
CompareNumbers
