#!/bin/bash

# Check if Java Is Located
CheckIfJavaIsLocated() {

if command -v java &> /dev/null
then 
   echo "Java is installed"
   # Output the version
   java -version 2>&1 | head -n1
else
   echo "No java found, sorry"
fi
}

# Call the functions
CheckIfJavaIsLocated
