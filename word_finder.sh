if grep $1 $2 > cat /dev/null; then
echo "Found word in file!"
else
echo "Word not found in file!"
fi
