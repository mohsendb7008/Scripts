#! /bin/bash
arr1=(1 2 3)
echo "arr1=${arr1[*]}"
echo "#arr1=${#arr1[*]}"
arr2=([1]="Hi" [3]="How" [5]="Are" [7]="You")
unset arr2[7]
echo "arr2 indices=${!arr2[@]}"
arr3=(${arr1[@]:1:1} ${arr2[@]:3:2})
echo ${arr3[@]}
arr4=(${arr3[*]/2/4})
echo ${arr4[@]}
