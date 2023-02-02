#!/bin/bash

# If no arguments are passed the raise an error.
if [ $# -eq 0 ]; then
  echo "Error, Please enter a argument to generate table"
  exit 1
fi

n=$1 # Intiliaing the first argument as n
c=1 # Counter Variable
echo "Given number - $n"
echo "Table of $n:"
# Using while loop to generate the table
while [ $c -le 10 ] # while counter is less than 10
do
  result=$(( $n * $c )) # Calculating the product
  echo "$n x $c = $result" # Printing the product
  c=$(( $c + 1 )) # Incrementing the counter
done

exit 0
