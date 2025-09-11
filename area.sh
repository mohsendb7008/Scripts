#!/bin/bash

function rectangle {
 local a=$1
 local b=$2
 echo $((a * b))
}

function square {
 local a=$1
 echo $((a * a))
}

function triangle {
 local a=$1
 local b=$2
 echo $((a * b / 2))
}

case "$1" in
 rectangle)
  area=$(rectangle "$2" "$3")
  echo "Rectangle Area is : $area" ;;
 square)
  area=$(square "$2")
  echo "Square Area is : $area" ;;
 triangle)
  area=$(triangle "$2" "$3")
  echo "Triangle Area is : $area" ;;
esac
