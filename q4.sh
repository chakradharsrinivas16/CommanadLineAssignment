#!/bin/bash
# Creating folder using mkdir
mkdir ~/Desktop/Assignment
echo "Created Assignment Folder"
# Creating file using touch
touch ~/Desktop/Assignment/File1.txt
echo "Created File1.txt in Assignment Folder"
# Copying data in q2 to file1 using cat
cat ~/Desktop/Table.sh  >> ~/Desktop/Assignment/File1.txt
echo "Data in q2.sh copied to File1.txt using cat command"
# Appending given text to file1
echo "Welcome to Sigmoid" >> ~/Desktop/Assignment/File1.txt

echo "Folders in the Desktop"
# Printing files and folders in Desktop
ls -la ~/Desktop/

exit 0
