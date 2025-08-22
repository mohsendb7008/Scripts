#!/bin/bash
case $1 in
1) date;;
2) ls -l;;
3) pwd;;
*) echo "Invalid option";;
esac
