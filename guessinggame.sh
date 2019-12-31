function guess {

	local count="$(find . -type f | wc -l)"

	while [[ $num -ne $count ]]
	do
		echo "How many files are in current directory?"
		read num

		if [[ $num -gt $count ]]
		then
			echo "Your number either too high"
			echo "Try again"
		elif [[ $num -lt $count ]]
		then
			echo "Your number either too low"
			echo "Try again"
		fi
	done

	echo "Congrats, you guessed the right number!!!"
}

guess
