#!/bin/bash

# Define directory variables
loc1='dir1'
loc2='dir2'

# Function to check if directories exist and remove their contents
checkLocationAndRemove() {
    # Check if both directories exist
    if [ -d "$loc1" ] && [ -d "$loc2" ]; then
        echo "Both directories exist."
        # Remove all files in the directories
        rm -rf "$loc1"/*
        rm -rf "$loc2"/*
        echo "Contents of both directories have been deleted."
    else
        echo "Cannot find one or both of the mentioned directories."
        [ ! -d "$loc1" ] && echo "Cannot find $loc1."
        [ ! -d "$loc2" ] && echo "Cannot find $loc2."
    fi
}

# Call the function
checkLocationAndRemove

