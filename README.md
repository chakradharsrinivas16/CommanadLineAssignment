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

#### Test run - 
<img width="412" alt="Screenshot 2023-02-03 at 11 40 25 AM" src="https://user-images.githubusercontent.com/123494344/216525824-eafba850-afc7-427a-a370-c7ccfcecd64a.png">


### Question - 2
Write a bash script (name Table.sh) to print the Table of a number by using a while loop. It should support the following requirements.
  - The script should accept the input from the command line.
  - If you don’t input any data, then display an error message to execute the script correctly.

#### Apporach - 

We verify whether any arguments have been passed, and if not, we issue an error and quit the programme with exit status 1. If not, we run a loop to print all the arguments passed, then another while loop on all the arguments, start a counter internally on the second while loop, increment it after each iteration, fetch the result, and repeat this internal loop for each element in the arguments list until the counter value is less than 10, at which point the programme ends.

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
#### Test run - 

###### Scenorio - 1
When no arguments are passed
<img width="428" alt="Screenshot 2023-02-03 at 11 42 19 AM" src="https://user-images.githubusercontent.com/123494344/216525974-889702fc-31fa-4b95-bf5d-5c68063ffc78.png">
###### Scenorio - 2
When 1 arguments is passed
<img width="486" alt="Screenshot 2023-02-03 at 11 44 47 AM" src="https://user-images.githubusercontent.com/123494344/216526314-80d69a8c-ace4-42b8-8ef3-4e3a214497d2.png">

###### Scenorio - 3
When more than 1 arguments are passed
<img width="497" alt="Screenshot 2023-02-03 at 11 45 21 AM" src="https://user-images.githubusercontent.com/123494344/216526389-6bfd981f-ade6-4028-9250-739d69a6337a.png">

### Question - 3
Write a Function in bash script to check if the number is prime or not? It should support the following requirement.
          - The script should accept the input from the User.
#### Apporach - 

We created a function called `is prime` to determine whether a number is prime or not. If the number is greater than 2, we indicate that it is not a prime, and if not, we run a loop from `2` to `number/2` to see if any of the above numbers divide the given number. If we found any numbers, we can conclude that the number is not a prime because it has a divisor other than 1 and itself.

We receive user input in the main code, store it in a variable, and then call the function while sending the argument as command line arguments.

#### Test run - 

<img width="393" alt="Screenshot 2023-02-03 at 11 46 16 AM" src="https://user-images.githubusercontent.com/123494344/216526499-ecb54615-20cf-4ed2-a627-d0143256a244.png">

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

#### Test run - 
<img width="702" alt="Screenshot 2023-02-03 at 11 47 51 AM" src="https://user-images.githubusercontent.com/123494344/216526746-eb6ce515-6131-479f-907c-626e55e5a917.png">
###### Text in File1.txt
<img width="617" alt="Screenshot 2023-02-03 at 11 49 12 AM" src="https://user-images.githubusercontent.com/123494344/216526917-8a7678e4-8fc6-4b66-bf0d-b04b8448a392.png">
###### Text in Table.sh
<img width="745" alt="Screenshot 2023-02-03 at 11 50 18 AM" src="https://user-images.githubusercontent.com/123494344/216527099-bc8b214d-bf93-4b9c-b615-986d0e3df72c.png">

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
In order to discover the maximum and minimum elements in the given array, we utilised the sort function. For the maximum, we sorted the array in reverse order and used the head1 command to collect the first member.
| Command  | Function |
| ------------- | ------------- |
| IFS=$'\n' | Internal field separator |
| echo "${arr[*]}" \| sort -nr \| head -n1 | Sorting in reverse and fetch the first element |
| echo "${arr[*]}" \| sort -n \| head -n1 | Sorting  and fetch the first element |

#### Method - 2

We use a for loop to get the maximum and minimum element. Using the first element as the maximum, we traverse each element in the loop to see whether it is greater than the maximum value we have assumed.

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
#### Test run - 

<img width="416" alt="Screenshot 2023-02-03 at 11 51 19 AM" src="https://user-images.githubusercontent.com/123494344/216527287-df391f50-7b04-4088-9402-e4de1bd1b4ac.png">

