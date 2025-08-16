#! /bin/bash
name='Variables'
echo "This script's name is $name"
num1=10
num2=20
echo "It can sum $num1 + $num2 = $((num1+num2))"
function func1 {
    local name='Function'
    echo "This is running from $name"
}
func1
echo 'But global $name should still be'
echo $name
echo "Some good information for you:"
echo "Home: $HOME"
echo "Shell: $SHELL"
echo "Script: $0"
echo "Num Args: $#"
echo "Args: $*"
echo "Args Array: $@"
echo "Exit code: $?"
echo "Runner id: $$"
echo "Last background task: $!"
