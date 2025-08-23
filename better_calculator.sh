#!/bin/bash
x=$1
op=$2
y=$3
if [ $op = '+' ]; then
echo "addition of your two numbers are $((x+y))"
elif [ $op = '-' ]; then
echo "subtraction of your two numbers are $((x-y))"
elif [ $op = 'x' ]; then
echo "multiplication of your two numbers are $((x*y))"
elif [ $op = '/' ]; then
echo "division of your two numbers are $((x/y))"
fi
