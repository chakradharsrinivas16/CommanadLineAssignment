#!/bin/bash

# If no arguments are passed the raise an error.
if [ $# -eq 0 ]; then
  echo "Error, Please enter a argument to generate table"
  exit 1
fi

echo "No of number passed as arguments - $#"
i=1;
for number in "$@" 
do
    echo "Argument - $i: $number";
    i=$((i + 1));
done
echo ""
i=1;
j=$#;
while [ $i -le $j ] 
do
	n=$1 # Intiliaing the first argument as n
	c=1 # Counter Variable
	echo "Table of $n:"
	# Using while loop to generate the table
	while [ $c -le 10 ] # while counter is less than 10
	do
	  result=$(( $n * $c )) # Calculating the product
	  echo "$n x $c = $result" # Printing the product
	  c=$(( $c + 1 )) # Incrementing the counter
	done
    shift 1;
	i=$((i+1))
	echo ""
done


exit 0
