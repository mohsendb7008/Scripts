#!/bin/bash

while getopts ":ab:c" opt; do
 case $opt in
  a) echo "Option -a is active" ;;
  b) echo "Option -b is active with argument $OPTARG" ;;
  c) echo "Option -c is active" ;;
  :) echo "Option -$OPTARG needs argument!" ;;
  ?) echo "Invalid option -$OPTARG" ;;
 esac
done

shift $((OPTIND -1))
for arg in "$@"; do
 echo "Argument $arg is active"
done
