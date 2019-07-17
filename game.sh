#!/bin/bash

function checkHands() {
    if [[ $1 -eq $2 ]]; then
		echo "Draw"
	elif [[$1 < ]]; then

	else;

	fi
}


declare -a hands=(Rock Paper Scisors)

let com_num=$RANDOM%3
com_hand=${hands[$com_num]}
echo $com_hand


echo "Welcome to Rock Paper Scisors game!"

PS3="Chose your hands from the above(1-3): "
select hand in "${hands[@]}" "Quit"
do
	human_num=$REPLY
	human_hand=${hands[$human_num - 1]}
	case "$human_num" in
		1)
			echo "Computer Hand: ${com_hand}"
			echo "Your Hand: ${human_hand}"
			checkHands $com_num $human_num
			break;;
		2)
			echo "Computer Hand: ${com_hand}"
			echo "Your Hand: ${human_hand}"
			break;;
		3)
			echo "Computer Hand: ${com_hand}"
			echo "Your Hand: ${human_hand}"
			break;;
		4)
			echo "Thank you for playing, Bye!!"
			break;;
		*)
			echo -e $'\e[1;31mWrong input\e[m';;
	esac
done

function checkHands() {
	if ($1 == $2); then
		echo "Draw"
	fi
}
