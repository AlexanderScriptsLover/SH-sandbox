#!/bin/bash

# Check if Java Is Located
CheckIfJavaIsLocated() {

if command -v java &> /dev/null #command -v java check if command is available, &> /dev/null redirects possible eror message to standard error output
then 
   echo "Java is installed"
   # Output the version
   java -version 2>&1 | head -n1 #2>&1 redirects possible error messages to standard error output
else
   echo "No java found, sorry"
fi
}

# Call the functions
CheckIfJavaIsLocated
