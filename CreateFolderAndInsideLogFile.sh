#!/bin/bash

# Define places and files
dir_path="$(pwd)/TestFolder"  # In the current dir we create a folder
dir_file="$dir_path/Result.log" 

# Create a folder if it does not yet exist
if [ ! -d "$dir_path" ]; then
    mkdir "$dir_path"

    # Check if the directory was created successfully
    if [ $? -ne 0 ]; then
        echo "Unable to create the folder, please check your permissions or path." | >&2
        exit 1
    else
        echo "Folder created successfully." | tee -a "$dir_file"
    fi
else
    echo "Folder already exists." | tee -a "$dir_file"
fi

# Check if the log file was created
if [ ! -f "$dir_file" ]; then
    echo "Unable to create the log file, please check your permissions or path." >&2
    exit 1
fi


# Status of the last command
echo "The status of the last command is: $?" | tee -a "$dir_file"

