#!/bin/bash

function add {
  local t=""
  local p="L"
  while [ -n "$1" ]; do
    case "$1" in
      -t|--title)
        if [ -z "$2" ]; then
          echo "Option -t|--title Needs a Parameter"
          exit 0
        fi
        t="$2";
        shift 2 ;;
      -p|--priority) 
        if [ "$2" != "L" ] && [ "$2" != "M" ] && [ "$2" != "H" ] ; then
          echo "Option -p|--priority Only Accept L|M|H"
          exit 0
        fi
        p="$2";
        shift 2 ;;
      *) shift ;;
    esac
  done
  if [ -z "$t" ]; then
    echo "Option -t|--title Needs a Parameter"
    exit 0
  fi
  echo "0,$p,\"$t\"" >> tasks.csv
}

function clear {
  > tasks.csv
}

function list {
  awk -F, '{printf "%s | %s | %s | %s\n", NR, $1, $2, $3}' tasks.csv
}

function find {
  list | grep "$1"
}

function done {
  sed -i '' "$1s/^[^,]*/1/" tasks.csv
}

cmd=$1
shift
case $cmd in
  add|list|clear|find|done) $cmd "$@" ;;
  *) echo "Command Not Supported!" ;;
esac