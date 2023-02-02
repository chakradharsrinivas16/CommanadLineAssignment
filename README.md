# Commanad Line Assignment
The above are the codes for the given questions in the assignemnt and the approach for each code is explained below.

### Question - 1
Write a bash script to get the current date, time, username, home directory and current working directory.

#### Apporach - 
We have used the following commands to fetch the desired details, each command is as below.
| Command  | Function |
| ------------- | ------------- |
|$(date +"Year: %Y, Month: %m, Day: %d") | Command to fetch the date
|$(date +"%T") | Command to fetch the time
|$(whoami) | Command to fetch the current working user
|$(echo $HOME) | Command to fetch the Home directory
|$(pwd) | Command to fetch the current wokring directory

### Question - 2
Write a bash script (name Table.sh) to print the Table of a number by using a while loop. It should support the following requirements.
  - The script should accept the input from the command line.
  - If you don’t input any data, then display an error message to execute the script correctly.

#### Apporach - 

We are checking no of arguments are passed and If no arguments are passed then we raise an error and exit the program with exit status 1.If not Then we run a loop to print all the arguments passed and then we run another while loop on all the arguments and we intiate a counter internally on another while loop and increment it in every iteration and fetch the product until it counter value is less than 10 and this internal loops repeats for every element in the arguments list and finally the program exits.

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
