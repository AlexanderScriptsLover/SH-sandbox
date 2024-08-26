#!/bin/bash

# Look for arguments (should not accept less than two
checkForArgs() {
if [ "$#" -lt 2 ]; then
echo "I need more, sir!"
elif [ "$#" -gt 2 ]; then
echo "I need less, sir!"
else
echo "Wow, great job!"
fi
}

checkForArgs "$@"
 
