#!/bin/bash

echo -n "Enter number : "
read n

result=0 
reverse=0
on=$n
 
while [ $n -gt 0 ]
do
    remainder=`expr $n % 10`
    reverse=$(( $reverse * 10 + $remainder))
    n=`expr $n / 10`
done

if [ $on -eq $reverse ];
then
  echo "Number is palindrome"
else
  echo "Number is NOT palindrome"
fi
