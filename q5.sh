#!/bin/bash
# Declaring the array
arr=( 2 3 4 1 6 7)
echo "Length of the array - "
echo ${#arr[@]}   # Length of the array
# Method - 1
# Using sort function to find the max and min element.
echo "Max and Min of the array using sort function"
IFS=$'\n'
echo "Maximum in the array - "
echo "${arr[*]}" | sort -nr | head -n1 #Sorting in reverse and fetch the first element
echo "Minimum in the array - "
echo "${arr[*]}" | sort -n | head -n1 # Sorting in reverse and fetch the first element

# Method - 2
# Using for loop to find the max and min element.
echo "Max and Min of the array using for loop"
max=${arr[0]} #Assuming first element as max
# Travesing every element in the loop if any element is more than the assumed one change max to it or else continue traversing.
for n in "${arr[@]}" ; do
    if [ $n -ge $max ]; then 
		max=$n
	fi
done
echo "Maximum in the array - $max"
min=${arr[0]} #Assuming first element as min
# Travesing every element in the loop if any element is less than the assumed one change min to it or else continue traversing.
for n in "${arr[@]}" ; do
    if [ $n -le $min ]; then 
    	min=$n
	fi
done
echo "Minimum in the array - $min"