#!/bin/bash

declare -a hands=(rock paper scisors)

let com_num=$RANDOM%3
com_hand=${hands[$com_num]}
echo $com_hand


#echo "Welcome to Rock Paper Scisors game!"
#
#PS3="Chose your hands from the above(1 - 3): "
#select hand in "${hands[@]}"; do
#	true
#done
