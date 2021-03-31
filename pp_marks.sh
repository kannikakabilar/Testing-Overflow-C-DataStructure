#!/bin/bash

score=0
i=0
declare -i max=0
declare -i mark=0
declare -i total=0

if [ -d "a1" ] && [ -f "a1/feedback.txt" ]; then
	echo -n "a1: "; tail -n 1 a1/feedback.txt
	grade=`tail -n 1 a1/feedback.txt | tr -d [:blank:]`
	IFS='/' read -ra grArray <<< "$grade"
	mark="$(($mark+${grArray[0]}))"
	total="$(($total+${grArray[1]}))"

else
	echo "a1: - / -"
	
fi
if [ -d "a2" ] && [ -f "a2/feedback.txt" ]; then
	echo -n "a2: "; tail -n 1 a2/feedback.txt
	grade=`tail -n 1 a2/feedback.txt | tr -d [:blank:]`
	IFS='/' read -ra grArray <<< "$grade"
	mark="$(($mark+${grArray[0]}))"
	total="$(($total+${grArray[1]}))"
	
else
	echo "a2: - / -"
fi
if [ -d "a3" ] && [ -f "a3/feedback.txt" ]; then
	echo -n "a3: "; tail -n 1 a3/feedback.txt
	grade=`tail -n 1 a3/feedback.txt | tr -d [:blank:]`
	IFS='/' read -ra grArray <<< "$grade"
	mark="$(($mark+${grArray[0]}))"
	total="$(($total+${grArray[1]}))"
	
else
	echo "a3: - / -"
fi
if [ -d "a4" ] && [ -f "a4/feedback.txt" ]; then
	echo -n "a4: "; tail -n 1 a4/feedback.txt
	grade=`tail -n 1 a4/feedback.txt | tr -d [:blank:]`
	IFS='/' read -ra grArray <<< "$grade"
	mark="$(($mark+${grArray[0]}))"
	total="$(($total+${grArray[1]}))"

else
	echo "a4: - / -"
fi

echo " ";



for i in 1 2 3 4 5 6 7 8 9
do
	if [ -d "t0$i" ] && [ -f "t0$i/feedback.txt" ]; then
		
		echo -n "t0$i: "; tail -n 1 t0$i/feedback.txt
		
		grade=`tail -n 1 t0$i/feedback.txt | tr -d [:blank:]`
		IFS='/' read -ra grArray <<< "$grade"
		score="$(($score+${grArray[0]}))"
		max="$(($max+${grArray[1]}))"
	
	else
		echo "t0$i: - / -"
	fi
	
done

if [ -d "t10" ] && [ -f "t10/feedback.txt" ]; then

	echo -n "t10: "; tail -n 1 t10/feedback.txt
	grade=`tail -n 1 t10/feedback.txt | tr -d [:blank:]`
	IFS='/' read -ra grArray <<< "$grade"
	score="$(($score+${grArray[0]}))"
	max="$(($max+${grArray[1]}))"
	
else
	echo "t10: - / -"
fi

if [ -d "t11" ] && [ -f "t11/feedback.txt" ]; then
	echo -n "t11: "; tail -n 1 t11/feedback.txt

	grade=`tail -n 1 t11/feedback.txt | tr -d [:blank:]`
	IFS='/' read -ra grArray <<< "$grade"
	score="$(($score+${grArray[0]}))"
	max="$(($max+${grArray[1]}))"
	
else
	echo "t11: - / -"
fi
	

echo " ";
echo -n "Assignment Total: "; echo -n $mark; echo -n " / "; echo $total
echo -n "Tutorial Total: "; echo -n $score; echo -n " / "; echo $max
