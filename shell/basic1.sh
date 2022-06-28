#!/bin/sh
# practice for shell script

# user input. 
read Name
# output
echo "Hello, $Name!"

# variable name: alphabet, number, _
# with no space
var1="string variable"
var2="changed variable"

echo "Hello, $var1"
echo ${var2}

# block overwriting 
readonly var2
# print / test.sh: 20: var2: is read only
# var2="cannot be changed"

# name of script
echo "$0"

