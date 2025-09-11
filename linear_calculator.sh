#!/bin/bash
op=$1
n=$2
shift 2
while [ -n "$1" ]; do
    m=$1
    case $op in
        +) n=$((n + m)) ;;
        -) n=$((n - m)) ;;
        x) n=$((n * m)) ;;
        /) n=$((n / m)) ;;
    esac
    shift
done
case $op in
    +) echo "addition of your two numbers are $n" ;;
    -) echo "subtraction of your two numbers are $n" ;;
    x) echo "multiplication of your two numbers are $n" ;;
    /) echo "division of your two numbers are $n" ;;
esac
