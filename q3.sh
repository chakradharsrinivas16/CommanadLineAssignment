#!/bin/bash

# Function to check if it is prime or not
function is_prime() {
  num=$1 # Intilizing num by the first argument
  # If num is less than 2 it is not prime
  if [ $num -lt 2 ]; then
    echo "$num is not a prime number."
    return
  fi
  # Loop from 2 to num/2 to verify its divisors
  for (( i=2; i<$((num/2)); i++ ))
  do
    if [ $(($num%$i)) -eq 0 ]; then # if found it is not prime numer
      echo "$num is not a prime number."
      return
    fi
  done
  # else it is prime
  echo "$num is a prime number."
}
# Reading input from user and storing in num
read -p "Enter a number: " num
# Passing it to function is_prime
is_prime $num

exit 0
