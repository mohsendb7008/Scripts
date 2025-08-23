#!/bin/bash
echo -n "First word? "
read w1
echo -n "Second word? "
read w2
if [ -n "$w1" ] && [ -n "$w2" ]; then
echo "Both words are not empty"
elif [ -n "$w1" ] && [ -z "$w2" ]; then
echo "First word is not empty but second is"
elif [ -z "$w1" ] && [ -n "$w2" ]; then
echo "First word is empty but second is not"
else
echo "Both words are empty"
fi
