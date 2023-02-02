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

```
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
```
### Question - 3
Write a Function in bash script to check if the number is prime or not? It should support the following requirement.
          - The script should accept the input from the User.
#### Apporach - 

We declared a function `is_prime` to check if it prime or not, if the number is less than 2 we return that it is not a prime and if not we run a loop from `2` to `number/2`, to check if any of the above number divides the given number, if we found any number it is not a prime as it has a divisor other than 1 and itself, if no number divides then we can say that it is a prime number.

In the main code we take input from user and store it in a variable and pass it the function by calling it and passing the argument as command line arguments.

### Question - 4
Create a bash script that supports the following requirement.
  - Create a folder ‘Assignment’.
  - Create a file ‘File1.txt’ inside ‘Assignment’ Folder.
  - Copy all the content of Table.sh(2nd script) in ‘File1.txt’ without using ‘cp’ and ‘mv’ command.
  - Append the text Welcome to Sigmoid’ to the ‘File1.txt’ file.
  - List all the directories and files present inside Desktop Folder.#### Apporach - 

#### Approach - 
We have used the following commands to meet the desired requirements and the function of command is as follows.
| Command  | Function |
| ------------- | ------------- |
| mkdir ~/Desktop/Assignment | Creating folder using mkdir |
| touch ~/Desktop/Assignment/File1.txt | Creating file using touch |
| cat ~/Desktop/Table.sh  >> ~/Desktop/Assignment/File1.txt | Copying data in q2 to file1 using cat |
| echo "Welcome to Sigmoid" >> ~/Desktop/Assignment/File1.txt| Appending given text to file1 |
| ls -la ~/Desktop/ | Printing files and folders in Desktop |


### Question - 5
Create a bash script that supports the following requirement.
  - Create a folder ‘Assignment’.
  - Create a file ‘File1.txt’ inside ‘Assignment’ Folder.
  - Copy all the content of Table.sh(2nd script) in ‘File1.txt’ without using ‘cp’ and ‘mv’ command.
  - Append the text Welcome to Sigmoid’ to the ‘File1.txt’ file.
  - List all the directories and files present inside Desktop Folder.#### Apporach - 

#### Approach - 

We have declared the array internally in the code, we have used the following commands to fetch the required result

| Command  | Function |
| ------------- | ------------- |
| echo ${#arr[@]} | Length of the array|

We have made two methods to find the max and min elements in the given array.
#### Method - 1
we have used the sort function to find the max and min element in the given array, to find the max we sorted the array in the reverse order and fetched the first element using head1 command and for min element we sorted and fetched the first element.
| Command  | Function |
| ------------- | ------------- |
| IFS=$'\n' | Internal field separator |
| echo "${arr[*]}" \| sort -nr \| head -n1 | Sorting in reverse and fetch the first element |
| echo "${arr[*]}" \| sort -n \| head -n1 | Sorting  and fetch the first element |

#### Method - 2

We use a for loop to find the max and min element, Assuming first element as max, we travese every element in the loop if any element is more than the assumed one change max to it or else continue traversing and the same for min elemnet too.

```
# Max element
for n in "${arr[@]}" ; do
    if [ $n -ge $max ]; then 
		max=$n
	fi
done

# Min element
for n in "${arr[@]}" ; do
    if [ $n -le $min ]; then 
    	min=$n
	fi
done
```
