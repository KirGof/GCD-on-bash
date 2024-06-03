#!/bin/bash

gcd(){
  if [[ $1 == $2 ]]; then
    GCD=$1 
  elif [[ $1 -gt $2 ]]; then
    let "buff = $1 - $2"
    if [[ $buff -gt 0 ]]; then
    gcd $buff $2
    else
      GCD=$1
    fi
  elif [[ $1 -lt $2 ]]; then
    let "buff = $2 - $1"
    if [[ $buff -gt 0 ]]; then
    gcd $1 $buff
    else
      GCD=$2
    fi
  fi
}

# start main
while [[ true  ]]; do
  read -p "Enter first and second variable " arg_1 arg_2
  if [[ -z $arg_1 || -z $arg_2 ]]; then
    echo "bye"
    exit
  else
    gcd $arg_1 $arg_2
    echo "GCD is $GCD"
  fi
done
# end main

