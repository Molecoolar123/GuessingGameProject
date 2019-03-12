#
#
all: readme.md guessinggame.sh

readme.md: guessinggame.sh
	echo "Project Name: Guess no. of files in directory" > readme.md
	echo "Makefile run: $$(date +%D)" >> readme.md
	echo "This script contains the number of lines:" >> readme.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md 


clean:
	rm readme.md	
