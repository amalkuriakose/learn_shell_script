#!/usr/bin/bash

# echo command
echo "Hello World"

# Variables
# Uppercase by conversion
# Letters, Numbers, Underscores
NAME="Amal"
echo "My name is $NAME"
echo "My name is ${NAME}"

# User input
read -p "Enter a number :" NUM
echo "You have entered number $NUM"

# if, else-if, else
if [ "$NUM" -eq "1" ]
then
    echo "Num is 1"
elif [ "$NUM" -eq "5" ]
then
    echo "Num is 5"
else
    echo "Num is somethinng else"
fi

# File conditions
FILE="test.txt"
if [ -f $FILE ]
then
    echo "Valid"
else
    echo "Invalid"
fi

# Case statement
read -p "Are you 21 or over? Y/N " ANSWER
case "$ANSWER" in 
  [yY] | [yY][eE][sS])
    echo "You can have a beer :)"
    ;;
  [nN] | [nN][oO])
    echo "Sorry, no drinking"
    ;;
  *)
    echo "Please enter y/yes or n/no"
    ;;
esac

# # SIMPLE FOR LOOP
NAMES="Raj Tom Joe Mark"
for NAME in $NAMES
  do
    echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES  
  do
    echo "Renaming $FILE to new-$FILE"
    mv $FILE $NEW-$FILE
done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./test.txt"

# FUNCTION
function sayHello () {
  echo "Hello World"
}
sayHello

# FUNCTION WITH PARAMS
function greet() {
  echo "Hello, I am $1 and I am $2"
}

greet "Amal" "56"

# CREATE FOLDER AND WRITE TO A FILE
mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"