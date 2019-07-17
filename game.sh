#!/bin/bash
source ./checkHands.txt

declare -a hands=(Rock Paper Scisors)

let com_num=$RANDOM%3
com_hand=${hands[$com_num]}

echo ""
echo "========================================="
echo "Welcome to Rock Paper Scisors game!"
PS3="Chose your hands from the above(1-3): "
select hand in "${hands[@]}" "Quit"
do
	human_num=`expr $REPLY - 1`
	human_hand=${hands[$human_num]}
	case "$REPLY" in
		1)
			echo "========================================="
			echo "Computer Hand: ${com_hand}"
			echo "Your Hand: ${human_hand}"
			checkHands $com_num $human_num
			break;;
		2)
			echo "========================================="
			echo "Computer Hand: ${com_hand}"
			echo "Your Hand: ${human_hand}"
			checkHands $com_num $human_num
			break;;
		3)
			echo "========================================="
			echo "Computer Hand: ${com_hand}"
			echo "Your Hand: ${human_hand}"
			checkHands $com_num $human_num
			break;;
		4)
			echo "========================================="
			echo "Thank you for playing, Bye!!"
			break;;
		*)
			echo "========================================="
			echo -e $'\e[1;31mWrong input\e[m';;
	esac
done
echo ""
