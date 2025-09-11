#!/bin/bash
while [ "$1" != "" ]; do
    if [[ $1 == --* ]]; then
        echo "$1 is a long option"
    elif [[ $1 == -* ]]; then
        echo "$1 is a short option"
    else
        echo "$1 is an argument"
    fi
shift
done
