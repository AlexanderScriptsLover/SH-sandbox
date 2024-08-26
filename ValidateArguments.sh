#!/bin/bash

# Look for arguments (should not accept less than two
checkForArgs() {
if [ "$#" -lt 2 ]; then #we check whether it is less than what we need
echo "I need more, sir!"
elif [ "$#" -gt 2 ]; then #we check whether it is more than what we need
echo "I need less, sir!"
else
echo "Wow, great job!"
fi
}

checkForArgs "$@"
 
