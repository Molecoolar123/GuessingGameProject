#Created by Molli
#GuessingGame
#Date: 12/03/19

wordCount=$(ls | wc -l)						##Function to find out number of files in directory
response=0

while [ $response != $wordCount ]; do				##response value is 0, execute the while statement
    echo -n "How many files in my directory?"

    read response						##read response from user

    if [ $response = "" ]; then					##if response is blank display txt
        echo "Please enter a number."

    elif [ $response -eq $wordCount ]; then			##else if response = word count display txt
        echo -e "Yes! $wordcount is the correct answer!"

    elif [ $response -gt $wordCount ]; then			##if response is greater display txt
        echo "Your number is too high. Try again."

    else							##else display txt
        echo "Your number is too low. Try again."

    fi

done
