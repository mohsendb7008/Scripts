#! /bin/bash
echo 'myscript is starting...'
find . -name '*.log' -delete
echo 'removed all files ending with .log'
find . -name '*.tmp' -delete
echo 'removed all files ending with .tmp'
echo "myscript's work ended here"
