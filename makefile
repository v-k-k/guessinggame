all: README.md

README.md:
	echo "# The *GUESSINGGAME* project" > README.md
	date >> README.md
	echo "number of lines in **guessinggame.sh** is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
