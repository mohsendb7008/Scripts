#!/bin/bash
echo -n "Which folder? "
read dir
for item in $(ls $dir)
do
    if [ -d $dir/$item ]; then
        echo "$item is a folder"
    elif [ -f $dir/$item ]; then
        echo "$item is a file"
    fi
done
