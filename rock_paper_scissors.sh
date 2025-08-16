#! /bin/bash
declare -A win=(["rock"]="scissors" ["paper"]="rock" ["scissors"]="paper")
declare -A lose=(["scissors"]="rock" ["rock"]="paper" ["paper"]="scissors")
echo "$1 Will Lose ${lose[$1]}"
echo "$1 Will Draw $1"
echo "$1 Will Win ${win[$1]}"
